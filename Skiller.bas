Attribute VB_Name = "AutoLoot1"
Option Explicit
Private Type SECURITY_ATTRIBUTES
    nLength As Long
    lpSecurityDescriptor As Long
    bInheritHandle As Long
End Type
Private Const MEM_COMMIT = &H1000
Private Const MEM_RELEASE = &H8000&
Private Const PAGE_READWRITE = &H4&
Private Const INFINITE = &HFFFF
Public Const MAILSLOT_NO_MESSAGE  As Long = (-1)
Public Declare Function GetTickCount Lib "kernel32" () As Long
Public Declare Function CloseHandle Lib "kernel32" (ByVal hObject As Long) As Long
Public Declare Function ReadProcessMem Lib "kernel32" Alias "ReadProcessMemory" (ByVal hProcess As Long, ByVal lpBaseAddress As Any, ByRef lpBuffer As Any, ByVal nSize As Long, lpNumberOfBytesWritten As Long) As Long
Public Declare Function WriteProcessMem Lib "kernel32" Alias "WriteProcessMemory" (ByVal hProcess As Long, ByVal lpBaseAddress As Any, ByRef lpBuffer As Any, ByVal nSize As Long, lpNumberOfBytesWritten As Long) As Long
Private Declare Function ReadFile Lib "kernel32" (ByVal hFile As Long, lpBuffer As Any, ByVal nNumberOfBytesToRead As Long, lpNumberOfBytesRead As Long, lpOverlapped As Long) As Long
Private Declare Function CreateMailslot Lib "kernel32" Alias "CreateMailslotA" (ByVal lpName As String, ByVal nMaxMessageSize As Long, ByVal lReadTimeout As Long, lpSecurityAttributes As Any) As Long
Private Declare Function GetMailslotInfo Lib "kernel32" (ByVal hMailSlot As Long, lpMaxMessageSize As Long, lpNextSize As Long, lpMessageCount As Long, lpReadTimeout As Long) As Long
Private Declare Function LoadLibrary Lib "kernel32" Alias "LoadLibraryA" (ByVal lpLibFileName As String) As Long
Private Declare Function GetProcAddress Lib "kernel32" (ByVal hModule As Long, ByVal lpProcName As String) As Long
Private Declare Function GetModuleHandle Lib "kernel32" Alias "GetModuleHandleA" (ByVal lpModuleName As String) As Long
Private Declare Function FreeLibrary Lib "kernel32" (ByVal hLibModule As Long) As Long
Public Declare Function CreateRemoteThread Lib "kernel32" (ByVal hProcess As Long, lpThreadAttributes As Long, ByVal dwStackSize As Long, lpStartAddress As Long, lpParameter As Any, ByVal dwCreationFlags As Long, lpThreadID As Long) As Long
Private Declare Function WaitForSingleObject Lib "kernel32" (ByVal hHandle As Long, ByVal dwMilliseconds As Long) As Long
Private Declare Function VirtualFreeEx Lib "kernel32" (ByVal hProcess As Long, lpAddress As Any, ByVal dwSize As Long, ByVal dwFreeType As Long) As Long
Public Declare Function VirtualAllocEx Lib "kernel32" (ByVal hProcess As Long, ByVal lpAddress As Long, ByVal dwSize As Long, ByVal flAllocationType As Long, ByVal flProtect As Long) As Long
Private Declare Function GetPrivateProfileSection Lib "kernel32" Alias "GetPrivateProfileSectionA" (ByVal lpAppName As String, ByVal lpReturnedString As String, ByVal nSize As Long, ByVal lpFileName As String) As Long
Private Declare Function SetWindowPos Lib "user32" (ByVal Hwnd As Long, ByVal hWndInsertAfter As Long, ByVal x As Long, ByVal Y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
Private Declare Function WritePrivateProfileSection Lib "kernel32" Alias "WritePrivateProfileSectionA" (ByVal lpAppName As String, ByVal lPaketing As String, ByVal lpFileName As String) As Long
Public Declare Function GetAsyncKeyState Lib "user32" (ByVal vKey As Long) As Integer
Public Declare Function FindWindow Lib "user32" Alias "FindWindowA" (ByVal lpClassName As String, ByVal lpWindowName As String) As Long
Private Declare Function GetWindowThreadProcessId Lib "user32" (ByVal Hwnd As Long, lpdwProcessId As Long) As Long
Private Declare Function OpenProcess Lib "kernel32" (ByVal dwDesiredAccess As Long, ByVal bInheritHandle As Long, ByVal dwProcessId As Long) As Long
Public Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)
Public Declare Function EnumProcessModules Lib "PSAPI.DLL" (ByVal hProcess As Long, ByRef lphModule As Long, ByVal cb As Long, ByRef cbNeeded As Long) As Long
Public Declare Function GetModuleFileNameExA Lib "PSAPI.DLL" (ByVal hProcess As Long, ByVal hModule As Long, ByVal ModuleName As String, ByVal nSize As Long) As Long
Const HWND_TOPMOST = -1, HWND_NOTOPMOST = -2, SWP_NOMOVE As Long = &H2, SWP_NOSIZE As Long = &H1
Public BytesAddr As Long, KO_ADI As String
'KO_HANDLE As Long, KO_PID As Long, FuncPtr As Long

'dinput tuþ kodlarý

Public Const FLAGS = SWP_NOMOVE Or SWP_NOSIZE


Public Const LWA_COLORKEY = 1
Public Const LWA_ALPHA = 2
Public Const LWA_BOTH = 3
Public Const WS_EX_LAYERED = &H80000
Public Const GWL_EXSTYLE = -20

Public Const VK_CONTROL = &H11
Public Const KO_DIKKEY As Long = &H26C
Public Const NIM_ADD = &H0
Public Const NIM_MODIFY = &H1
Public Const NIM_DELETE = &H2
Public Const WM_MOUSEMOVE = &H200
Public Const NIF_MESSAGE = &H1
Public Const NIF_ICON = &H2
Public Const NIF_TIP = &H4
Public Const WM_LBUTTONDBLCLK = &H203 'Double-click
Public Const WM_LBUTTONDOWN = &H201 'Button down
Public Const WM_LBUTTONUP = &H202 'Button up
Public Const WM_RBUTTONDBLCLK = &H206 'Double-click
Public Const WM_RBUTTONDOWN = &H204 'Button down
Public Const WM_RBUTTONUP = &H205 'Button up
Public Const SW_HIDE = 0
Public Const SW_SHOWNORMAL = 1
Public Const SW_NORMAL = 1
Public Const SW_SHOWMINIMIZED = 2
Public Const SW_SHOWMAXIMIZED = 3
Public Const SW_MAXIMIZE = 3
Public Const SW_SHOWNOACTIVATE = 4
Public Const SW_SHOW = 5
Public Const SW_MINIMIZE = 6
Public Const SW_SHOWMINNOACTIVE = 7
Public Const SW_SHOWNA = 8
Public Const SW_RESTORE = 9
Public Const SW_SHOWDEFAULT = 10
Public Const SW_MAX = 10
Public Const WM_USER = &H400
Public Const CCM_FIRST = &H2000&
Public Const CCM_SETBKCOLOR = (CCM_FIRST + 1)
Public Const PBM_SETBKCOLOR = CCM_SETBKCOLOR
Public Const PBM_SETBARCOLOR = (WM_USER + 9)
Public Const STANDARD_RIGHTS_REQUIRED = &HF0000
Public Const THREAD_SUSPEND_RESUME = &H2
Public Const GW_HWNDNEXT = 2
Public Const MAX_PATH As Long = 260
Public Const PROCESS_VM_READ = &H10
Public Const PROCESS_DUP_HANDLE = &H40
Public Const PROCESS_QUERY_INFORMATION = &H400
'Public Const PROCESS_ALL_ACCESS = &H1F0FFF
Public Const STANDARD_RIGHTS_ALL = &H1F0000
Public Const INVALID_HANDLE_VALUE = -1
Public Const SystemHandleInformation = 16&
Public Const ObjectNameInformation = 1&
Public Const STATUS_INFO_LENGTH_MISMATCH = &HC0000004
Public Const MAILSLOT_WAIT_FOREVER = (-1)
'Public Const MAILSLOT_NO_MESSAGE  As Long = (-1)
Public Const ERROR_NO_DATA        As Long = 232&
Public Const ERROR_INVALID_HANDLE As Long = -1
Public Const GENERIC_READ    As Long = &H80000000
Public Const GENERIC_WRITE   As Long = &H40000000
Public Const GENERIC_EXECUTE As Long = &H20000000
Public Const GENERIC_ALL     As Long = &H10000000
Public Const FILE_SHARE_READ = &H1
Public Const FILE_SHARE_WRITE = &H2
Public Const FILE_TYPE_PIPE = &H3
Public Const CREATE_NEW = 1
Public Const CREATE_ALWAYS = 2
Public Const OPEN_ALWAYS = 4
Public Const OPEN_EXISTING = 3
Public Const TRUNCATE_EXISTING = 5
Public Const FILE_ATTRIBUTE_ARCHIVE = &H20
Public Const FILE_ATTRIBUTE_COMPRESSED = &H800
Public Const FILE_ATTRIBUTE_DIRECTORY = &H10
Public Const FILE_ATTRIBUTE_HIDDEN = &H2
Public Const FILE_ATTRIBUTE_NORMAL = &H80
Public Const FILE_ATTRIBUTE_READONLY = &H1
Public Const FILE_ATTRIBUTE_SYSTEM = &H4
Public Const FILE_ATTRIBUTE_TEMPORARY = &H100
Public Const FILE_FLAG_WRITE_THROUGH = &H80000000
Public Const FILE_FLAG_OVERLAPPED = &H40000000
Public Const hNull = 0

Public Const PAGE_EXECUTE_READWRITE = &H40
Public Const PAGE_EXECUTE = &H10
Public Const MEM_RESERVE = &H2000


Public Const TH32CS_SNAPHEAPLIST = &H1
Public Const TH32CS_SNAPPROCESS = &H2
Public Const TH32CS_SNAPTHREAD = &H4
Public Const TH32CS_SNAPMODULE = &H8
Public Const TH32CS_SNAPALL = (TH32CS_SNAPHEAPLIST Or TH32CS_SNAPPROCESS Or TH32CS_SNAPTHREAD Or TH32CS_SNAPMODULE)
Public Const TH32CS_INHERIT = &H80000000
Private Const WAIT_ABANDONED& = &H80&
Private Const WAIT_ABANDONED_0& = &H80&
Private Const WAIT_FAILED& = -1&
Private Const WAIT_IO_COMPLETION& = &HC0&
Private Const WAIT_OBJECT_0& = 0
Private Const WAIT_OBJECT_1& = 1
Private Const WAIT_TIMEOUT& = &H102&


Private Const ERROR_ALREADY_EXISTS = 183&

Private Const QS_HOTKEY& = &H80
Private Const QS_KEY& = &H1
Private Const QS_MOUSEBUTTON& = &H4
Private Const QS_MOUSEMOVE& = &H2
Private Const QS_PAINT& = &H20
Private Const QS_POSTMESSAGE& = &H8

Private Const QS_SENDMESSAGE& = &H40
Private Const QS_TIMER& = &H10
Private Const QS_MOUSE& = (QS_MOUSEMOVE _
                            Or QS_MOUSEBUTTON)
Private Const QS_INPUT& = (QS_MOUSE _
                            Or QS_KEY)
Private Const QS_ALLEVENTS& = (QS_INPUT _
                            Or QS_POSTMESSAGE _
                            Or QS_TIMER _
                            Or QS_PAINT _
                            Or QS_HOTKEY)
Private Const QS_ALLINPUT& = (QS_SENDMESSAGE _
                            Or QS_PAINT _
                            Or QS_TIMER _
                            Or QS_POSTMESSAGE _
                            Or QS_MOUSEBUTTON _
                            Or QS_MOUSEMOVE _
                            Or QS_HOTKEY _
                            Or QS_KEY)
Public RecvHandle As Long
Public Const PROCESS_ALL_ACCESS = &H1F0FFF

Public Type SYSTEM_HANDLE_TABLE_ENTRY_INFO
    UniqueProcessId As Integer
    CreatorBackTraceIndex As Integer
    ObjectTypeIndex As Byte
    HandleAttributes As Byte
    HandleValue As Integer
    Object As Long
    GrantedAccess As Long
End Type

Public Type SYSTEM_HANDLE_INFORMATION
    NumberOfHandles As Long
    Handles() As SYSTEM_HANDLE_TABLE_ENTRY_INFO
End Type

Private Declare Function CreateWaitableTimer Lib "kernel32" _
    Alias "CreateWaitableTimerA" ( _
    ByVal lpSemaphoreAttributes As Long, _
    ByVal bManualReset As Long, _
    ByVal lpName As String) As Long
    
Public Type PROCESSENTRY32
    dwSize As Long
    cntUsage As Long
    th32ProcessID As Long
    th32DefaultHeapID As Long
    th32ModuleID As Long
    cntThreads As Long
    th32ParentProcessID As Long
    pcPriClassBase As Long
    dwFlags As Long
    szExeFile As String * MAX_PATH
End Type

'Typeler
Public Type MODULEINFO
lpBaseOfDLL As Long
SizeOfImage As Long
EntryPoint As Long
End Type

Private Declare Function OpenWaitableTimer Lib "kernel32" _
    Alias "OpenWaitableTimerA" ( _
    ByVal dwDesiredAccess As Long, _
    ByVal bInheritHandle As Long, _
    ByVal lpName As String) As Long
    
Private Declare Function SetWaitableTimer Lib "kernel32" ( _
    ByVal hTimer As Long, _
    lpDueTime As FILETIME, _
    ByVal lPeriod As Long, _
    ByVal pfnCompletionRoutine As Long, _
    ByVal lpArgToCompletionRoutine As Long, _
    ByVal fResume As Long) As Long
    
Private Declare Function CancelWaitableTimer Lib "kernel32" ( _
    ByVal hTimer As Long)

Private Type FILETIME
    dwLowDateTime As Long
    dwHighDateTime As Long
End Type

Public Type ItemStruct
    id As Long
    Name As String
End Type

Public Type SkillStruct
    id As Long
    Name As String
    Class As String
    Cooldown As Long
End Type

Public Type LootBoxStruct
BoxID As Long
BoxOpened As Boolean
OpenTime As Long
End Type

Private Declare Function MsgWaitForMultipleObjects Lib "user32" ( _
    ByVal nCount As Long, _
    pHandles As Long, _
    ByVal fWaitAll As Long, _
    ByVal dwMilliseconds As Long, _
    ByVal dwWakeMask As Long) As Long
    Public Type PROCESS_INFORMATION
    hProcess As Long
    hThread As Long
    dwProcessId As Long
    dwThreadId As Long
End Type

Public Type STARTUPINFO
    cb As Long
    lpReserved As String
    lpDesktop As String
    lpTitle As String
    dwX As Long
    dwY As Long
    dwXSize As Long
    dwYSize As Long
    dwXCountChars As Long
    dwYCountChars As Long
    dwFillAttribute As Long
    dwFlags As Long
    wShowWindow As Integer
    cbReserved2 As Integer
    lpReserved2 As Byte
    hStdInput As Long
    hStdOutput As Long
    hStdError As Long
End Type

Public Type NOTIFYICONDATA
cbSize As Long
Hwnd As Long
uId As Long
uFlags As Long
uCallBackMessage As Long
hIcon As Long
szTip As String * 64
End Type

Public Type PROCESS
   id As Long
   ExeFile As String
End Type

Public Type THREADENTRY32
   dwSize As Long
   cntUsage As Long
   th32ThreadID As Long
   th32OwnerProcessID As Long
   tpBasePri As Long
   tpDeltaPri As Long
   dwFlags As Long
End Type

Global son As Integer
Global toplam As Integer
Global son2 As Integer
Global toplam2 As Integer
Public Const lngNull = 0
Public LootBox(1 To 20) As LootBoxStruct
Public Items() As ItemStruct
Public Skills() As SkillStruct
Public TimedSkills() As SkillStruct
Public OtherItems() As ItemStruct
' Pointerler
' Public KO_PTR_DLG, KO_PTR_PKT As Long, KO_SND_FNC As Long, KO_SND_PACKET As Long, KO_SEND_PTR As Long

Public Sub FindHook(MailSlotName As String)
Dim KO_RECVHK As Long, KO_RCVHKB As Long
KO_RECVHK = &HB57208
KO_RCVHKB = ReadLong(KO_RECVHK)
'KO_RECVHK = &HB57208
'KO_RCVHKB = &H53E980
Debug.Print Hex(KO_RECVHK) & "//" & Hex(KO_RCVHKB)
recvHook MailSlotName, KO_RCVHKB, KO_RECVHK
End Sub
Public Function getCallDiff(Source As Long, Destination As Long) As Long
Dim Diff As Long
Diff = 0
If Source > Destination Then
    Diff = Source - Destination
    If Diff > 0 Then getCallDiff = &HFFFFFFFB - Diff
Else
    getCallDiff = Destination - Source - 5
End If
End Function
Public Function StringToHex(ByVal StrToHex As String) As String
Dim strTemp As String, strReturn As String, i As Long
For i = 1 To Len(StrToHex)
    strTemp = Hex$(Asc(Mid$(StrToHex, i, 1)))
    If Len(strTemp) = 1 Then strTemp = "0" & strTemp
    strReturn = strReturn & strTemp
Next i
StringToHex = strReturn
End Function

Function writeMailSlot(MailSlotName As String) As Long
Dim KO_MSLOT As Long, pHook As String, p() As Byte, ph() As Byte, CF As Long, WF As Long, CH As Long
KO_MSLOT = VirtualAllocEx(KO_HANDLE, 0, 1024, MEM_COMMIT, PAGE_READWRITE)
If KO_MSLOT <= 0 Then Exit Function: MsgBox "memory could not be opened!", vbCritical
CF = GetProcAddress(GetModuleHandle("kernel32.dll"), "CreateFileA")
WF = GetProcAddress(GetModuleHandle("kernel32.dll"), "WriteFile")
CH = GetProcAddress(GetModuleHandle("kernel32.dll"), "CloseHandle")
Debug.Print Hex(KO_MSLOT)
Hex2Byte StringToHex(MailSlotName), p
ByteDizisiYaz KO_MSLOT + &H400, p, UBound(p) - LBound(p) + 1
pHook = "558BEC83C4F433C08945FC33D28955F86A0068800000006A036A006A01680000004068" & AlignDWORD(KO_MSLOT + &H400) & "E8" & AlignDWORD(getCallDiff(KO_MSLOT + &H27, CF)) & "8945F86A008D4DFC51FF750CFF7508FF75F8E8" & AlignDWORD(getCallDiff(KO_MSLOT + &H3E, WF)) & "8945F4FF75F8E8" & AlignDWORD(getCallDiff(KO_MSLOT + &H49, CH)) & "8BE55DC3" '&H49
Hex2Byte pHook, ph
ByteDizisiYaz KO_MSLOT, ph, UBound(ph) - LBound(ph) + 1
writeMailSlot = KO_MSLOT
End Function
Sub recvHook(MailSlotName As String, RecvFunction As Long, RecvBase As Long)
Dim KO_MSLOT As Long, KO_RCVHK As Long, pHook As String, ph() As Byte
KO_MSLOT = writeMailSlot(MailSlotName)
If KO_MSLOT <= 0 Then Exit Sub: MsgBox "memory could not be opened!", vbCritical
KO_RCVHK = VirtualAllocEx(KO_HANDLE, 0, 1024, MEM_COMMIT, PAGE_READWRITE)
If KO_RCVHK <= 0 Then Exit Sub: MsgBox "memory could not be opened!", vbCritical

pHook = "558BEC83C4F8538B450883C0048B108955FC8B4D0883C1088B018945F8FF75FCFF75F8E8" & AlignDWORD(getCallDiff(KO_RCVHK + &H23, KO_MSLOT)) & "83C4088B0D" & AlignDWORD(KO_PTR_DLG - &H14) & "FF750CFF7508B8" & AlignDWORD(RecvFunction) & "FFD05B59595DC20800"
Hex2Byte pHook, ph
ByteDizisiYaz KO_RCVHK, ph, UBound(ph) - LBound(ph) + 1

pHook = AlignDWORD(KO_RCVHK)
Hex2Byte pHook, ph
ByteDizisiYaz RecvBase, ph, UBound(ph) - LBound(ph) + 1
End Sub

Sub DispatchMailSlot(Handle As Long)
Dim MsgCount As Long, rc As Long, MessageBuffer As String, code, PacketType As String
Dim BoxID2, BoxID, ItemID1, ItemID2, ItemID3, ItemID4, RecAl1, RecAl2, RecAl4, RecAl3 As Long
MsgCount = 1
Do While MsgCount <> 0
rc = CheckForMessages(Handle, MsgCount)
If CBool(rc) And MsgCount > 0 Then
    If ReadMessage(Handle, MessageBuffer, MsgCount) Then
    code = MessageBuffer
    On Error Resume Next
    
    Select Case Asc(Left(MessageBuffer, 1))
        Case Else
         If Form1.CheckAuto.value = 1 And Mid(StringToHex(MessageBuffer), 1, 2) = "23" Then
           BoxID2 = Mid(StringToHex(MessageBuffer), 7, 8)
           Paket "24" & BoxID2
        End If
           If Form1.CheckAuto.value = 1 And Mid(StringToHex(MessageBuffer), 1, 2) = "24" Then
                BoxID = Mid(StringToHex(MessageBuffer), 3, 4)
                ItemID1 = Mid(StringToHex(MessageBuffer), 13, 8)
                ItemID2 = Mid(StringToHex(MessageBuffer), 25, 8)
                ItemID3 = Mid(StringToHex(MessageBuffer), 37, 8)
                ItemID4 = Mid(StringToHex(MessageBuffer), 49, 8)
                RecAl1 = Mid(StringToHex(MessageBuffer), 7, 4)
                RecAl2 = Mid(StringToHex(MessageBuffer), 21, 4)
                RecAl3 = Mid(StringToHex(MessageBuffer), 33, 4)
                RecAl4 = Mid(StringToHex(MessageBuffer), 45, 4)
                If ItemID2 > 0 Then: Paket "26" & BoxID & RecAl1 & ItemID2 & "01" & "00"
                Bekle2 200
                If ItemID3 > 0 Then: Paket "26" & BoxID & RecAl1 & ItemID3 & "02" & "00"
                Bekle2 200
                If ItemID4 > 0 Then: Paket "26" & BoxID & RecAl1 & ItemID4 & "03" & "00"
                Bekle2 200
                If ItemID1 > 0 Then: Paket "26" & BoxID & RecAl1 & ItemID1 & "00" & "00"
          End If
        
        
        
        
    End Select

    End If
End If
Loop
End Sub
Private Function ReadMessage(Handle As Long, MailMessage As String, MessagesLeft As Long)
Dim lBytesRead As Long, lNextMsgSize As Long, lpBuffer As String
ReadMessage = False
Call GetMailslotInfo(Handle, ByVal 0&, lNextMsgSize, MessagesLeft, ByVal 0&)
If MessagesLeft > 0 And lNextMsgSize <> MAILSLOT_NO_MESSAGE Then
    lBytesRead = 0
    lpBuffer = String$(lNextMsgSize, Chr$(0))
    Call ReadFile(Handle, ByVal lpBuffer, Len(lpBuffer), lBytesRead, ByVal 0&)
    If lBytesRead <> 0 Then
        MailMessage = Left(lpBuffer, lBytesRead)
        ReadMessage = True
        Call GetMailslotInfo(Handle, ByVal 0&, lNextMsgSize, MessagesLeft, ByVal 0&)
    End If
End If
End Function
Private Function CheckForMessages(Handle As Long, MessageCount As Long)
Dim lMsgCount As Long, lNextMsgSize As Long
CheckForMessages = False
GetMailslotInfo Handle, ByVal 0&, lNextMsgSize, lMsgCount, ByVal 0&
MessageCount = lMsgCount
CheckForMessages = True
End Function
Public Function EstablishMailSlot(ByVal MailSlotName As String, Optional MaxMessageSize As Long = 0, Optional ReadTimeOut As Long = 50) As Long
EstablishMailSlot = CreateMailslot(MailSlotName, MaxMessageSize, ReadTimeOut, ByVal 0&)
End Function

Function HiWord(DWord As Long) As Integer
HiWord = (DWord And &HFFFF0000) \ &H10000
End Function
Function LoWord(DWord As Long) As Integer
If DWord And &H8000& Then LoWord = DWord Or &HFFFF0000 Else LoWord = DWord And &HFFFF&
End Function

Public Function LoByte(ByVal wParam As Integer) As Byte
LoByte = wParam And &HFF&
End Function
Public Function HiByte(ByVal wParam As Integer) As Byte
HiByte = (wParam And &HFF00&) \ (&H100)
End Function
Public Function ByteDizisiYaz(pAddy As Long, pmem() As Byte, pSize As Long)
WriteProcessMem KO_HANDLE, pAddy, pmem(LBound(pmem)), pSize, 0&
End Function

Function FormatHex(strHex As String, inLength As Integer)
Dim newHex As String, byte1 As String, byte2 As String, byte3 As String, byte4 As String
Dim ZeroSpaces As Integer
ZeroSpaces = inLength - Len(strHex) '1
newHex = String(ZeroSpaces, "0") + strHex '0ABC
byte1 = Left(newHex, 2)
byte2 = Mid(newHex, 3, 2)
byte3 = Mid(newHex, 5, 2)
byte4 = Right(newHex, 2)
Select Case Len(newHex)
Case 2 '0A
newHex = byte1
Case 4 '0ABC
newHex = byte4 & byte1
Case 6 '000ABC
newHex = byte4 & byte2 & byte1
Case 8 '00000ABC
newHex = byte4 & byte3 & byte2 & byte1
Case Else
End Select
FormatHex = newHex
End Function

Public Sub Bekle2(Milisaniye As Long)
    Dim ft As FILETIME
    Dim lBusy As Long
    Dim lRet As Long
    Dim dblDelay As Double
    Dim dblDelayLow As Double
    Dim dblUnits As Double
    Dim hTimer As Long
    
    hTimer = CreateWaitableTimer(0, True, App.EXEName & "Timer")
    
    If Err.LastDllError = ERROR_ALREADY_EXISTS Then
        ' If the timer already exists, it does not hurt to open it
        ' as long as the person who is trying to open it has the
        ' proper access rights.
    Else
        ft.dwLowDateTime = -1
        ft.dwHighDateTime = -1
        lRet = SetWaitableTimer(hTimer, ft, 0, 0, 0, 0)
    End If
    
    ' Convert the Units to nanoseconds.
    dblUnits = CDbl(&H10000) * CDbl(&H10000)
    dblDelay = CDbl(Milisaniye) * 10000
    'dblDelay = CDbl(lNumberOfSeconds) * 1000 * 10000  idi ama milisaniye cinsinden daha iyi
    
    ' By setting the high/low time to a negative number, it tells
    ' the Wait (in SetWaitableTimer) to use an offset time as
    ' opposed to a hardcoded time. If it were positive, it would
    ' try to convert the value to GMT.
    ft.dwHighDateTime = -CLng(dblDelay / dblUnits) - 1
    dblDelayLow = -dblUnits * (dblDelay / dblUnits - _
        Fix(dblDelay / dblUnits))
    
    If dblDelayLow < CDbl(&H80000000) Then
        ' &H80000000 is MAX_LONG, so you are just making sure
        ' that you don't overflow when you try to stick it into
        ' the FILETIME structure.
        dblDelayLow = dblUnits + dblDelayLow
        ft.dwHighDateTime = ft.dwHighDateTime + 1
    End If
    
    ft.dwLowDateTime = CLng(dblDelayLow)
    lRet = SetWaitableTimer(hTimer, ft, 0, 0, 0, False)
    
    Do
        ' QS_ALLINPUT means that MsgWaitForMultipleObjects will
        ' return every time the thread in which it is running gets
        ' a message. If you wanted to handle messages in here you could,
        ' but by calling Doevents you are letting DefWindowProc
        ' do its normal windows message handling---Like DDE, etc.
        lBusy = MsgWaitForMultipleObjects(1, hTimer, False, _
            INFINITE, QS_ALLINPUT&)
        DoEvents
    Loop Until lBusy = WAIT_OBJECT_0
    
    ' Close the handles when you are done with them.
    CloseHandle hTimer

End Sub

