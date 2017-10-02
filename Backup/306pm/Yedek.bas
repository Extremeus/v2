Attribute VB_Name = "Yedek"
'Not created by me.
Option Explicit

Private Type MODULEENTRY32
  dwSize As Long
  th32ModuleID As Long
  th32ProcessID As Long
  GlblcntUsage As Long
  ProccntUsage As Long
  modBaseAddr As Long
  modBaseSize As Long
  hModule As Long
  szModule As String * 256
  szExePath As String * 260
End Type
Private Type PROCESSENTRY32
    dwSize As Long
    cntUsage As Long
    th32ProcessID As Long
    th32DefaultHeapID As Long
    th32ModuleID As Long
    cntThreads As Long
    th32ParentProcessID As Long
    pcPriClassBase As Long
    dwFlags As Long
    szExeFile As String * 260
End Type
Public Const TH32CS_SNAPPROCESS As Long = 2&
Private Declare Function OpenProcess Lib "kernel32" (ByVal dwDesiredAccess As Long, ByVal bInheritHandle As Long, ByVal dwProcessId As Long) As Long
Private Const PROCESS_CREATE_THREAD = &H2
Private Const PROCESS_VM_OPERATION = &H8
Private Const PROCESS_VM_WRITE = &H20
Private Declare Function CreateToolhelpSnapshot Lib "kernel32" Alias "CreateToolhelp32Snapshot" (ByVal lFlags As Long, ByVal lProcessID As Long) As Long
Private Declare Function Process32First Lib "kernel32" (ByVal hSnapShot As Long, uProcess As PROCESSENTRY32) As Long
Private Declare Function Process32Next Lib "kernel32" (ByVal hSnapShot As Long, uProcess As PROCESSENTRY32) As Long
Private Declare Function Module32First Lib "kernel32" (ByVal hSnapShot As Long, uProcess As MODULEENTRY32) As Long
Private Declare Function Module32Next Lib "kernel32" (ByVal hSnapShot As Long, uProcess As MODULEENTRY32) As Long
Private Declare Function WriteProcessMemory Lib "kernel32" (ByVal hProcess As Long, ByVal lpBaseAddress As Any, lpBuffer As Any, ByVal nSize As Long, lpNumberOfBytesWritten As Long) As Long
Private Declare Function CreateRemoteThread Lib "kernel32" (ByVal ProcessHandle As Long, lpThreadAttributes As Long, ByVal dwStackSize As Long, ByVal lpStartAddress As Any, ByVal lpParameter As Any, ByVal dwCreationFlags As Long, lpThreadID As Long) As Long
Public Declare Function VirtualAllocEx Lib "kernel32" (ByVal hProcess As Long, ByVal lpAddress As Long, ByVal dwSize As Long, ByVal flAllocationType As Long, ByVal flProtect As Long) As Long
Private Declare Function VirtualFreeEx Lib "kernel32" (ByVal hProcess As Long, lpAddress As Any, ByVal dwSize As Long, ByVal dwFreeType As Long) As Long
Private Const MEM_COMMIT = &H1000
Private Const MEM_RELEASE = &H8000
Private Const PAGE_READWRITE = &H4

Private Declare Function GetModuleHandle Lib "kernel32" Alias "GetModuleHandleA" (ByVal lpModuleName As String) As Long
Private Declare Function GetProcAddress Lib "kernel32" (ByVal hModule As Long, ByVal lpProcName As String) As Long
Private Declare Function WaitForSingleObject Lib "kernel32" (ByVal hHandle As Long, ByVal dwMilliseconds As Long) As Long
Private Const INFINITE = &HFFFF

Private Declare Function CloseHandle Lib "kernel32" (ByVal hObject As Long) As Long

Public Function InjectDll(lngProcessId As Long, strDLL As String) As Boolean
Dim hProc As Long
    hProc = OpenProcess(PROCESS_CREATE_THREAD Or PROCESS_VM_OPERATION Or PROCESS_VM_WRITE, _
        True, lngProcessId)
        
    'Allocate room in remote process for dll string
Dim lngStringAddress As Long
    lngStringAddress = VirtualAllocEx(hProc, ByVal 0, Len(strDLL) + 1, MEM_COMMIT, PAGE_READWRITE)
    
    If lngStringAddress Then
Dim bytString() As Byte
        bytString = StrChar(strDLL)
Dim lngWritten As Long
        WriteProcessMemory hProc, lngStringAddress, bytString(0), Len(strDLL) + 1, lngWritten
        
Dim lngAddrLoadLib As Long
        'Get the address of loadlibrary so that we can call it from
        'our remote thread and load the dll.
        lngAddrLoadLib = GetProcAddress(GetModuleHandle("kernel32.dll"), "LoadLibraryA")
        
Dim lngThreadHandle As Long
        'Inject the dll by creating a remote thread and forcing
        'the remote process to load it.
        lngThreadHandle = CreateRemoteThread(hProc, ByVal 0, 0, lngAddrLoadLib, _
            lngStringAddress, 0, 0)
            
        If lngThreadHandle Then
            'Let the thread finish before doing anything
            WaitForSingleObject lngThreadHandle, INFINITE
            CloseHandle lngThreadHandle
            InjectDll = True
        Else
            InjectDll = False
        End If
        
        'Unallocate the dll string
        VirtualFreeEx hProc, lngStringAddress, 0, MEM_RELEASE
        CloseHandle hProc
    Else
        InjectDll = False
    End If
End Function

Public Function Free(lngProcessId As Long) As Boolean
Dim hSnap As Long, lngDllHandle As Long
    hSnap = CreateToolhelpSnapshot(8, lngProcessId)
    
Dim meModule As MODULEENTRY32
    meModule.dwSize = LenB(meModule)
    
Dim nModule As Long
    nModule = Module32First(hSnap, meModule)
    Do While nModule
        If Mid$(meModule.szModule, 1, Len("skip-snoxd.dll")) = "skip-snoxd.dll" Then
            lngDllHandle = meModule.hModule
            Exit Do
        End If

        nModule = Module32Next(hSnap, meModule)
    Loop
    
CloseHandle hSnap

' start free
Dim hProc As Long
    hProc = OpenProcess(PROCESS_CREATE_THREAD Or PROCESS_VM_OPERATION Or PROCESS_VM_WRITE, _
        True, lngProcessId)
        
    If hProc Then
Dim lngAddrLoadLib As Long
        'Get the address of freelibrary so that we can call it from
        'our remote thread and free the dll.
        lngAddrLoadLib = GetProcAddress(GetModuleHandle("kernel32.dll"), "FreeLibrary")
        
Dim lngThreadHandle As Long
        'Free the dll by creating a remote thread and forcing
        'the remote process to free it.
        lngThreadHandle = CreateRemoteThread(hProc, ByVal 0, 0, lngAddrLoadLib, _
            lngDllHandle, 0, 0)
            
        If lngThreadHandle Then
            'Let the thread finish before doing anything
            WaitForSingleObject lngThreadHandle, INFINITE
            CloseHandle lngThreadHandle
            Free = True
        Else
            Free = False
        End If
    Else
        Free = False
    End If
CloseHandle hProc
End Function

'Converts string to byte array with null terminator
'so it can be written to memory easily.
Private Function StrChar(strString As String) As Byte()
Dim bytTemp() As Byte
    ReDim bytTemp(0) As Byte
    
Dim i As Integer
    For i = 1 To Len(strString)
        If bytTemp(UBound(bytTemp)) <> 0 Then _
            ReDim Preserve bytTemp(UBound(bytTemp) + 1) As Byte
    
        bytTemp(UBound(bytTemp)) = Asc(Mid$(strString, i, 1))
    Next i
    
    ReDim Preserve bytTemp(UBound(bytTemp) + 1) As Byte
    bytTemp(UBound(bytTemp)) = 0
    
    StrChar = bytTemp
End Function



