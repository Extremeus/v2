Attribute VB_Name = "AMainModular"
Option Explicit
'--------------------------------------------------------------------------------------------------------------------------
'Functions
Public Declare Function DuplicateHandle Lib "kernel32" (ByVal hSourceProcessHandle As Long, ByVal hSourceHandle As Long, ByVal hTargetProcessHandle As Long, lpTargetHandle As Long, ByVal dwDesiredAccess As Long, ByVal bInheritHandle As Long, ByVal dwOptions As Long) As Long
Public Declare Function GetClassName Lib "user32" Alias "GetClassNameA" (ByVal hwnd As Long, ByVal lpClassName As String, ByVal nMaxCount As Long) As Long
Public Declare Function CreateToolhelp32Snapshot Lib "kernel32" (ByVal lFlags As Long, ByVal lProcessID As Long) As Long
Public Declare Function ResumeThread Lib "kernel32" (ByVal hThread As Long) As Long
Public Declare Function GetThreadPriority Lib "kernel32" (ByVal hThread As Long) As Long
Public Declare Sub CopyMemory Lib "kernel32.dll" Alias "RtlMoveMemory" (Destination As Any, Source As Any, ByVal Length As Long)
Public Declare Function GetTickCount Lib "kernel32" () As Long
Public Declare Function CloseHandle Lib "kernel32" (ByVal hObject As Long) As Long
Public Declare Function ReadProcessMem Lib "kernel32" Alias "ReadProcessMemory" (ByVal hProcess As Long, ByVal lpBaseAddress As Any, ByRef lpBuffer As Any, ByVal nSize As Long, lpNumberOfBytesWritten As Long) As Long
Public Declare Function WriteProcessMem Lib "kernel32" Alias "WriteProcessMemory" (ByVal hProcess As Long, ByVal lpBaseAddress As Any, ByRef lpBuffer As Any, ByVal nSize As Long, lpNumberOfBytesWritten As Long) As Long
Public Declare Function ReadFile Lib "kernel32" (ByVal hFile As Long, lpBuffer As Any, ByVal nNumberOfBytesToRead As Long, lpNumberOfBytesRead As Long, lpOverlapped As Long) As Long
Public Declare Function CreateMailslot Lib "kernel32" Alias "CreateMailslotA" (ByVal lpName As String, ByVal nMaxMessageSize As Long, ByVal lReadTimeout As Long, lpSecurityAttributes As Any) As Long
Public Declare Function GetMailslotInfo Lib "kernel32" (ByVal hMailslot As Long, lpMaxMessageSize As Long, lpNextSize As Long, lpMessageCount As Long, lpReadTimeout As Long) As Long
Public Declare Function ReadFileSimple Lib "kernel32" Alias "ReadFile" (ByVal hFile As Long, ByVal lpBuffer As String, ByVal nNumberOfBytesToRead As Long, lpNumberOfBytesRead As Long, ByVal Zero As Long) As Long
Private Declare Function LoadLibrary Lib "kernel32" Alias "LoadLibraryA" (ByVal lpLibFileName As String) As Long
Private Declare Function GetProcAddress Lib "kernel32" (ByVal hModule As Long, ByVal lpProcName As String) As Long
Private Declare Function GetModuleHandle Lib "kernel32" Alias "GetModuleHandleA" (ByVal lpModuleName As String) As Long
Private Declare Function FreeLibrary Lib "kernel32" (ByVal hLibModule As Long) As Long
Public Declare Function CreateRemoteThread Lib "kernel32" (ByVal hProcess As Long, lpThreadAttributes As Long, ByVal dwStackSize As Long, lpStartAddress As Long, lpParameter As Any, ByVal dwCreationFlags As Long, lpThreadID As Long) As Long
Public Declare Function WaitForSingleObject Lib "kernel32" (ByVal hHandle As Long, ByVal dwMilliseconds As Long) As Long
'Private Declare Function VirtualFreeEx Lib "kernel32" (ByVal hProcess As Long, lpAddress As Any, ByVal dwSize As Long, ByVal dwFreeType As Long) As Long
Public Declare Function VirtualFreeEx Lib "kernel32" (ByVal hProcess As Long, lpAddress As Any, ByVal dwSize As Long, ByVal dwFreeType As Long) As Long

Public Declare Function GetModuleInformation Lib "psapi.dll" (ByVal hProcess As Long, ByVal hModule As Long, lpmodinfo As MODULEINFO, ByVal cb As Long) As Long

Public Declare Function VirtualAllocEx Lib "kernel32" (ByVal hProcess As Long, ByVal lpAddress As Long, ByVal dwSize As Long, ByVal flAllocationType As Long, ByVal flProtect As Long) As Long
Private Declare Function GetPrivateProfileSection Lib "kernel32" Alias "GetPrivateProfileSectionA" (ByVal lpAppName As String, ByVal lpReturnedString As String, ByVal nSize As Long, ByVal lpFileName As String) As Long
Private Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, ByVal X As Long, ByVal Y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
Private Declare Function WritePrivateProfileSection Lib "kernel32" Alias "WritePrivateProfileSectionA" (ByVal lpAppName As String, ByVal lPaketing As String, ByVal lpFileName As String) As Long
Public Declare Function GetAsyncKeyState Lib "user32" (ByVal vKey As Long) As Integer
Public Declare Function FindWindow Lib "user32" Alias "FindWindowA" (ByVal lpClassName As String, ByVal lpWindowName As String) As Long
Private Declare Function GetWindowThreadProcessId Lib "user32" (ByVal hwnd As Long, lpdwProcessId As Long) As Long
Private Declare Function OpenProcess Lib "kernel32" (ByVal dwDesiredAccess As Long, ByVal bInheritHandle As Long, ByVal dwProcessId As Long) As Long
Public Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)
'Public Declare Function WriteProcessMem Lib "kernel32" Alias "WriteProcessMemory" (ByVal hProcess As Long, ByVal lpBaseAddress As Any, ByRef lpBuffer As Any, ByVal nSize As Long, lpNumberOfBytesWritten As Long) As Long
Public Declare Function EnumProcessModules Lib "psapi.dll" (ByVal hProcess As Long, ByRef lphModule As Long, ByVal cb As Long, ByRef cbNeeded As Long) As Long
Public Declare Function GetModuleFileNameExA Lib "psapi.dll" (ByVal hProcess As Long, ByVal hModule As Long, ByVal ModuleName As String, ByVal nSize As Long) As Long
Private Const PROCESS_CREATE_THREAD = &H2
Private Const PROCESS_VM_OPERATION = &H8
Private Const PROCESS_VM_WRITE = &H20
Private Declare Function CreateToolhelpSnapshot Lib "kernel32" Alias "CreateToolhelp32Snapshot" (ByVal lFlags As Long, ByVal lProcessID As Long) As Long
Private Declare Function Process32First Lib "kernel32" (ByVal hSnapShot As Long, uProcess As PROCESSENTRY32) As Long
Private Declare Function Process32Next Lib "kernel32" (ByVal hSnapShot As Long, uProcess As PROCESSENTRY32) As Long
Private Declare Function Module32First Lib "kernel32" (ByVal hSnapShot As Long, uProcess As MODULEENTRY32) As Long
Private Declare Function Module32Next Lib "kernel32" (ByVal hSnapShot As Long, uProcess As MODULEENTRY32) As Long
'--------------------------------------------------------------------------------------------------------------------------
Const HWND_TOPMOST = -1, HWND_NOTOPMOST = -2, SWP_NOMOVE As Long = &H2, SWP_NOSIZE As Long = &H1
Public BytesAddr As Long, KO_ADI As String
'KO_HANDLE As Long, KO_PID As Long, FuncPtr As Long

Private Type SECURITY_ATTRIBUTES
    nLength As Long
    lpSecurityDescriptor As Long
    bInheritHandle As Long
End Type

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
    
'--------------------------------------------------------------------------------------------------------------------------
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
    ID As Long
    Name As String
End Type

Public Type SkillStruct
    ID As Long
    Name As String
    Class As String
    Cooldown As Long
End Type

Public Type LootBoxStruct
BoxID As Long
BoxOpened As Boolean
OpenTime As Long
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

'--------------------------------------------------------------------------------------------------------------------------

Global son As Integer
Global toplam As Integer
Global son2 As Integer
Global toplam2 As Integer

'--------------------------------------------------------------------------------------------------------------------------

'--------------------------------------------------------------------------------------------------------------------------
' Public KO_PTR_DLG, KO_PTR_PKT As Long, KO_SND_FNC As Long, KO_SND_PACKET As Long, KO_SEND_PTR As Long
Public Enum enSW
    SW_HIDE = 0
    SW_NORMAL = 1
    SW_MAXIMIZE = 3
    SW_MINIMIZE = 6
End Enum

Public Enum enPriority_Class
    NORMAL_PRIORITY_CLASS = &H20
    IDLE_PRIORITY_CLASS = &H40
    HIGH_PRIORITY_CLASS = &H80
End Enum
'--------------------------------------------------------------------------------------------------------------------------
'--------------------------------------------------------------------------------------------------------------------------
'Variables
Public calcX As Single
Public calcY As Single
Public KO_FNC_ISEN As Long
Public mobtime As Long
Public FuncPtr As Long
Public Const lngNull = 0
Public LootBox(1 To 20) As LootBoxStruct
Public Items() As ItemStruct
Public Skills() As SkillStruct
Public TimedSkills() As SkillStruct
Public OtherItems() As ItemStruct
Public KO_HANDLE As Long
Public KO_WindowHandle As Long
Public KO_ADR_CHR As Long
Public KO_ADR_DLG As Long
Public KO_PID As Long
Public packetbytes As Long
Public codebytes As Long
Public zMobX As Long
Public zMobY As Long
Public zMobZ As Long
Public zMobName As String, zMobID As Long, zMobHp As Long, zMobDistance As Long
Public zkMobName As String, zkMobID As Long, zkMobX As Long, zkMobY As Long, zkMobZ As Long, zkMobHp As Long, zkMobDistance As Long
Public ItemLevel As Long
Public BankadakiItemler(191) As String
Public ItemIntID(41) As String
Public Süre As Long
Public ID(14) As String
Public UseAutoLoot
Public BonusFilter As Long
Public MSName
Public MSHandle
Public ByteMob_Base As Long
Public UseSitAutoAttack
Public UseWallHack
Public UseLupineEyes
Public UseAutoSwift
Public UseAutoSell
Public CurrentMobHP As Long
Public BoxID
Public ItemID
Public AttackNow
Public SecondID
Public ThirdID
Public FourthID
Public FifthID
Public SixthID
Public BoxOpened
Public Looting
Public RecvHandle As Long
Public RepairID As String
Public ItemSlot As String
Public RecvID As String
Public LastBoxID As Long
Public OpenNextBox As Boolean
Public LastRepair As Date
Public RepairDiff As Long
Public LootBuffer As String
Public KO_OFF_LOOT As Long
Public KO_OFF_KUTU As Long
Public KO_OFF_KUTU2 As Long
' Pointerler
Public KO_RECVHK As Long
Public KO_RCVHKB As Long
Public KO_RECV_PTR As Long
Public KO_RECV_FNC As Long

Public RecvHandle2 As Long
Public hook As Long
Public KO_PTR_CHR As Long
Public KO_PTR_PKT As Long
Public KO_PTR_DLG As Long
Public KO_SND_FNC As Long
Public KO_SND_PACKET As Long
Public KO_OFF_PARTY As Long
Public KO_KEY_PTR As Long
Public KO_SEND_PTR As Long
'Clientten Seçmeler
Public KO_FLDB As Long
Public KO_FMBS As Long
Public KO_FPBS As Long
Public KO_FNCB As Long
' Offsetler
Public KO_OFF_SWIFT As Long
Public KO_OFF_CLASS As Long
Public KO_OFF_ID As Long
Public KO_OFF_MOB As Long
Public KO_OFF_MOBMAX As Long
Public KO_OFF_HP As Long
Public KO_OFF_MAXHP As Long
Public KO_OFF_MP As Long
Public KO_OFF_MAXMP As Long
Public KO_OFF_MX As Long
Public KO_OFF_MY As Long
Public KO_OFF_MZ As Long
Public KO_OFF_Go1 As Long
Public KO_OFF_GoX As Long
Public KO_OFF_GoY As Long
Public KO_OFF_Go2 As Long
Public KO_OFF_ZONE As Long

'dinput
Public DINPUT_Handle As Long
Public DINPUT_lpBaseOfDLL As Long
Public DINPUT_SizeOfImage As Long
Public DINPUT_EntryPoint As Long
Public DINPUT_KEYDMA As Long
Public DINPUT_K_1 As Long
Public DINPUT_K_2 As Long
Public DINPUT_K_3 As Long
Public DINPUT_K_4 As Long
Public DINPUT_K_5 As Long
Public DINPUT_K_6 As Long
Public DINPUT_K_7 As Long
Public DINPUT_K_8 As Long
Public DINPUT_K_Z As Long
Public DINPUT_K_B As Long
Public DINPUT_K_C As Long
Public DINPUT_K_S As Long
Public DINPUT_K_R As Long
Public DINPUT_K_E As Long
'--------------------------------------------------------------------------------------------------------------------------

'Constants
'Public Const MEM_COMMIT As Long = &H1000&
Public Const STARTF_USESHOWWINDOW = &H1
Public Const KO_PERI_TAK             As Long = &H56AE90
Public Const KO_PERI_MLOOT           As Long = &HCA1060
Public Const KO_PERI_CLOOT           As Long = &HCA105C
Public Const KO_OTO_LOGIN_PTR As Long = &HDD2FF0 'DD1FF0 'DD1F38 'DE1A8C 'DDEA84 '8B4E1483C40C010F5F5EC3CCCCCCCCCCCC566A006A008BF1 alttaki ilk JNE
Public Const KO_OTO_LOGIN_ADR1 As Long = &H4D73E0   '4D73D0   '4D73D0   '4D7480   '4D7270   '8B7900 '8D9480960000008D04968B1083EC148BCC - &h120
Public Const KO_OTO_LOGIN_ADR2 As Long = &H4D08B0   '4D08A0   '4D08A0   '4D0950   '4D0740   '8B1DB0 '8B81EC03000053558B6C241856
Public Const KO_OTO_LOGIN_ADR3 As Long = &H4D0370   '4D0360   '4D0360   '4D0410 '4D0200   '8B18E0 '5356578DB5A40100008DBD5C020000
Public Const KO_OTO_LOGIN_ADR4 As Long = &H4D3660   '4D3650   '4D3650   '4D3700 '4D0410   '8B44F0 '55565733FF8DB360020000
Public Const KO_BYPASS_ADR1 As Long = &H9827F5   '9827D5   '982205 '981C85   '981D25   '981905 '83C4048D4C246451895C2440897C243CC644242C00 + &h34
Public Const KO_BYPASS_ADR2 As Long = &H4ADDF2   '4ADDE2   '4ADDE2   '4ADDE2   '4ADBD2 '8B4D080FB74401FE0FBFF857 + &H5E '10BE3
Public Const KO_BYPASS_ADR3 As Long = &H4ADDDC   '4ADDCC   '4ADDCC   '4ADDCC   '4ADBBC '8B4D080FB74401FE0FBFF857 + &h48
Public Const KO_BYPASS_ADR4 As Long = &H4ADE01   '4ADDF1   '4ADDF1   '4ADDF1   '4ADBE1 '8B4D080FB74401FE0FBFF857 + &h6d
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
Public Const SW_SHOWNORMAL = 1
Public Const SW_SHOWMINIMIZED = 2
Public Const SW_SHOWMAXIMIZED = 3
Public Const SW_SHOWNOACTIVATE = 4
Public Const SW_SHOW = 5
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

Public Const PROCESS_ALL_ACCESS = &H1F0FFF
Private Const PAGE_READWRITE = &H4&
Private Const INFINITE = &HFFFF
Public Const MAILSLOT_NO_MESSAGE   As Long = (-1)
'--------------------------------------------------------------------------------------------------------------------------

Public Function LongOku(addr As Long) As Long 'read a 4 byte value
    Dim value As Long
    ReadProcessMem KO_HANDLE, addr, value, 4, 0&
    LongOku = value
End Function
Public Function LongYaz(addr As Long, val As Long) ' write a 4 byte value
    WriteProcessMem KO_HANDLE, addr, val, 4, 0&
End Function
Sub ByteYaz(addr As Long, pVal As Byte)
Dim pbw As Long
WriteProcessMem KO_HANDLE, addr, pVal, 1, pbw
End Sub
Public Function AttachKO() As Boolean
Dim RecvMailSlot2 As String
Dim RecvMailSlot As String

RecvMailSlot = "\\.\mailslot\ByS0x" & Hex(GetTickCount)

    GetWindowThreadProcessId FindWindow(vbNullString, "Knight OnLine Client"), KO_PID
    KO_HANDLE = OpenProcess(PROCESS_ALL_ACCESS, False, KO_PID)
    
    RecvHandle = EstablishMailSlot(RecvMailSlot)
    FindHook RecvMailSlot
    
        If KO_HANDLE = 0 Then
            MsgBox ("Oyunu Yönetici Olarak Aç!!.")
            AttachKO = False
            Exit Function
            
    If KO_PID = 0 Then End
    AttachKO = True
    End If
    hook = HookDI8
    Form1.kututopla.Enabled = True
End Function
Function MemPatch(Handle As Long, addr As Long, Patch As String)
Dim pBytes() As Byte, size As Long
Hex2Byte Patch, pBytes
size = UBound(pBytes) - LBound(pBytes) + 1
WriteProcessMem KO_HANDLE, addr, pBytes(LBound(pBytes)), size, vbNull
End Function


Public Function HookDI8() As Boolean
Dim Ret As Long
Dim lmodinfo As MODULEINFO
DINPUT_Handle = 0
DINPUT_Handle = FindModuleHandle("dinput8.dll")
Ret = GetModuleInformation(KO_HANDLE, DINPUT_Handle, lmodinfo, Len(lmodinfo))
If Ret <> 0 Then
With lmodinfo
DINPUT_EntryPoint = .EntryPoint
DINPUT_lpBaseOfDLL = .lpBaseOfDLL
DINPUT_SizeOfImage = .SizeOfImage
End With
Else
Exit Function
End If
SetupDInput
HookDI8 = True
End Function
Sub SetupDInput()
DINPUT_KEYDMA = FindDInputKeyPtr
If DINPUT_KEYDMA <> 0 Then
DINPUT_K_1 = DINPUT_KEYDMA + 2
DINPUT_K_2 = DINPUT_KEYDMA + 3
DINPUT_K_3 = DINPUT_KEYDMA + 4
DINPUT_K_4 = DINPUT_KEYDMA + 5
DINPUT_K_5 = DINPUT_KEYDMA + 6
DINPUT_K_6 = DINPUT_KEYDMA + 7
DINPUT_K_7 = DINPUT_KEYDMA + 8
DINPUT_K_8 = DINPUT_KEYDMA + 9
DINPUT_K_Z = DINPUT_KEYDMA + 44
DINPUT_K_B = DINPUT_KEYDMA + 48
DINPUT_K_C = DINPUT_KEYDMA + 46
DINPUT_K_S = DINPUT_KEYDMA + 31
DINPUT_K_R = DINPUT_KEYDMA + 19
DINPUT_K_E = DINPUT_KEYDMA + &H12
End If
End Sub
Function ReadByteArray(addr As Long, pmem() As Byte, pSize As Long)
Dim value As Byte
ReDim pmem(1 To pSize) As Byte
ReadProcessMem KO_HANDLE, addr, pmem(1), pSize, 0&
End Function
Function FindDInputKeyPtr() As Long
Dim pBytes() As Byte
Dim pSize As Long
Dim X As Long
pSize = DINPUT_SizeOfImage
ReDim pBytes(1 To pSize)
ReadByteArray DINPUT_lpBaseOfDLL, pBytes, pSize
For X = 1 To pSize - 10
If pBytes(X) = &H57 And pBytes(X + 1) = &H6A And pBytes(X + 2) = &H40 And pBytes(X + 3) = &H33 And pBytes(X + 4) = &HC0 And pBytes(X + 5) = &H59 And pBytes(X + 6) = &HBF Then
FindDInputKeyPtr = val("&H" & IIf(Len(Hex(pBytes(X + 10))) = 1, "0" & Hex(pBytes(X + 10)), Hex(pBytes(X + 10))) & IIf(Len(Hex(pBytes(X + 9))) = 1, "0" & Hex(pBytes(X + 9)), Hex(pBytes(X + 9))) & IIf(Len(Hex(pBytes(X + 8))) = 1, "0" & Hex(pBytes(X + 8)), Hex(pBytes(X + 8))) & IIf(Len(Hex(pBytes(X + 7))) = 1, "0" & Hex(pBytes(X + 7)), Hex(pBytes(X + 7))))
Exit For
End If
Next
End Function
Public Function FindModuleHandle(ModuleName As String) As Long
Dim hModules(1 To 256) As Long
Dim BytesReturned As Long
Dim ModuleNumber As Byte
Dim TotalModules As Byte
Dim Filename As String * 128
Dim ModName As String
EnumProcessModules KO_HANDLE, hModules(1), 1024, BytesReturned
TotalModules = BytesReturned / 4
For ModuleNumber = 1 To TotalModules
GetModuleFileNameExA KO_HANDLE, hModules(ModuleNumber), Filename, 128
ModName = Left(Filename, InStr(Filename, Chr(0)) - 1)
If UCase(Right(ModName, Len(ModuleName))) = UCase(ModuleName) Then
FindModuleHandle = hModules(ModuleNumber)
End If
Next
End Function
Function Otokutuac()
Dim mem As Long
Dim KO_RECV_PTR As Long
Dim KO_RECV_FNC As Long
 KO_RECV_PTR = &HB57208
 KO_RECV_FNC = &H53E980

mem = VirtualAllocEx(KO_HANDLE, 0, 1024, MEM_COMMIT, &H40)
InjectPatch mem, "558BEC81C4D8FDFFFF53565760FF750CFF7508B8" + AlignDWORD(KO_RECV_FNC) + "FFD0618B45088B400833D28A1083FA2375348D8DF0FEFFFF8D95F1FEFFFF894DFC8B4003C685F0FEFFFF248902608B0D" + AlignDWORD(KO_PTR_PKT) + "6A05FF75FCB8" + AlignDWORD(KO_SND_FNC) + "FFD061E9AA00000033C98A0883F9240F859D0000008B50018955F8BEC8F040008DBDD8FEFFFFB906000000F3A533DB83C00633C98D95D8FEFFFF03C38B1883C006891A4183C20483F90672F066C745F6000033FF8DB5D8FEFFFF833E00744A8D85D8FDFFFF8D95D9FDFFFF8945F08D85DDFDFFFFC685D8FDFFFF268B4DF8890A8D8DE1FDFFFF8B168910668B5DF666891966FF45F6608B0D" + AlignDWORD(KO_PTR_PKT) + "6A0BFF75F0B8" + AlignDWORD(KO_SND_FNC) + "FFD0614783C60483FF0672A85F5E5B8BE55DC20800"
WriteLong KO_RECV_PTR, mem
End Function
Function GetCurrentSkill(SkillNo As Integer)
Dim i As Integer
Dim Ptr As Long, tmpBase As Long
Ptr = ReadLong(KO_PTR_DLG)
tmpBase = ReadLong(Ptr + &H1B8)
tmpBase = ReadLong(tmpBase + &H4)
tmpBase = ReadLong(tmpBase + &HE0)
For i = 1 To SkillNo
tmpBase = ReadLong(tmpBase + &H0)
Next
tmpBase = ReadLong(tmpBase + &H8)
If tmpBase > 0 Then
tmpBase = ReadLong(tmpBase + &H0)
GetCurrentSkill = tmpBase
Else
GetCurrentSkill = 0
End If
End Function
Public Function ConvHEX2ByteArray(pStr As String, pByte() As Byte)
On Error Resume Next
Dim i As Long
Dim j As Long
ReDim pByte(1 To Len(pStr) / 2)
j = LBound(pByte) - 1
For i = 1 To Len(pStr) Step 2
    j = j + 1
    pByte(j) = CByte("&H" & mID(pStr, i, 2))
Next
End Function
Public Sub YukarýdaTut(TheForm As Form, SetOnTop As Boolean)
    Dim lflag
    If SetOnTop Then
        lflag = HWND_TOPMOST
    Else
        lflag = HWND_NOTOPMOST
    End If
    SetWindowPos TheForm.hwnd, lflag, 0, 0, 0, 0, SWP_NOMOVE Or SWP_NOSIZE
End Sub
Public Function InjectPatch(addr As Long, pStr As String)
'//SexClub M.Ö. 20000
Dim pBytes() As Byte
ConvHEX2ByteArray pStr, pBytes
WriteProcessMem KO_HANDLE, addr, pBytes(LBound(pBytes)), UBound(pBytes) - LBound(pBytes) + 1, 0&
End Function
Public Function ReadLong(addr As Long, Optional s As Integer = 1) As Long  'read a 4 byte value
    Dim value As Long
    ReadProcessMem KO_HANDLE, addr, value, 4, 0&
    ReadLong = value
End Function
Public Function ReadFloat(addr As Long) As Long 'read a float value
On Error Resume Next
    Dim value As Single
    ReadProcessMem KO_HANDLE, addr, value, 4, 0&
    ReadFloat = value
End Function
Function SýnýfBul() As Long
SýnýfBul = LongOku(LongOku(KO_PTR_CHR) + KO_OFF_CLASS)
End Function
Public Function WriteFloat(addr As Long, val As Single) 'write a float value
    WriteProcessMem KO_HANDLE, addr, val, 4, 0&
End Function
Public Function WriteLong(addr As Long, val As Long) ' write a 4 byte value
    WriteProcessMem KO_HANDLE, addr, val, 4, 0&
End Function
Public Function WriteByte(addr As Long, val As Byte) ' write a 1 byte value
    WriteProcessMem KO_HANDLE, addr, val, 1, 0&
End Function

Public Function WriteByteArray(pAddy As Long, pmem() As Byte, pSize As Long)
    WriteProcessMem KO_HANDLE, pAddy, pmem(LBound(pmem)), pSize, 0&
End Function
Function CharX()
CharX = ReadFloat(KO_ADR_CHR + KO_OFF_X)
End Function
Function CharY()
CharY = ReadFloat(KO_ADR_CHR + KO_OFF_Y)
End Function
Function CharZ()
CharZ = ReadFloat(KO_ADR_CHR + KO_OFF_Z)
End Function
Function Mobx() As Long
Mobx = ReadFloat(ReadLong(ReadLong(KO_PTR_DLG) + &H424) + &H7C)
End Function
Function MobY() As Long
MobY = ReadFloat(ReadLong(ReadLong(KO_PTR_DLG) + &H424) + &H84)
End Function
Function MobZ() As Long
MobZ = ReadFloat(ReadLong(ReadLong(KO_PTR_DLG) + &H408) + &H80)
End Function
Function MobTID()
MobTID = ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_MOB)
End Function

Function MobTargetID()
MobTargetID = ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_MOB)
End Function

Public Function MobName()
MobName = ReadString(ReadLong(ReadLong(ReadLong(ReadLong(KO_PTR_DLG) + &H1BC) + &HD4) + &H150), False, 25)
End Function

Public Function MobHp() As Long
MobHp = ReadLong(ReadLong(ReadLong(ReadLong(KO_PTR_DLG) + &H1BC) + &HC4) + &HEC)
End Function
Public Function Hex2Byte(Paket As String, pByte() As Byte)
On Error Resume Next
Dim i As Long
Dim j As Long
ReDim pByte(1 To Len(Paket) / 2)

j = LBound(pByte) - 1
For i = 1 To Len(Paket) Step 2
    j = j + 1
    pByte(j) = CByte("&H" & mID(Paket, i, 2))
Next
End Function
Public Sub Paket(Paket As String)
'Form1.List3.AddItem Paket
Dim PaketByte() As Byte
ConvHEX2ByteArray Paket, PaketByte
SendPacket PaketByte
'Dim PaketByte() As Byte
'Hex2Byte Paket, PaketByte
'PaketYolla PaketByte
End Sub
Function PaketYolla(pPacket() As Byte)
On Error Resume Next
Dim pSize As Long, pCode() As Byte
pSize = UBound(pPacket) - LBound(pPacket) + 1
If BytesAddr = 0 Then BytesAddr = VirtualAllocEx(KO_HANDLE, 0, pSize, MEM_COMMIT, PAGE_READWRITE)
If BytesAddr <> 0 Then
    ByteDizisiYaz BytesAddr, pPacket, pSize
    Hex2Byte "608B0D" & AlignDWORD(KO_PTR_PKT) & "68" & AlignDWORD(pSize) & "68" & AlignDWORD(BytesAddr) & "BF" & AlignDWORD(KO_SND_FNC) & "FFD7C605" & AlignDWORD(KO_SND_PACKET) & "0061C3", pCode
    'UzaktanKodÇalýþtýr pCode, True
End If

End Function
Function SendPacket(pPacket() As Byte)
Dim pSize As Long
Dim pCode() As Byte
pSize = UBound(pPacket) - LBound(pPacket) + 1
If packetbytes <> 0 Then
    WriteByteArray packetbytes, pPacket, pSize
    ConvHEX2ByteArray "608B0D" & AlignDWORD(KO_PTR_PKT) & "68" & AlignDWORD(pSize) & "68" & AlignDWORD(packetbytes) & "BF" & AlignDWORD(KO_SND_FNC) & "FFD761C3", pCode
    'WriteByte KO_PTR_PKT + &HC5, 0
    AsmKodCalistir pCode
End If
End Function
Function ExecuteRemoteCode(pCode() As Byte, Optional WaitExecution As Boolean = False) As Long
Dim hThread As Long, Ret As Long
WriteByteArray codebytes, pCode, UBound(pCode) - LBound(pCode) + 1
  If codebytes <> 0 Then
   hThread = CreateRemoteThread(ByVal KO_HANDLE, 0, 0, ByVal codebytes, 0, 0, 0)
   If hThread Then
      Ret = WaitForSingleObject(hThread, INFINITE)
   End If
   CloseHandle hThread
End If
End Function


Function AsmKodCalistir(pCode() As Byte)
Dim hThread As Long, Ret As Long
WriteByteArray codebytes, pCode, UBound(pCode) - LBound(pCode) + 1
  If codebytes <> 0 Then
   hThread = CreateRemoteThread(ByVal KO_HANDLE, 0, 0, ByVal codebytes, 0, 0, 0)
   If hThread Then
      Ret = WaitForSingleObject(hThread, INFINITE)
   End If
   CloseHandle hThread
End If
End Function

Function sabitleme()
WriteLong ReadLong(KO_PTR_CHR) + KO_OFF_SWIFT, 16256 '16508 denencek
End Function
Public Function YürüXY(X As Single, Y As Single) As Boolean
    If CInt(CharX) = CInt(X) And CInt(CharY) = CInt(Y) Then YürüXY = True: Exit Function
    WriteLong KO_ADR_CHR + KO_OFF_Go2, 2
    WriteFloat KO_ADR_CHR + KO_OFF_MX, X
    WriteFloat KO_ADR_CHR + KO_OFF_MY, Y
    WriteLong KO_ADR_CHR + KO_OFF_Go1, 1
    YürüXY = False: Exit Function
End Function
Public Function getDistance3(X As Single, Y As Single) As Long
Dim step1 As Long
Dim step2 As Long
step1 = (CharX - X) ^ 2
step2 = (CharY - Y) ^ 2
getDistance3 = Math.Round((step1 + step2) ^ (1 / 2), 0)
End Function
Public Function calcCoor(X As Single, Y As Single, Dist)
Dim x1 As Single, y1 As Single
Dim m As Single
x1 = CharX - X
y1 = CharY - Y
m = (getDistance3(X, Y) - Dist) / getDistance3(X, Y)
calcX = CharX - (x1 * m)
calcY = CharY - (y1 * m)
End Function
Function Takipsh(X As Single, Y As Single)
Dim x1 As Single, y1 As Single, z1 As Single, step_size
Dim Dist As Long
step_size = 6
x1 = X
y1 = Y
'z1 = Z
If X > 0 And Y > 0 Then
If X <> CharX Or Y <> CharY Then
    If getDistance3(X, Y) > Dist And Dist <> 0 Then
        calcCoor X, Y, Dist
        x1 = calcX
        y1 = calcY
    End If
    
    If getDistance3(x1, y1) > step_size Then
        calcCoor x1, y1, getDistance3(x1, y1) - step_size
        x1 = calcX
        y1 = calcY
    End If
    
'GoCoordinate CLng(x1), CLng(y1)
WriteFloat ReadLong(KO_PTR_CHR) + KO_OFF_X, x1
WriteFloat ReadLong(KO_PTR_CHR) + KO_OFF_Y, y1
WriteFloat ReadLong(KO_PTR_CHR) + KO_OFF_Z, CharZ
Paket "06" & FormatHex(Hex(CInt(CharX) * 10), 4) & FormatHex(Hex(CInt(CharY) * 10), 4) & FormatHex(Hex(CInt(CharZ) * 10), 4) & "2D0003" _
& FormatHex(Hex(CInt(CharX) * 10), 4) & FormatHex(Hex(CInt(CharY) * 10), 4) & FormatHex(Hex(CInt(CharZ) * 10), 4)
End If
End If
End Function


Public Function SpeedHack(XKor As Integer, YKor As Integer) As Boolean
If CInt(CharX) = XKor And CInt(CharY) = YKor Then SpeedHack = True: Exit Function
'SeksClub
Dim FarkX As Long, FarkY As Long
Dim ZýplaX As Integer, ZýplaY As Integer, i As Integer
FarkX = XKor - CharX
FarkY = YKor - CharY
ZýplaX = 1
ZýplaY = 1
If CharX = XKor And CharY = YKor Then
Exit Function
End If
For i = 1 To 5
If FarkX = -1 * i Or FarkX = i Then
ZýplaX = 1
ElseIf FarkY = -1 * i Or FarkY = i Then
ZýplaY = 1
End If
Next i
Dim oAnkiX As Long, oAnkiY As Long
oAnkiX = CharX
oAnkiY = CharY
If FarkX <> 0 Or FarkY <> 0 Then
If FarkX < 0 Then
WriteFloat ReadLong(KO_PTR_CHR) + KO_OFF_X, CharX - ZýplaX
ElseIf FarkX > 0 Then
WriteFloat ReadLong(KO_PTR_CHR) + KO_OFF_X, CharX + ZýplaX
End If
If FarkY < 0 Then
WriteFloat ReadLong(KO_PTR_CHR) + KO_OFF_Y, CharY - ZýplaY
ElseIf FarkY > 0 Then
WriteFloat ReadLong(KO_PTR_CHR) + KO_OFF_Y, CharY + ZýplaY
End If
Dim RetX As Long, RetY As Long
RetX = CharX
RetY = CharY
Paket "06" & AlignDWORD(CInt(oAnkiX) * 10, 4) & AlignDWORD(CInt(oAnkiY) * 10, 4) & AlignDWORD(CInt(CharZ) * 10, 4) & "2D0003" & AlignDWORD(CInt(RetX) * 10, 4) & AlignDWORD(CInt(RetY) * 10, 4) & AlignDWORD(CInt(CharZ) * 10, 4)
End If
SpeedHack = False
End Function
Public Function Hex2Val(pStrHex As String) As Long
Dim TmpStr As String
Dim TmpHex As String
Dim i As Long
TmpStr = ""
For i = Len(pStrHex) To 1 Step -1
    TmpHex = Hex(Asc(mID(pStrHex, i, 1)))
    If Len(TmpHex) = 1 Then TmpHex = "0" & TmpHex
    TmpStr = TmpStr & TmpHex
Next
Hex2Val = CLng("&H" & TmpStr)
End Function
Function ReadString2(ByVal pAddy As Long, ByVal LSize As Long) As String

    On Error Resume Next
    Dim value As Byte
    Dim tex() As Byte
    If LSize = 0 Then Exit Function

    ReDim tex(1 To LSize)
    ReadProcessMem KO_HANDLE, pAddy, tex(1), LSize, 0&
    ReadString2 = StrConv(tex, vbUnicode)

End Function
Function ReadString(ByVal pAddy As Long, ByVal OtoSize As Boolean, Optional ByVal LSize As Long = 1) As String
Dim value As Byte
Dim tex() As Byte
On Error Resume Next
If OtoSize = True Then
ReadProcessMem KO_HANDLE, pAddy, value, 1, 0&
LSize = value
ReDim tex(1 To LSize)
ReadProcessMem KO_HANDLE, pAddy, tex(1), LSize, 0&
ReadString = StrConv(tex, vbUnicode)
Else
If LSize = 0 Then
Exit Function
Else
ReDim tex(1 To LSize)
ReadProcessMem KO_HANDLE, pAddy, tex(1), LSize, 0&
ReadString = StrConv(tex, vbUnicode)
End If
End If
End Function
Function AlignDWORD(Dec As Long, Optional Length As Long = 8) As String
'Coded By Aktay28
Dim DTH As String ' DecToHex
DTH = Hex(Dec)
Select Case Len(Hex(Dec))
    Case 1
    AlignDWORD = Strings.Left("0" & DTH & "000000", Length)
    Case 2
    AlignDWORD = Strings.Left(DTH & "000000", Length)
    Case 3
    AlignDWORD = Strings.Left(Strings.mID(DTH, 2, 2) & "0" & Strings.Left(DTH, 1) & "0000", Length)
    Case 4
    AlignDWORD = Strings.Left(Strings.mID(DTH, 3, 2) & Strings.Left(DTH, 2) & "0000", Length)
    Case 5
    AlignDWORD = Strings.Left(Strings.mID(DTH, 4, 2) & Strings.mID(DTH, 2, 2) & "0" & Strings.Left(DTH, 1), Length) & "00"
    Case 6
    AlignDWORD = Strings.Left(Strings.mID(DTH, 5, 2) & Strings.mID(DTH, 3, 2) & Strings.Left(DTH, 2) & "00", Length)
    Case 7
    AlignDWORD = Strings.Left(Strings.mID(DTH, 6, 2) & Strings.mID(DTH, 4, 2) & Strings.mID(DTH, 2, 2) & "0" & Strings.Left(DTH, 1), Length)
    Case 8
    AlignDWORD = Strings.Left(Strings.mID(DTH, 7, 2) & Strings.mID(DTH, 5, 2) & Strings.mID(DTH, 3, 2) & Strings.Left(DTH, 2), Length)
End Select
End Function
Function CharName()
If ReadLong(ReadLong(KO_PTR_CHR) + &H698) > 15 Then
CharName = ReadString(ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_NAMEC), ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_NAMEC))
Else
CharName = ReadString(ReadLong(KO_PTR_CHR) + &H688, ReadLong(ReadLong(KO_PTR_CHR) + &H698)) 'KO_OFF_NAME +10
End If
End Function
Function CharName2() As String
If ReadLong(ReadLong(KO_PTR_CHR) + &H698) > 15 Then
CharName2 = ReadString(ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_NAME), ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_NAME + 10))
Else
CharName2 = ReadString(ReadLong(KO_PTR_CHR) + KO_OFF_NAME, ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_NAME + 10))
End If
End Function
Function CharDC()
CharDC = ReadLong(ReadLong(KO_PTR_PKT) + &H40064)
End Function
'Public Function oyunukapa()
'On Error Resume Next
'ret& = TerminateProcess(KO_HANDLE, 0&)
'End Function
Function KanalList()
Dim xCode() As Byte, xStr As String
xStr = "608B0D" + AlignDWORD(KO_OTO_LOGIN_PTR) + "8B89" + AlignDWORD(&H12C) + "68" + AlignDWORD(&HCD) + "BF" + AlignDWORD(KO_OTO_LOGIN_ADR1) + "FFD761C3"
ConvHEX2ByteArray xStr, xCode
AsmKodCalistir xCode
End Function
Function KanalSec(KanalSayi As Long)
KanalSayi = KanalSayi - 1
Dim xCode() As Byte, xStr As String
xStr = "608B0D" + AlignDWORD(KO_OTO_LOGIN_PTR) + "8B89" + AlignDWORD(&H12C) + "6A" + Strings.Left(AlignDWORD(KanalSayi), 2) + "BF" + AlignDWORD(KO_OTO_LOGIN_ADR2) + "FFD761C3"
ConvHEX2ByteArray xStr, xCode
AsmKodCalistir xCode
End Function
Function ServerSec(ServerSayi As Long)
ServerSayi = ServerSayi - 1
Dim xCode() As Byte, xStr As String
xStr = "608B0D" + AlignDWORD(KO_OTO_LOGIN_PTR) + "8B89" + AlignDWORD(&H12C) + "BF" + AlignDWORD(KO_OTO_LOGIN_ADR3) + "FFD731C931FF" + "8B0D" + AlignDWORD(KO_OTO_LOGIN_PTR) + "8B89" + AlignDWORD(&H12C) + "6A" + Strings.Left(AlignDWORD(ServerSayi), 2) + "BF" + AlignDWORD(KO_OTO_LOGIN_ADR4) + "FFD761C3"
ConvHEX2ByteArray xStr, xCode
AsmKodCalistir xCode
End Function
Function KarakterDC(s As Integer)
KarakterDC = ReadLong(ReadLong(KO_PTR_PKT, s) + &H4004C, s)
End Function

Function CharHP()
CharHP = ReadLong(KO_ADR_CHR + KO_OFF_HP)
End Function
Function CharMP()
CharMP = ReadLong(KO_ADR_CHR + KO_OFF_MP)
End Function
Function CharMaxHP()
CharMaxHP = ReadLong(KO_ADR_CHR + KO_OFF_MAXHP)
End Function
Function MobID3()
MobID = Strings.mID(AlignDWORD(ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_MOB)), 1, 4)
End Function
Function MobID()
Dim pPtr As Long
Dim GetMobID As String
Dim GetMBID As Long
pPtr = ReadLong(KO_PTR_CHR)
GetMBID = ReadLong(pPtr + KO_OFF_MOB)
GetMobID = AlignDWORD(GetMBID)
MobID = Strings.mID(GetMobID, 1, 4)
End Function
Function MobID2()
Dim pPtr As Long
Dim GetMobID As String
Dim GetMBID As Long
pPtr = ReadLong(KO_PTR_CHR)
GetMBID = ReadLong(pPtr + KO_OFF_MOB)
GetMobID = AlignDWORD(GetMBID)
MobID2 = Strings.mID(GetMobID, 1, 4)
End Function

Function MobLID()
MobLID = ReadLong(KO_ADR_CHR + KO_OFF_MOB)
End Function
Public Function Pause(ByVal delay As Single)
delay = Timer + delay
  Do
  DoEvents ' olaylarý iþleme
  Sleep 1 ' CPU yememesi için
  Loop While delay > Timer
End Function

Function InventoryIDAra(ItemID As String) As Long
InventoryOku
Dim i As Integer, A As Long
For i = 15 To 42
A = InStr(1, Right(ItemIntID(i), 1), ItemID, vbTextCompare)
If A <> 0 Then
InventoryIDAra = i
Exit Function
Else
InventoryIDAra = 0
End If
Next
End Function


Function BankaBoþAra(ItemID As String) As Long
Dim i As Integer, A As Long
For i = 0 To 190
A = BankItemID(i)
If A <> 0 Then
BankaBoþAra = i
Exit Function
Else
BankaBoþAra = 0
End If
Next
End Function
Public Function HexItemID(ByVal Slot As Integer) As String
        Dim offset, X, offset3, offset4 As Long
        Dim Base, Sonuc As Long
        offset = ReadLong(KO_ADR_DLG + &H1B8)
        offset = ReadLong(offset + (&H210 + (4 * Slot))) 'inventory slot
          'item id adress
        
        Sonuc = ReadLong(ReadLong(offset + &H68)) + ReadLong(ReadLong(offset + &H6C))
        HexItemID = Strings.mID(AlignDWORD(Sonuc), 1, 8)
End Function
Public Function LongItemID(ByVal Slot As Integer) As Long
        Dim offset, X, offset3, offset4 As Long
        Dim Base, Sonuc As Long
        offset = ReadLong(KO_ADR_DLG + &H1B8)
        offset = ReadLong(offset + (&H210 + (4 * Slot))) 'inventory slot
          'item id adress
        
        LongItemID = ReadLong(ReadLong(offset + &H68)) + ReadLong(ReadLong(offset + &H6C))
        
End Function
Function GetItemCountInInv(ByVal Slot As Integer) As Long
        Dim offset, Offset2 As Long
        offset = ReadLong(KO_ADR_DLG + &H1B8)
        offset = ReadLong(offset + (&H210 + (4 * Slot)))
        Offset2 = ReadLong(offset + &H70)
        GetItemCountInInv = Offset2
End Function
Function GetItemCount() As Integer
        Dim ItemIDAdr As Long
        Dim ItemCount As Integer
        ItemCount = 0
        Dim n As Integer
        For n = 14 To 41
            ItemIDAdr = ReadLong(KO_ADR_DLG + &H1B8)
            ItemIDAdr = ReadLong(ItemIDAdr + (&H210 + (4 * (n))))
            ItemIDAdr = ReadLong(ItemIDAdr + &H68)
            ItemIDAdr = ReadLong(ItemIDAdr)
            If ItemIDAdr > 0 Then
                ItemCount = ItemCount + 1
            End If
        Next
        GetItemCount = ItemCount
    End Function
Function SCKontrol() As Boolean
If GetItemCountInInv(41) <= 26 Then
SCKontrol = False
Else
SCKontrol = True
End If
End Function

Function GetBase(BaseMobID As Long) As Long
Dim xCode() As Byte, xStr As String
If ByteMob_Base = 0 Then
ByteMob_Base = VirtualAllocEx(KO_HANDLE, 0, 1024, MEM_COMMIT, PAGE_READWRITE)
End If
If ByteMob_Base <> 0 Then
If BaseMobID > 9999 Then
xStr = "608B0D" & AlignDWORD(KO_FLDB) & "6A01" & "68" & AlignDWORD(BaseMobID) & "BF" & AlignDWORD(KO_FMBS) & "FFD7" & "A3" & AlignDWORD(ByteMob_Base) & "61C3"
Else
xStr = "608B0D" & AlignDWORD(KO_FLDB) & "6A01" & "68" & AlignDWORD(BaseMobID) & "BF" & AlignDWORD(KO_FPBS) & "FFD7" & "A3" & AlignDWORD(ByteMob_Base) & "61C3"
End If
Hex2Byte xStr, xCode
ExecuteRemoteCode xCode, True
GetBase = ReadLong(ByteMob_Base)
End If
End Function


Function OkuIDSName(OkuNameID As Long)
If ReadLong(GetBase(OkuNameID) + KO_OFF_NAMEC) >= 15 Then
OkuIDSName = ReadString(ReadLong(GetBase(OkuNameID) + KO_OFF_NAME), False, ReadLong(GetBase(OkuNameID) + KO_OFF_NAMEC))
Else
OkuIDSName = ReadString(GetBase(OkuNameID) + KO_OFF_NAME, False, ReadLong(GetBase(OkuNameID) + KO_OFF_NAMEC))
End If
End Function

Public Function ListeAra(Aranan As String, Liste) As Boolean
Dim i As Long
For i = 0 To Liste.ListCount
If Liste.List(i) = Aranan Then ListeAra = True: Exit For Else: ListeAra = False
Next: End Function

Public Function AraText(Kelime, Cümle) As Boolean
Dim i As Long, Aranan As String
For i = 1 To Len(Cümle): Aranan = mID(Cümle, i, Len(Kelime))
If Aranan = Kelime Then AraText = True: Exit For Else: AraText = False
Next
End Function
Function GetTargetable(Base As Long) As Boolean
    Dim pCode() As Byte, pStr As String

    If FuncPtr <> 0 Then
        pStr = "608B0D" & AlignDWORD(KO_PTR_CHR) & _
            "68" & AlignDWORD(Base) & _
            "B8" & AlignDWORD(KO_FNC_ISEN) & _
            "FFD0A2" & AlignDWORD(FuncPtr) & _
            "61C3"
        Hex2Byte pStr, pCode
        
       ' ExecuteRemoteCode pCode, True
        GetTargetable = True 'ReadByte(FuncPtr)
    End If
End Function
Function GetZMob()
On Error Resume Next
Dim lastDist As Long, currDist As Long, lastID As Long, lastBase As Long, LastMoBID As Long, tekrar As Long
Dim EBP As Long, FEnd As Long, ESI As Long, EAX As Long, mob_addr As Long
lastDist = 100
zMobName = ""
zMobID = 0
zMobX = 0
zMobY = 0
zMobZ = 0
zMobDistance = 0
EBP = ReadLong(ReadLong(KO_FLDB) + &H34)
FEnd = ReadLong(ReadLong(EBP + 4) + 4)
ESI = ReadLong(EBP)
While ESI <> EBP
mob_addr = ReadLong(ESI + &H10)
If mob_addr = 0 Then Exit Function
tekrar = tekrar + 1
If tekrar > 1000 Then Exit Function
 If ReadLong(mob_addr + KO_OFF_NT) = 0 And ByteOku(mob_addr + &H2A4) = 0 And GetTargetable(mob_addr) = True Then
    currDist = NewKordinatUzaklýk(ReadFloat(mob_addr + KO_OFF_X), ReadFloat(mob_addr + KO_OFF_Y))
        If currDist < lastDist Then
        lastID = ReadLong(mob_addr + KO_OFF_ID)
        lastBase = mob_addr
        lastDist = currDist
        End If
    End If
EAX = ReadLong(ESI + 8)
    If ReadLong(ESI + 8) <> FEnd Then
        While ReadLong(EAX) <> FEnd
        tekrar = tekrar + 1
        If tekrar > 1000 Then Exit Function
        EAX = ReadLong(EAX)
        Wend
    ESI = EAX
    Else
    EAX = ReadLong(ESI + 4)
        While ESI = ReadLong(EAX + 8)
        tekrar = tekrar + 1
        If tekrar > 1000 Then Exit Function
        ESI = EAX
        EAX = ReadLong(EAX + 4)
        Wend
        If ReadLong(ESI + 8) <> EAX Then
        ESI = EAX
        End If
    End If
Wend
zMobName = ReadString(ReadLong(lastBase + KO_OFF_NAME), ReadLong(lastBase + KO_OFF_NAME + 4))
zMobID = lastID
zMobX = ReadFloat(lastBase + KO_OFF_X)
zMobY = ReadFloat(lastBase + KO_OFF_Y)
zMobZ = ReadFloat(lastBase + KO_OFF_Z)
zMobDistance = lastDist
End Function




Function BankItemName(ByVal Slot As Integer) As String
        Dim A, b, c, L, Adr As Long
        A = ReadLong(KO_ADR_DLG + 516)
        b = ReadLong(A + 296 + (4 * Slot))
        c = ReadLong(b + &H68)
        L = ReadLong(c + &H1C)
        If L > 15 Then
          Adr = ReadLong(c + &HC)
          Else
          Adr = c + &HC
          End If
          BankItemName = ""
          If L > 0 Then
              BankItemName = ReadString(Adr, L)
         End If
End Function
Function BankItemID(ByVal Slot As Integer) As Long
        Dim A, b, c As Long
        A = ReadLong(KO_ADR_DLG + 516)
        b = ReadLong(A + 296 + (4 * Slot))
        c = ReadLong(b + &H68)
        If c <> 0 Then
        BankItemID = c
        Else
        BankItemID = 0
        End If
End Function



Public Function HexBankItemID(ByVal Slot As Integer) As String
        Dim offset, X, offset3, offset4 As Long
        Dim Base, Sonuc As Long
        offset = ReadLong(KO_ADR_DLG + 516)
        offset = ReadLong(offset + 296 + (4 * Slot))  'inventory slot
        
        Sonuc = ReadLong(ReadLong(offset + &H68)) + ReadLong(ReadLong(offset + &H6C))
        HexBankItemID = Strings.mID(AlignDWORD(Sonuc), 1, 8)
    End Function


Function FormatHex(strHex As String, inLength As Integer)
On Error Resume Next
Dim newHex As String
newHex = String(inLength - Len(strHex), "0") + strHex
Select Case Len(newHex)
Case 2
newHex = Left(newHex, 2)
Case 4
newHex = Right(newHex, 2) & Left(newHex, 2)
Case 6
newHex = Right(newHex, 2) & mID(newHex, 3, 2) & Left(newHex, 2)
Case 8
newHex = Right(newHex, 2) & mID(newHex, 5, 2) & mID(newHex, 3, 2) & Left(newHex, 2)
Case Else
End Select
FormatHex = newHex
End Function

Function KarakterID()
KarakterID = Strings.mID(AlignDWORD(LongOku(LongOku(KO_PTR_CHR) + KO_OFF_ID)), 1, 4)
End Function

Function DüþmanId()
DüþmanId = Strings.mID(AlignDWORD(LongOku(LongOku(KO_PTR_CHR) + KO_OFF_MOB)), 1, 4)
End Function
Public Sub WarriorAtak(UserID As Long, SkillNo As Long)
On Error Resume Next
Dim SkillID As String
SkillID = Strings.mID(AlignDWORD(ClassOku & Right(SkillNo, 3)), 1, 6)
Paket "3103" + SkillID + "00" + CharId + DüþmanId + "0100010000000000000000000000"
If Form1.warcheck.value = 1 And MobUzaklýK <= 7 Then
kUzaklýk = 7: Paket "080101" + DüþmanId + "FF000000"
End If
End Sub
Function CharSkill1() As Long
CharSkill1 = ReadLong(ReadLong(ReadLong(KO_PTR_DLG) + &H1EC) + &H180)
End Function
Function CharSkill2() As Long
CharSkill2 = ReadLong(ReadLong(ReadLong(KO_PTR_DLG) + &H1EC) + &H184)
End Function

Function CharSkill3() As Long
CharSkill3 = ReadLong(ReadLong(ReadLong(KO_PTR_DLG) + &H1EC) + &H188)
End Function

Function CharSkill4() As Long
CharSkill4 = ReadLong(ReadLong(ReadLong(KO_PTR_DLG) + &H1EC) + &H18C)
End Function


Function NewKordinatUzaklýk(Target_X As Long, Target_Y As Long) As Long
NewKordinatUzaklýk = Sqr((Target_X - CharX) ^ 2 + (Target_Y - CharY) ^ 2)
End Function

Function KordinatUzaklýk(Target_X As Long, Target_Y As Long)
KordinatUzaklýk = Fix((((Target_X - ReadFloat(ReadLong(KO_PTR_CHR) + KO_OFF_X)) * (Target_X - ReadFloat(ReadLong(KO_PTR_CHR) + KO_OFF_X)) + (Target_Y - ReadFloat(ReadLong(KO_PTR_CHR) + KO_OFF_Y)) * (Target_Y - ReadFloat(ReadLong(KO_PTR_CHR) + KO_OFF_Y))) ^ 0.5) / 4)
End Function

Function KordinatArasýFark(X_Bir As Long, Y_Bir As Long, X_Iki As Long, Y_Iki As Long) As Long
KordinatArasýFark = Sqr((X_Bir - X_Iki) ^ 2 + (Y_Bir - Y_Iki) ^ 2)
End Function
Public Sub StrokeAtak(UserID As Long)
On Error Resume Next
Dim SkillID As String
SkillID = Strings.mID(AlignDWORD(ClassOku & "001"), 1, 6)
Paket "3103" + SkillID + "00" + CharId + DüþmanId + "0100010000000000000000000000"
If Form1.warcheck.value = 1 And MobUzaklýK <= 7 Then
kUzaklýk = 7: Paket "080101" + DüþmanId + "FF000000"
End If
End Sub
Function WarriorAtakVur()
'On Error Resume Next
Dim SkillSeç As String
Dim SkillID As String
Dim SkillID2 As String
Dim SkillID3 As String
Dim UserID As Long
Dim SkillNo As Long


If DüþmanId = "FFFF" Then
Else

If Form1.WarList.Text = "Stroke" Then
SkillSeç = "001"
End If
If Form1.WarList.Text = "Slash" Then
SkillSeç = "003"
End If
If Form1.WarList.Text = "Crash" Then
SkillSeç = "005"
End If
If Form1.WarList.Text = "Piercing" Then
SkillSeç = "009"
End If
If Form1.WarList.Text = "Hash" Then
SkillSeç = "500"
End If
If Form1.WarList.Text = "Hoodwink" Then
SkillSeç = "505"
End If
If Form1.WarList.Text = "Shear" Then
SkillSeç = "510"
End If
If Form1.WarList.Text = "Pierce" Then
SkillSeç = "515"
End If
If Form1.WarList.Text = "Leg Cutting" Then
SkillSeç = "520"
End If
If Form1.WarList.Text = "Carving" Then
SkillSeç = "525"
End If
If Form1.WarList.Text = "Sever" Then
SkillSeç = "530"
End If
If Form1.WarList.Text = "Prick" Then
SkillSeç = "535"
End If
If Form1.WarList.Text = "Multiple Shork" Then
SkillSeç = "540"
End If
If Form1.WarList.Text = "Cleave" Then
SkillSeç = "545"
End If
If Form1.WarList.Text = "Mangling" Then
SkillSeç = "550"
End If
If Form1.WarList.Text = "Thrust" Then
SkillSeç = "555"
End If
If Form1.WarList.Text = "Sword Aura" Then
SkillSeç = "557"
End If
If Form1.WarList.Text = "Sword Dancing" Then
SkillSeç = "560"
End If
If Form1.WarList.Text = "Howling Sword" Then
SkillSeç = "570"
End If
If Form1.WarList.Text = "Blooding" Then
SkillSeç = "575"
End If
If Form1.WarList.Text = "Hellblade" Then
SkillSeç = "580"
End If

SkillID = Strings.mID(AlignDWORD(ClassOku & SkillSeç), 1, 6)

If SkillSeç = "001" Then
Paket "3103" + SkillID + "00" + CharId + DüþmanId + "0100010000000000000000000000"
If Form1.warcheck.value = 1 And MobUzaklýK <= 7 Then
kUzaklýk = 7: Paket "080101" + DüþmanId + "FF000000"
End If
End If

If SkillSeç = "003" Then
Pause 3.3
Paket "3103" + SkillID + "00" + KarakterID + DüþmanId + "0100010000000000000000000000000000000000"


If Form1.warcheck.value = 1 And MobUzaklýK <= 7 Then
kUzaklýk = 7: Paket "080101" + DüþmanId + "FF000000"
End If
End If

If SkillSeç = "005" Then
Pause 3.3
Paket "3103" + SkillID + "00" + KarakterID + DüþmanId + "0100010000000000000000000000000000000000"


If Form1.warcheck.value = 1 And MobUzaklýK <= 7 Then
kUzaklýk = 7: Paket "080101" + DüþmanId + "FF000000"
End If
End If


If SkillSeç = "009" Then
Pause 3.3
Paket "3103" + SkillID + "00" + KarakterID + DüþmanId + "0100010000000000000000000000000000000000"


If Form1.warcheck.value = 1 And MobUzaklýK <= 7 Then
kUzaklýk = 7: Paket "080101" + DüþmanId + "FF000000"
End If
End If

If SkillSeç = "500" Then
Pause 0.18
Paket "3103" + SkillID + "00" + KarakterID + DüþmanId + "0100010000000000000000000000000000000000"
Paket "3101" + SkillID + "00" + KarakterID + DüþmanId + "0100010000000000000000000000"
Paket "3102" + SkillID + "00" + KarakterID + DüþmanId + "0D020600B7019BFF0000F0000F00"
Paket "3103" + SkillID + "00" + KarakterID + DüþmanId + "0D020600B7019BFF0000F0000F00"
If Form1.warcheck.value = 1 And MobUzaklýK <= 7 Then
kUzaklýk = 7: Paket "080101" + DüþmanId + "FF000000"
End If
End If
If SkillSeç = "505" Then
Paket "3103" + SkillID + "00" + KarakterID + DüþmanId + "0100010000000000000000000000000000000000"

If Form1.warcheck.value = 1 And MobUzaklýK <= 7 Then
kUzaklýk = 7: Paket "080101" + DüþmanId + "FF000000"
End If
End If
If SkillSeç = "510" Then
Paket "3103" + SkillID + "00" + KarakterID + DüþmanId + "0100010000000000000000000000000000000000"

If Form1.warcheck.value = 1 And MobUzaklýK <= 7 Then
kUzaklýk = 7: Paket "080101" + DüþmanId + "FF000000"
End If
End If
If SkillSeç = "515" Then
Paket "3103" + SkillID + "00" + KarakterID + DüþmanId + "0100010000000000000000000000000000000000"

If Form1.warcheck.value = 1 And MobUzaklýK <= 7 Then
kUzaklýk = 7: Paket "080101" + DüþmanId + "FF000000"
End If
End If
If SkillSeç = "520" Then
Paket "3103" + SkillID + "00" + KarakterID + DüþmanId + "0100010000000000000000000000000000000000"

If Form1.warcheck.value = 1 And MobUzaklýK <= 7 Then
kUzaklýk = 7: Paket "080101" + DüþmanId + "FF000000"
End If
End If
If SkillSeç = "525" Then
Paket "3103" + SkillID + "00" + KarakterID + DüþmanId + "0100010000000000000000000000000000000000"
Paket "3101" + SkillID + "00" + KarakterID + DüþmanId + "0100010000000000000000000000"
Paket "3102" + SkillID + "00" + KarakterID + DüþmanId + "0D020600B7019BFF0000F0000F00"
Paket "3103" + SkillID + "00" + KarakterID + DüþmanId + "0D020600B7019BFF0000F0000F00"
If Form1.warcheck.value = 1 And MobUzaklýK <= 7 Then
kUzaklýk = 7: Paket "080101" + DüþmanId + "FF000000"
End If
End If
If SkillSeç = "530" Then
Paket "3103" + SkillID + "00" + KarakterID + DüþmanId + "0100010000000000000000000000000000000000"

If Form1.warcheck.value = 1 And MobUzaklýK <= 7 Then
kUzaklýk = 7: Paket "080101" + DüþmanId + "FF000000"
End If
End If
If SkillSeç = "535" Then
Paket "3103" + SkillID + "00" + KarakterID + DüþmanId + "0100010000000000000000000000000000000000"

If Form1.warcheck.value = 1 And MobUzaklýK <= 7 Then
kUzaklýk = 7: Paket "080101" + DüþmanId + "FF000000"
End If
End If
If SkillSeç = "540" Then
Paket "3103" + SkillID + "00" + KarakterID + DüþmanId + "0100010000000000000000000000000000000000"

If Form1.warcheck.value = 1 And MobUzaklýK <= 7 Then
kUzaklýk = 7: Paket "080101" + DüþmanId + "FF000000"
End If
End If
If SkillSeç = "545" Then
Paket "3103" + SkillID + "00" + KarakterID + DüþmanId + "0100010000000000000000000000000000000000"

If Form1.warcheck.value = 1 And MobUzaklýK <= 7 Then
kUzaklýk = 7: Paket "080101" + DüþmanId + "FF000000"
End If
End If
If SkillSeç = "550" Then
Paket "3103" + SkillID + "00" + KarakterID + DüþmanId + "0100010000000000000000000000000000000000"

If Form1.warcheck.value = 1 And MobUzaklýK <= 7 Then
kUzaklýk = 7: Paket "080101" + DüþmanId + "FF000000"
End If
End If
If SkillSeç = "555" Then
Paket "3103" + SkillID + "00" + KarakterID + DüþmanId + "0100010000000000000000000000000000000000"

If Form1.warcheck.value = 1 And MobUzaklýK <= 7 Then
kUzaklýk = 7: Paket "080101" + DüþmanId + "FF000000"
End If
End If
If SkillSeç = "557" Then
Paket "3103" + SkillID + "00" + KarakterID + DüþmanId + "0100010000000000000000000000000000000000"

If Form1.warcheck.value = 1 And MobUzaklýK <= 7 Then
kUzaklýk = 7: Paket "080101" + DüþmanId + "FF000000"
End If
End If
If SkillSeç = "560" Then
Paket "3103" + SkillID + "00" + KarakterID + DüþmanId + "0100010000000000000000000000000000000000"

If Form1.warcheck.value = 1 And MobUzaklýK <= 7 Then
kUzaklýk = 7: Paket "080101" + DüþmanId + "FF000000"
End If
End If
If SkillSeç = "570" Then
Paket "3103" + SkillID + "00" + KarakterID + DüþmanId + "0100010000000000000000000000000000000000"

If Form1.warcheck.value = 1 And MobUzaklýK <= 7 Then
kUzaklýk = 7: Paket "080101" + DüþmanId + "FF000000"
End If
End If
If SkillSeç = "575" Then
Paket "3103" + SkillID + "00" + KarakterID + DüþmanId + "0100010000000000000000000000000000000000"

If Form1.warcheck.value = 1 And MobUzaklýK <= 7 Then
kUzaklýk = 7: Paket "080101" + DüþmanId + "FF000000"
End If
End If
If SkillSeç = "580" Then
Paket "3103" + SkillID + "00" + KarakterID + DüþmanId + "0100010000000000000000000000000000000000"

If Form1.warcheck.value = 1 And MobUzaklýK <= 7 Then
kUzaklýk = 7: Paket "080101" + DüþmanId + "FF000000"
End If
End If
End If
End Function
Function PriestAtakVur()
Dim SkillSeç As String
Dim SkillID As String
Dim SkillID2 As String
Dim SkillID3 As String
Dim UserID As Long
If DüþmanId = "FFFF" Then
Else
If Form1.PriList.Text = "Stroke" Then
SkillSeç = "001"
End If
If Form1.PriList.Text = "Harsh" Then
SkillSeç = "641"
End If

SkillID = Strings.mID(AlignDWORD(SýnýfBul & SkillSeç), 1, 6)
SkillID2 = Strings.mID(AlignDWORD("211" & "620"), 1, 6)
SkillID3 = Strings.mID(AlignDWORD("211" & "520"), 1, 6)

If SkillSeç = "641" Then
Paket "3103" + SkillID + "00" + KarakterID + DüþmanId + "030003" 'Harsh
Pause 0.35
Paket "080101" + DüþmanId + "FF000000" 'R attack
Pause 0.45
Paket "3103" + SkillID2 + "00" + KarakterID + DüþmanId + "030003" 'Wield
Pause 0.45
Paket "080101" + DüþmanId + "FF000000" 'R attack
Pause 0.45
Paket "3103" + SkillID3 + "00" + KarakterID + DüþmanId + "040003" 'Wrath

End If
If SkillSeç = "001" Then
Paket "3101" + SkillID + "00" + KarakterID + DüþmanId + "0100010000000000000000000000"
End If
End If
kUzaklýk = 7: Paket "080101" + FormatHex(Hex(UserID), 4) + "FF000000"
End Function
Function AsasAtak()
If VampiricTime <= 0 And CharSkill2 >= "50" And MobUzaklýK <= 14 And CharMP >= "50" And Form1.asaslist.Selected(10) = True Then VampiricTime = 61: kUzaklýk = 14: AsasSkill zMobID, Form1.asaslist.ItemData(10): Exit Function
If BloodTime <= 0 And CharSkill2 >= "10" And MobUzaklýK <= 14 And CharMP >= "20" And Form1.asaslist.Selected(4) = True Then BloodTime = 61: kUzaklýk = 14: AsasSkill zMobID, Form1.asaslist.ItemData(4): Exit Function
If IllusionTime <= 0 And CharSkill2 >= "30" And MobUzaklýK <= 14 And CharMP >= "30" And Form1.asaslist.Selected(7) = True Then IllusionTime = 11: kUzaklýk = 14: AsasSkill zMobID, Form1.asaslist.ItemData(7): Exit Function
If CriticalTime <= 0 And CharSkill2 >= "80" And MobUzaklýK <= 14 And CharMP >= "200" And Form1.asaslist.Selected(15) = True Then CriticalTime = 61: kUzaklýk = 14: AsasSkill zMobID, Form1.asaslist.ItemData(15): Exit Function
If BeastTime <= 0 And CharSkill2 >= "75" And MobUzaklýK <= 14 And CharMP >= "250" And Form1.asaslist.Selected(14) = True Then BeastTime = 41: kUzaklýk = 14: AsasSkill zMobID, Form1.asaslist.ItemData(14): Exit Function
If BlindingTime <= 0 And CharSkill2 >= "72" And MobUzaklýK <= 14 And CharMP >= "200" And Form1.asaslist.Selected(13) = True Then BlindingTime = 61: kUzaklýk = 14: AsasSkill zMobID, Form1.asaslist.ItemData(13): Exit Function
If BloodyTime <= 0 And CharSkill2 >= "70" And MobUzaklýK <= 14 And CharMP >= "100" And Form1.asaslist.Selected(12) = True Then BloodyTime = 6: kUzaklýk = 14: AsasSkill zMobID, Form1.asaslist.ItemData(12): Exit Function
If SpikeTime <= 0 And CharSkill2 >= "55" And MobUzaklýK <= 14 And CharMP >= "100" And Form1.asaslist.Selected(11) = True Then SpikeTime = 12: kUzaklýk = 14: AsasSkill zMobID, Form1.asaslist.ItemData(11): Exit Function
If CutTime <= 0 And CharSkill2 >= "40" And MobUzaklýK <= 14 And CharMP >= "50" And Form1.asaslist.Selected(9) = True Then CutTime = 6: kUzaklýk = 14: AsasSkill zMobID, Form1.asaslist.ItemData(9): Exit Function
If ThrustTime <= 0 And CharSkill2 >= "35" And MobUzaklýK <= 14 And CharMP >= "50" And Form1.asaslist.Selected(8) = True Then ThrustTime = 11: kUzaklýk = 14: AsasSkill zMobID, Form1.asaslist.ItemData(8): Exit Function
If ShockTime <= 0 And CharSkill2 >= "20" And MobUzaklýK <= 14 And CharMP >= "20" And Form1.asaslist.Selected(6) = True Then ShockTime = 6: kUzaklýk = 14: AsasSkill zMobID, Form1.asaslist.ItemData(6): Exit Function
If PierceTime <= 0 And CharSkill2 >= "15" And MobUzaklýK <= 14 And CharMP >= "20" And Form1.asaslist.Selected(5) = True Then PierceTime = 11: kUzaklýk = 14: AsasSkill zMobID, Form1.asaslist.ItemData(5): Exit Function
If JabTime <= 0 And CharMP >= "10" And MobUzaklýK <= 14 And Form1.asaslist.Selected(3) = True Then JabTime = 6: kUzaklýk = 14: AsasSkill zMobID, Form1.asaslist.ItemData(3): Exit Function
If Stab2Time <= 0 And CharMP >= "5" And MobUzaklýK <= 14 And Form1.asaslist.Selected(2) = True Then Stab2Time = 6: kUzaklýk = 14: AsasSkill zMobID, Form1.asaslist.ItemData(2): Exit Function
If StabTime <= 0 And CharMP >= "5" And MobUzaklýK <= 14 And Form1.asaslist.Selected(1) = True Then StabTime = 6: kUzaklýk = 14: AsasSkill zMobID, Form1.asaslist.ItemData(1): Exit Function
If Form1.asaslist.Selected(0) = True And CharMP >= "2" And MobUzaklýK <= 14 Then kUzaklýk = 14: StrokeAtak zMobID: Exit Function
If Form1.Check5.value = 1 And MobUzaklýK <= 7 Then
kUzaklýk = 7: Paket "080101" + FormatHex(Hex(zMobID), 4) + "FF000000"
End If
End Function
Function AsasSkill(UserID As Long, SkillNo As Long)
On Error Resume Next
If SkillNo = "1610" Or SkillNo = "1650" Then 'Yüzde ise
Paket "3101" + Strings.mID(AlignDWORD(ClassOku & Right(SkillNo, 3)), 1, 6) + "00" + CharId + FormatHex(Hex(UserID), 4) + FormatHex(Hex(zMobID), 4) + "0000000000000000000000001000"
Paket "3103" + Strings.mID(AlignDWORD(ClassOku & Right(SkillNo, 3)), 1, 6) + "00" + CharId + FormatHex(Hex(UserID), 4) + FormatHex(Hex(zMobID), 4) + "000000000000000000000000"
Else
Paket "3103" + Strings.mID(AlignDWORD(ClassOku & Right(SkillNo, 3)), 1, 6) + "00" + CharId + FormatHex(Hex(UserID), 4) + FormatHex(Hex(zMobID), 4) + "0100010000000000000000000000"
If Form1.warcheck.value = 1 And MobUzaklýK <= 7 Then
kUzaklýk = 7: Paket "080101" + FormatHex(Hex(UserID), 4) + FormatHex(Hex(zMobID), 4) + "FF000000"
End If
End If
End Function
Public Sub RogueAtak()
Dim SkillSeç As String
Dim SkillID As String
If DüþmanId = "FFFF" Then
Else
If Form1.List3.Text = "Archery" Then
SkillSeç = "003"
End If
If Form1.List3.Text = "Through Shot" Then
SkillSeç = "500"
End If
If Form1.List3.Text = "Fire Arrow" Then
SkillSeç = "505"
End If
If Form1.List3.Text = "Poison Arrow" Then
SkillSeç = "510"
End If
If Form1.List3.Text = "Multiple Shot" Then
SkillSeç = "515"
End If
If Form1.List3.Text = "Guided Arrow" Then
SkillSeç = "520"
End If
If Form1.List3.Text = "Perfect Shot" Then
SkillSeç = "525"
End If
If Form1.List3.Text = "Fire Shot" Then
SkillSeç = "530"
End If
If Form1.List3.Text = "Poison Shot" Then
SkillSeç = "535"
End If
If Form1.List3.Text = "Arc Shot" Then
SkillSeç = "540"
End If
If Form1.List3.Text = "Explosive Shot" Then
SkillSeç = "545"
End If
If Form1.List3.Text = "Viper" Then
SkillSeç = "550"
End If
If Form1.List3.Text = "Counter Strike" Then
SkillSeç = "552"
End If
If Form1.List3.Text = "Arrow Shower" Then
SkillSeç = "555"
End If
If Form1.List3.Text = "Shadow Shot" Then
SkillSeç = "557"
End If
If Form1.List3.Text = "Shadow Hunter" Then
SkillSeç = "560"
End If
If Form1.List3.Text = "Ice Shot" Then
SkillSeç = "562"
End If
If Form1.List3.Text = "Lightning Shot" Then
SkillSeç = "566"
End If
If Form1.List3.Text = "Dark Pursuer" Then
SkillSeç = "570"
End If
If Form1.List3.Text = "Blow Arrow" Then
SkillSeç = "572"
End If
If Form1.List3.Text = "Blinding Strafe" Then
SkillSeç = "580"
End If
If Form1.List3.Text = "Power Shot" Then
SkillSeç = "585"
End If

SkillID = Strings.mID(AlignDWORD(SýnýfBul & SkillSeç), 1, 6)
'Paket "3101" & SkillID & "00" & CharID & MobID & "0000000000000000000000000D00"
'Paket "3102" & SkillID & "00" & CharID & MobID & "000000000000010000000000"
'Paket "3103" & SkillID & "00" & CharID & MobID & "0000000000000100000000000000"
If SkillSeç = "003" Then
Paket "3101" + SkillID + "00" + KarakterID + DüþmanId + "00000000000000000000000000000D00"
Pause 0.18
Paket "3102" + SkillID + "00" + KarakterID + DüþmanId + "000000000000000000000000"
Pause 0.18
Paket "3103" + SkillID + "00" + KarakterID + DüþmanId + "00000000000000000000000000000000"
End If

'Multiple
If SkillSeç = "515" Then

Paket "3101" + SkillID + "00" + CharId + MobID + "0000000000000000000000000D00"
Paket "3102" + SkillID + "00" + CharId + MobID + "0D020600B7019BFF0000F0000F00"
Paket "3103" + SkillID + "00" + CharId + MobID + "0000000000000400000000000000"
Paket "3103" + SkillID + "00" + CharId + MobID + "0000000000000400000000000000"
Paket "3103" + SkillID + "00" + CharId + MobID + "0000000000000500000000000000"
End If

If SkillSeç = "555" Then
Paket "3101" + SkillID + "00" + KarakterID + DüþmanId + "00000000000000000000000000000F00"
Paket "3102" + SkillID + "00" + KarakterID + DüþmanId + "000000000000010000000000"
Paket "3103" + SkillID + "00" + KarakterID + DüþmanId + "00000000000001000000000000000000"
Paket "3104" + SkillID + "00" + KarakterID + DüþmanId + "0000000000009BFF0100000000000000"
Bekle (50)
Paket "3103" + SkillID + "00" + KarakterID + DüþmanId + "00000000000002000000000000000000"
Paket "3104" + SkillID + "00" + KarakterID + DüþmanId + "0000000000009BFF0200000000000000"
Paket "3103" + SkillID + "00" + KarakterID + DüþmanId + "00000000000003000000000000000000"
Paket "3104" + SkillID + "00" + KarakterID + DüþmanId + "0000000000009BFF0300000000000000"
Paket "3103" + SkillID + "00" + KarakterID + DüþmanId + "00000000000004000000000000000000"
Paket "3104" + SkillID + "00" + KarakterID + DüþmanId + "0000000000009BFF0400000000000000"
Paket "3103" + SkillID + "00" + KarakterID + DüþmanId + "00000000000005000000000000000000"
Paket "3104" + SkillID + "00" + KarakterID + DüþmanId + "0000000000009BFF0500000000000000"

Else
Paket "3101" + SkillID + "00" + KarakterID + DüþmanId + "00000000000000000000000000000D00"
Paket "3102" + SkillID + "00" + KarakterID + DüþmanId + "000000000000000000000000"
Paket "3103" + SkillID + "00" + KarakterID + DüþmanId + "00000000000000000000000000000000"
Paket "3104" + SkillID + "00" + KarakterID + DüþmanId + "0000000000000000"
' (30)
'Paket "3103" & SkillID & "00" & KarakterID & MobID & "0000000000001500000000000000"
' (30)
'Paket "3103" & SkillID & "00" & KarakterID & MobID & "0000000000001500000000000000"
' (30)
'Paket "3103" & SkillID & "00" & KarakterID & MobID & "0000000000001600000000000000"
' (30)
'Paket "3103" & SkillID & "00" & KarakterID & MobID & "0000000000001700000000000000"
' (30)
'Paket "3103" & SkillID & "00" & KarakterID & MobID & "0000000000001800000000000000"
End If
End If
End Sub

Public Sub Bekle(seconds As Integer, Optional sn As Boolean = False)
On Error Resume Next
Dim dTimer As Double
If sn = True Then
        dTimer = Second(Time)
          Do Until dTimer = Second(Time) - seconds
Sleep (1)
         DoEvents
          Loop
Else
            
            Dim dTimer2 As Double
          dTimer2 = Timer
          Do While Timer < dTimer2 + seconds / 1000
Sleep (1)
         DoEvents
          Loop
End If
End Sub
Function ClassOku() As Long
ClassOku = ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_CLASS)
End Function


Function CharClass() As String
If ClassOku = 201 Or ClassOku = 205 Or ClassOku = 206 Or ClassOku = 101 Or ClassOku = 105 Or ClassOku = 106 Then
CharClass = "Warrior"
End If
If ClassOku = 202 Or ClassOku = 207 Or ClassOku = 208 Or ClassOku = 102 Or ClassOku = 107 Or ClassOku = 108 Then
CharClass = "Rogue"
End If
If ClassOku = 203 Or ClassOku = 209 Or ClassOku = 210 Or ClassOku = 103 Or ClassOku = 109 Or ClassOku = 110 Then
CharClass = "Mage"
End If
If ClassOku = 204 Or ClassOku = 211 Or ClassOku = 212 Or ClassOku = 104 Or ClassOku = 111 Or ClassOku = 112 Then
CharClass = "Priest"
End If
End Function
Public Function sekizliok()
If MobID = "FFFF" Then
Else
Paket "3101" & Strings.mID(AlignDWORD(CharClass & "515"), 1, 6) & "00" & KarakterID & MobID & "00000000000000000000000000000D00"
Paket "3102" & Strings.mID(AlignDWORD(CharClass & "515"), 1, 6) & "00" & KarakterID & MobID & "00000D020600B7019BFF0000F0000F00"
Paket "3103" & Strings.mID(AlignDWORD(CharClass & "515"), 1, 6) & "00" & KarakterID & MobID & "00000000000000000400000000000000"
Paket "3103" & Strings.mID(AlignDWORD(CharClass & "515"), 1, 6) & "00" & KarakterID & MobID & "00000000000000000400000000000000"
Paket "3103" & Strings.mID(AlignDWORD(CharClass & "515"), 1, 6) & "00" & KarakterID & MobID & "00000000000000000500000000000000"
Bekle (50)
Paket "3101" & Strings.mID(AlignDWORD(CharClass & "555"), 1, 6) & "00" & KarakterID & MobID & "00000000000000000000000000000F00"
Paket "3102" & Strings.mID(AlignDWORD(CharClass & "555"), 1, 6) & "00" & KarakterID & MobID & "00000D020600B7019BFF0000F0000F00"
Paket "3103" & Strings.mID(AlignDWORD(CharClass & "555"), 1, 6) & "00" & KarakterID & MobID & "00000000000000001500000000000000"
Paket "3103" & Strings.mID(AlignDWORD(CharClass & "555"), 1, 6) & "00" & KarakterID & MobID & "00000000000000001500000000000000"
Paket "3103" & Strings.mID(AlignDWORD(CharClass & "555"), 1, 6) & "00" & KarakterID & MobID & "00000000000000001600000000000000"
Paket "3103" & Strings.mID(AlignDWORD(CharClass & "555"), 1, 6) & "00" & KarakterID & MobID & "00000000000000001700000000000000"
Paket "3103" & Strings.mID(AlignDWORD(CharClass & "555"), 1, 6) & "00" & KarakterID & MobID & "00000000000000001800000000000000"
End If
End Function




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
    strTemp = Hex$(Asc(mID$(StrToHex, i, 1)))
    If Len(strTemp) = 1 Then strTemp = "0" & strTemp
    strReturn = strReturn & strTemp
Next i
StringToHex = strReturn
End Function

Function writeMailSlot(MailSlotName As String) As Long
Dim KO_MSLOT As Long, pHook As String, p() As Byte, ph() As Byte, CF As Long, WF As Long, Ch As Long
KO_MSLOT = VirtualAllocEx(KO_HANDLE, 0, 1024, MEM_COMMIT, PAGE_READWRITE)
If KO_MSLOT <= 0 Then Exit Function: MsgBox "memory could not be opened!", vbCritical
CF = GetProcAddress(GetModuleHandle("kernel32.dll"), "CreateFileA")
WF = GetProcAddress(GetModuleHandle("kernel32.dll"), "WriteFile")
Ch = GetProcAddress(GetModuleHandle("kernel32.dll"), "CloseHandle")
Debug.Print Hex(KO_MSLOT)
Hex2Byte StringToHex(MailSlotName), p
ByteDizisiYaz KO_MSLOT + &H400, p, UBound(p) - LBound(p) + 1
pHook = "558BEC83C4F433C08945FC33D28955F86A0068800000006A036A006A01680000004068" & AlignDWORD(KO_MSLOT + &H400) & "E8" & AlignDWORD(getCallDiff(KO_MSLOT + &H27, CF)) & "8945F86A008D4DFC51FF750CFF7508FF75F8E8" & AlignDWORD(getCallDiff(KO_MSLOT + &H3E, WF)) & "8945F4FF75F8E8" & AlignDWORD(getCallDiff(KO_MSLOT + &H49, Ch)) & "8BE55DC3" '&H49
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

Public Function recv()
Dim RecvMailSlot As String
RecvMailSlot = "\\.\mailslot\zuhas" & Hex(GetTickCount)
RecvHandle = EstablishMailSlot(RecvMailSlot)
FindHook RecvMailSlot
End Function
Public Sub FindHook(MailSlotName As String)
'KO_RECVHK = &HB57208
KO_RECVHK = LongOku(LongOku(KO_PTR_DLG - &H14)) + &H8
KO_RCVHKB = LongOku(KO_RECVHK)

'KO_RECVHK = ReadLong(ReadLong(KO_PTR_DLG - &H14)) + &H8
'KO_RCVHKB = ReadLong(KO_RECVHK)



recvHook MailSlotName, KO_RCVHKB, KO_RECVHK
'recvHook MailSlotName, KO_RCVHKB2, KO_RECVHK2
'recvHook MailSlotName, KO_RCVHKB3, KO_RECVHK3
End Sub
Public Function FindHook2(MailSlotName As String)
Dim hooks As Long
Dim A, b, c, d As Integer
Randomize
A = CInt(Rnd * 9)
Randomize
b = CInt(Rnd * 9)
Randomize
c = CInt(Rnd * 9)
Randomize
d = CInt(Rnd * 9)
Randomize

MSName = "\\.\mailslot\RossMax" & Right(App.ThreadID, 2) & "_" & A & b & c & d & CInt(Rnd * 9999)
Debug.Print MSName
MSHandle = EstablishMailSlot(MSName)

hooks = KO_PTR_DLG + &H84
        
Select Case ByteOku(hooks)
Case 8
KO_RCVHKB = &HB57208
KO_RECVHK = &H53E980
HookRecvPackets
recvHook MailSlotName, KO_RCVHKB, KO_RECVHK
Case 9
KO_RCVHKB = &H53E980
KO_RECVHK = &HB57208
HookRecvPackets
recvHook MailSlotName, KO_RCVHKB, KO_RECVHK
Case 10
KO_RCVHKB = &H9C6F7C
KO_RECVHK = &H9C6F80
HookRecvPackets

Case Else
KO_RCVHKB = &HB57208
KO_RECVHK = &H53E980
recvHook MailSlotName, KO_RCVHKB, KO_RECVHK
HookRecvPackets
End Select


End Function
Sub HookRecvPackets()
        Dim CreateFileAADDR As Long, WriteFileADDR As Long, CloseHandleADDR As Long
        Dim pBytesMSName() As Byte, pBytes() As Byte
        Dim pStr As String, pStrKO_RECVFNC As String

        CreateFileAADDR = GetProcAddress(GetModuleHandle("kernel32.dll"), "CreateFileA")
        WriteFileADDR = GetProcAddress(GetModuleHandle("kernel32.dll"), "WriteFile")
        CloseHandleADDR = GetProcAddress(GetModuleHandle("kernel32.dll"), "CloseHandle")

        KO_RECV_FNC = VirtualAllocEx(KO_HANDLE, 0, 1024, MEM_COMMIT, PAGE_READWRITE)

        pBytesMSName = StrConv(MSName, vbFromUnicode)
        WriteByteArray KO_RECV_FNC + &H400, pBytesMSName, UBound(pBytesMSName) - LBound(pBytesMSName) + 1

        pStr = AlignDWORD(CreateFileAADDR)
        ConvHEX2ByteArray pStr, pBytes
        WriteByteArray KO_RECV_FNC + &H32A, pBytes, UBound(pBytes) - LBound(pBytes) + 1

        pStr = AlignDWORD(WriteFileADDR)
        ConvHEX2ByteArray pStr, pBytes
        WriteByteArray KO_RECV_FNC + &H334, pBytes, UBound(pBytes) - LBound(pBytes) + 1

        pStr = AlignDWORD(CloseHandleADDR)
        ConvHEX2ByteArray pStr, pBytes
        WriteByteArray KO_RECV_FNC + &H33E, pBytes, UBound(pBytes) - LBound(pBytes) + 1

        pStr = AlignDWORD(KO_RCVHKB)
        ConvHEX2ByteArray pStr, pBytes
        WriteByteArray KO_RECV_FNC + &H208, pBytes, UBound(pBytes) - LBound(pBytes) + 1
        
        pStr = AlignDWORD(KO_RECVHK)
        ConvHEX2ByteArray pStr, pBytes
        WriteByteArray KO_RECV_FNC + &H212, pBytes, UBound(pBytes) - LBound(pBytes) + 1

        pStr = AlignDWORD(KO_RECV_FNC)
        ConvHEX2ByteArray pStr, pBytes
        WriteByteArray KO_RECV_FNC + &H21C, pBytes, UBound(pBytes) - LBound(pBytes) + 1
        
        pStr = "52" + "890D" + AlignDWORD(KO_RECV_FNC + &H320) + "8905" + AlignDWORD(KO_RECV_FNC + &H3B6) + "8B4E04890d" + AlignDWORD(KO_RECV_FNC + &H1F4) + "8B56088915" + AlignDWORD(KO_RECV_FNC + &H1FE) + "81F9001000007D3E5068800000006A036A006A01680000004068" + AlignDWORD(KO_RECV_FNC + &H400) + "FF15" + AlignDWORD(KO_RECV_FNC + &H32A) + "83F8FF741D506A0054FF35" + AlignDWORD(KO_RECV_FNC + &H1F4) + "ff35" + AlignDWORD(KO_RECV_FNC + &H1FE) + "50ff15" + AlignDWORD(KO_RECV_FNC + &H334) + "ff15" + AlignDWORD(KO_RECV_FNC + &H33E) + "8b0d" + AlignDWORD(KO_RECV_FNC + &H320) + "8b05" + AlignDWORD(KO_RECV_FNC + &H3B6) + "5aff25" + AlignDWORD(KO_RECV_FNC + &H208)
        ConvHEX2ByteArray pStr, pBytes
        WriteByteArray KO_RECV_FNC, pBytes, UBound(pBytes) - LBound(pBytes) + 1
        
        pStrKO_RECVFNC = AlignDWORD(KO_RECV_FNC)
        ConvHEX2ByteArray pStrKO_RECVFNC, pBytes
        WriteByteArray KO_RECVHK, pBytes, UBound(pBytes) - LBound(pBytes) + 1
        
End Sub

Public Sub DispatchMailSlot() 'altta 2 tane Handle atýlmasý gereken yere direk globaldeki RecvHandle yi yazdým
Dim MsgCount As Long, rc As Long, MessageBuffer As String, code, PacketType As String
Dim GMNot, GMNotHex, GMNotice, HexRange As Long
Dim BoxID2, BoxID, ItemID1, ItemID2, ItemID3, ItemID4, RecAl1, RecAl2, RecAl4, RecAl3 As Long
Dim RecvType As Integer, targetID As Long, NameLen3 As Integer, UserName As String, ChatLen As Integer, ChatString As String

MsgCount = 1
Do While MsgCount <> 0
rc = CheckForMessages(RecvHandle, MsgCount) 'RecvHandle atýlan 1. yer
If CBool(rc) And MsgCount = 0 Then
    If ReadMessage(RecvHandle, MessageBuffer, MsgCount) Then 'RecvHandle atýlan 2. yer
    code = MessageBuffer
    On Error Resume Next
    
    Select Case Asc(Left(MessageBuffer, 1))
  
    Case 16 ' Chat Oku
        RecvType = Hex2Val(mID(MessageBuffer, 2, 1))
        targetID = Hex2Val(mID(MessageBuffer, 4, 2))
        NameLen3 = Hex2Val(mID(MessageBuffer, 6, 1))
        UserName = mID(MessageBuffer, 7, NameLen3)
        ChatLen = Hex2Val(mID(MessageBuffer, 7 + NameLen3, 1))
        ChatString = mID(MessageBuffer, 9 + NameLen3, ChatLen)
        Form1.List6.AddItem ChatString
        


If Form1.otokutuche.value = 1 And mID(StringToHex(MessageBuffer), 1, 2) = "23" Then
           BoxID2 = mID(StringToHex(MessageBuffer), 7, 8)
           Paket "24" & BoxID2
        End If
           If Form1.otokutuche.value = 1 And mID(StringToHex(MessageBuffer), 1, 2) = "24" Then
                BoxID = mID(StringToHex(MessageBuffer), 3, 4)
                ItemID1 = mID(StringToHex(MessageBuffer), 13, 8)
                ItemID2 = mID(StringToHex(MessageBuffer), 25, 8)
                ItemID3 = mID(StringToHex(MessageBuffer), 37, 8)
                ItemID4 = mID(StringToHex(MessageBuffer), 49, 8)
                RecAl1 = mID(StringToHex(MessageBuffer), 7, 4)
                RecAl2 = mID(StringToHex(MessageBuffer), 21, 4)
                RecAl3 = mID(StringToHex(MessageBuffer), 33, 4)
                RecAl4 = mID(StringToHex(MessageBuffer), 45, 4)
                If ItemID2 > 0 Then: Paket "26" & BoxID & RecAl1 & ItemID2 & "01" & "00"
                Bekle 200
                If ItemID3 > 0 Then: Paket "26" & BoxID & RecAl1 & ItemID3 & "02" & "00"
                Bekle 200
                If ItemID4 > 0 Then: Paket "26" & BoxID & RecAl1 & ItemID4 & "03" & "00"
                Bekle 200
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
Call GetMailslotInfo(KO_HANDLE, ByVal 0&, lNextMsgSize, MessagesLeft, ByVal 0&)
If MessagesLeft > 0 And lNextMsgSize <> MAILSLOT_NO_MESSAGE Then
    lBytesRead = 0
    lpBuffer = String$(lNextMsgSize, Chr$(0))
    Call ReadFile(KO_HANDLE, ByVal lpBuffer, Len(lpBuffer), lBytesRead, ByVal 0&)
    If lBytesRead <> 0 Then
        MailMessage = Left(lpBuffer, lBytesRead)
        ReadMessage = True
        Call GetMailslotInfo(KO_HANDLE, ByVal 0&, lNextMsgSize, MessagesLeft, ByVal 0&)
    End If
End If
End Function

Private Function CheckForMessages(Handle As Long, MessageCount As Long)
Dim lMsgCount As Long, lNextMsgSize As Long
CheckForMessages = False
GetMailslotInfo KO_HANDLE, ByVal 0&, lNextMsgSize, lMsgCount, ByVal 0&
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



'start declaring autoattack log
'Not created by me.


Function ByteOku(pAddy As Long, Optional pHandle As Long) As Byte
    Dim value As Byte
    If pHandle <> 0 Then
        ReadProcessMem pHandle, pAddy, value, 1, 0&
    Else
        ReadProcessMem KO_HANDLE, pAddy, value, 1, 0&
    End If
    ByteOku = value
End Function
Public Sub TsBas()
Dim SkillID
If Form1.Combo5.Text = "Kecoon" Then SkillID = "D43307" 'kecoon

If Form1.Combo5.Text = "Bulture" Then SkillID = "E83307" 'Bulture

If Form1.Combo5.Text = "Zombie" Then SkillID = "F23307" 'Zombie

If Form1.Combo5.Text = "Lycan" Then SkillID = "063407" 'Lycan

If Form1.Combo5.Text = "Scorpion" Then SkillID = "103407" 'Stripter Scorpion

If Form1.Combo5.Text = "Kobold" Then SkillID = "1A3407" 'Kobolt

If Form1.Combo5.Text = "Death Knight" Then SkillID = "563407" 'Death Knight

If Form1.Combo5.Text = "Mastadon" Then SkillID = "423407" 'Mastadon

If Form1.Combo5.Text = "Black Window" Then SkillID = "443407" 'Black Window

If Form1.Combo5.Text = "Sheriff" Then SkillID = "603407" 'Sheriff

If Form1.Combo5.Text = "Harunga" Then SkillID = "883407" 'Harunga

If Form1.Combo5.Text = "Burning Skeloton" Then SkillID = "8A3407" 'Burning Skeloton

If Form1.Combo5.Text = "Raven Harpy" Then SkillID = "BA3407" 'Raven Harpy

If Form1.Combo5.Text = "Uruk Tron" Then SkillID = "C43407" 'Uruk Tron

If Form1.Combo5.Text = "Troll Warior" Then SkillID = "E23407" 'Troll Warior

If Form1.Combo5.Text = "Centaur" Then SkillID = "D43407" 'Centaur

If Form1.Combo5.Text = "Stone Golem" Then SkillID = "D83407" 'Stone Golem

If Form1.Combo5.Text = "Orc Bowman" Then SkillID = "F63407" 'Orc Bowman

Paket "3103" & SkillID & "00" & KarakterID & KarakterID & "0000000000000000000000"

End Sub
Public Sub ManaPot()
Dim SkillSeç As String
Dim SkillID As String
With Form1.Combo7
If .Text = "1920" Then
SkillSeç = "020"
End If
If .Text = "960" Then
SkillSeç = "019"
End If
If .Text = "480" Then
SkillSeç = "018"
End If
If .Text = "180" Then
SkillSeç = "017"
End If
If .Text = "90" Then
SkillSeç = "016"
End If
End With
SkillID = Strings.mID(AlignDWORD(490 & SkillSeç), 1, 6)
Paket "3103" + SkillID + "00" + KarakterID + KarakterID + "0000000000000000000000000000"
End Sub
Public Sub CanPot()
Dim SkillSeç As String
Dim SkillID As String
With Form1.Combo6
If .Text = "720" Then
SkillSeç = "014"
End If
If .Text = "360" Then
SkillSeç = "013"
End If
If .Text = "180" Then
SkillSeç = "012"
End If
If .Text = "90" Then
SkillSeç = "011"
End If
If .Text = "45" Then
SkillSeç = "010"
End If
End With
SkillID = Strings.mID(AlignDWORD(490 & SkillSeç), 1, 6)
Paket "3103" + SkillID + "00" + KarakterID + KarakterID + "0000000000000000000000000000"
End Sub
Function KarakterHP()
KarakterHP = LongOku(LongOku(KO_PTR_CHR) + KO_OFF_HP)
End Function
Function KarakterMaxHP()
KarakterMaxHP = LongOku(LongOku(KO_PTR_CHR) + KO_OFF_MAXHP)
End Function
Function KarakterMP()
KarakterMP = LongOku(LongOku(KO_PTR_CHR) + KO_OFF_MP)
End Function
Function KarakterMaxMP()
KarakterMaxMP = LongOku(LongOku(KO_PTR_CHR) + KO_OFF_MAXMP)
End Function
Public Sub Minör()
Paket "3103" + Strings.mID(AlignDWORD(SýnýfBul & "705"), 1, 6) + "00" + KarakterID + KarakterID + "0000000000000000000000000000"
End Sub

Function CharId()
CharId = Strings.mID(AlignDWORD(ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_ID)), 1, 4)
End Function


Function MobBilgi(TargetMob As Long)
Dim Ptr As Long, tmpMobBase As Long, tmpBase As Long, IDArray As Long, BaseAddr As Long, Mob As Long, Zaman1 As Long
Mob = TargetMob
Ptr = ReadLong(KO_FLDB)
Zaman1 = GetTickCount
tmpMobBase = ReadLong(Ptr + &H2C)
tmpBase = ReadLong(tmpMobBase + &H4)
While tmpBase <> 0
If Zaman1 - GetTickCount > 50 Then Exit Function
IDArray = ReadLong(tmpBase + &HC)
If IDArray >= Mob Then
If IDArray = Mob Then
BaseAddr = ReadLong(tmpBase + &H10)
End If
tmpBase = ReadLong(tmpBase + &H0)
Else
tmpBase = ReadLong(tmpBase + &H8)
End If
Wend
MobBilgi = BaseAddr
End Function


Function HexString(ByVal EvalString As String) As String
        Dim intStrLen As Integer
        Dim intLoop As Integer
        Dim strHex As String

        EvalString = Trim(EvalString)
        intStrLen = Len(EvalString)
        For intLoop = 1 To intStrLen
            strHex = strHex & Hex(Asc(mID(EvalString, intLoop, 1)))
        Next
        HexString = strHex
        HexSözcük = strHex
    End Function
Sub ChatFlooder(ByVal chatyazi As String)
        Dim ChatLen As String
ChatLen = Strings.Left(AlignDWORD(Len(chatyazi)), 2)
        HexString (chatyazi)
        If Form1.ComboUmut.Text = "Normal" Then
            Paket ("10" + "01" + ChatLen + "00" + HexSözcük)
        Else: End If
        If Form1.ComboUmut.Text = "Shout" Then
            Paket ("10" + "05" + ChatLen + "00" + HexSözcük)
        Else: End If
        If Form1.ComboUmut.Text = "Party" Then
            Paket ("10" + "03" + ChatLen + "00" + HexSözcük)
        Else: End If
        If Form1.ComboUmut.Text = "Clan" Then
            Paket ("10" + "06" + ChatLen + "00" + HexSözcük)
        Else: End If
        If Form1.ComboUmut.Text = "Merchant" Then
            Paket ("10" + "0E" + ChatLen + "00" + HexSözcük)
        Else: End If
        If Form1.ComboUmut.Text = "Ally" Then
            Paket ("10" + "0F" + ChatLen + "00" + HexSözcük)
        End If
       
    End Sub



Sub SýraByteOku(addr As Long, pmem() As Byte, pSize As Long)
Dim value As Byte
On Error Resume Next
ReDim pmem(1 To pSize) As Byte
ReadProcessMem KO_HANDLE, addr, pmem(1), pSize, 0&
End Sub
Function KarakterX()
KarakterX = ReadFloat(KO_ADR_CHR + KO_OFF_X)
End Function
Function KarakterY()
KarakterY = ReadFloat(KO_ADR_CHR + KO_OFF_Y)
End Function
Function KarakterZ()
KarakterZ = ReadFloat(KO_ADR_CHR + KO_OFF_Z)
End Function
Function GetMX()
GetMX = ReadFloat(KO_ADR_CHR + KO_OFF_MX)
End Function
Function GetMY()
GetMY = ReadFloat(KO_ADR_CHR + KO_OFF_MY)
End Function
Public Function X11()
X11 = KarakterX + 10
End Function
Public Function Y11()
Y11 = KarakterY + 10
End Function
Public Function X22()
X22 = KarakterX - 10
End Function
Public Function Y22()
Y22 = KarakterY - 10
End Function
Public Function X33()
X33 = KarakterX + 5
End Function
Public Function Y33()
Y33 = KarakterY + 5
End Function
Public Function X44()
X44 = KarakterX - 5
End Function
Public Function Y44()
Y44 = KarakterY - 5
End Function
Public Sub InventoryOku()
      Dim tmpBase As Long, tmpLng1 As Long, tmpLng2 As Long, tmpLng3 As Long, tmpLng4 As Long
      Dim lngItemID As Long, lngItemID_Ext As Long, lngItemNameLen As Long, AdrItemName As Long
      Dim ItemNameB() As Byte
      Dim ItemName As String
      Dim i As Integer
      
      tmpBase = ReadLong(KO_PTR_DLG)
      tmpLng1 = ReadLong(tmpBase + &H1B8)
      Form1.canta.Clear
        For i = 15 To 42
          tmpLng2 = ReadLong(tmpLng1 + (&H210 + (4 * i)))
          tmpLng3 = ReadLong(tmpLng2 + &H68)
          tmpLng4 = ReadLong(tmpLng2 + &H6C)
         
          lngItemID = ReadLong(tmpLng3)
          lngItemID_Ext = ReadLong(tmpLng4)
          lngItemID = lngItemID + lngItemID_Ext
          lngItemNameLen = ReadLong(tmpLng3 + &H1C)
          If lngItemNameLen > 15 Then
          AdrItemName = ReadLong(tmpLng3 + &HC)
          Else
          AdrItemName = tmpLng3 + &HC
          End If
          
          ItemName = ""
          If lngItemNameLen > 0 Then
               SýraByteOku AdrItemName, ItemNameB, lngItemNameLen
               ItemName = StrConv(ItemNameB, vbUnicode) 'convert it to string
          End If
       
            Form1.canta.AddItem Form1.canta.ListCount + 1 & "-) " & ItemName
        If ItemName <> "" Then
        End If
      Next
End Sub


Public Function Upgrade2()
Dim ScrollID As String
Dim ItemNo As String
Dim ItemNo1 As String
Dim ItemNo2 As String
Dim ItemNo3 As String
Dim ItemNo4 As String
Dim ItemNo5 As String
Dim ItemNo6 As String
Dim ItemNo7 As String
Dim ItemNo8 As String
Dim ItemNo9 As String
Dim ItemNo10 As String
Dim ItemNo11 As String
Dim ItemNo12 As String
Dim ItemNo13 As String
Dim ItemNo14 As String
Dim ItemNo15 As String
Dim ItemNo16 As String
Dim ItemNo17 As String
Dim ItemNo18 As String
Dim ItemNo19 As String
Dim ItemNo20 As String
Dim ItemNo21 As String
Dim ItemNo22 As String
Dim ItemNo23 As String
Dim ItemNo24 As String
Dim ItemNo25 As String
Dim ItemNo26 As String
Dim ItemNo27 As String

Dim i1 As Integer
Dim i2 As Integer
Dim i3 As Integer
Dim i4 As Integer
Dim i5 As Integer
Dim i6 As Integer
Dim i7 As Integer
Dim i8 As Integer
Dim i9 As Integer
Dim i10 As Integer
Dim i11 As Integer
Dim i12 As Integer
Dim i13 As Integer
Dim i14 As Integer
Dim i15 As Integer
Dim i16 As Integer
Dim i17 As Integer
Dim i18 As Integer
Dim i19 As Integer
Dim i20 As Integer
Dim i21 As Integer
Dim i22 As Integer
Dim i23 As Integer
Dim i24 As Integer
Dim i25 As Integer
Dim i26 As Integer
Dim i27 As Integer
Dim i28 As Integer

 For i1 = 15 To 15
 For i2 = 16 To 16
  For i3 = 17 To 17
 For i4 = 18 To 18
  For i5 = 19 To 19
 For i6 = 20 To 20
  For i7 = 21 To 21
 For i8 = 22 To 22
  For i9 = 23 To 23
 For i10 = 24 To 24
  For i11 = 25 To 25
 For i12 = 26 To 26
  For i13 = 27 To 27
 For i14 = 28 To 28
  For i15 = 29 To 29
 For i16 = 30 To 30
  For i17 = 31 To 31
 For i18 = 32 To 32
  For i19 = 33 To 33
 For i20 = 34 To 34
  For i21 = 35 To 35
 For i22 = 36 To 36
  For i23 = 37 To 37
 For i24 = 38 To 38
 For i25 = 39 To 39
  For i26 = 40 To 40
 For i27 = 41 To 41
 For i28 = 42 To 42
 
ItemNo = HexItemID(i1)
ItemNo1 = HexItemID(i2)
ItemNo2 = HexItemID(i3)
ItemNo3 = HexItemID(i4)
ItemNo4 = HexItemID(i5)
ItemNo5 = HexItemID(i6)
ItemNo6 = HexItemID(i7)
ItemNo7 = HexItemID(i8)
ItemNo8 = HexItemID(i9)
ItemNo9 = HexItemID(i10)
ItemNo10 = HexItemID(i11)
ItemNo11 = HexItemID(i12)
ItemNo12 = HexItemID(i13)
ItemNo13 = HexItemID(i14)
ItemNo14 = HexItemID(i15)
ItemNo15 = HexItemID(i16)
ItemNo16 = HexItemID(i17)
ItemNo17 = HexItemID(i18)
ItemNo18 = HexItemID(i19)
ItemNo19 = HexItemID(i20)
ItemNo20 = HexItemID(i21)
ItemNo21 = HexItemID(i22)
ItemNo22 = HexItemID(i23)
ItemNo23 = HexItemID(i24)
ItemNo24 = HexItemID(i25)
ItemNo25 = HexItemID(i26)
ItemNo26 = HexItemID(i27)
ItemNo27 = HexItemID(i28)



        Select Case Form1.Combo1.ListIndex
            Case 0: ScrollID = AlignDWORD(379221000)
            Case 1: ScrollID = AlignDWORD(379205000)
            Case 2: ScrollID = AlignDWORD(379016000)
            Case 3: ScrollID = AlignDWORD(379021000)
        End Select

If Form1.canta.Selected(0) Then
Paket "5B02" + "01" + "1427" + ItemNo + "00" + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(1) Then
Paket "5B02" + "01" + "1427" + ItemNo1 + "01" + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(2) Then
Paket "5B02" + "01" + "1427" + ItemNo2 + "02" + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(3) Then
Paket "5B02" + "01" + "1427" + ItemNo3 + "03" + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(4) Then
Paket "5B02" + "01" + "1427" + ItemNo4 + "04" + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(5) Then
Paket "5B02" + "01" + "1427" + ItemNo5 + "05" + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(6) Then
 Paket "5B02" + "01" + "1427" + ItemNo6 + "06" + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(7) Then
 Paket "5B02" + "01" + "1427" + ItemNo7 + "07" + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(8) Then
  Paket "5B02" + "01" + "1427" + ItemNo8 + "08" + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(9) Then
  Paket "5B02" + "01" + "1427" + ItemNo9 + "09" + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(10) Then
 Paket "5B02" + "01" + "1427" + ItemNo10 + "0A" + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(11) Then
  Paket "5B02" + "01" + "1427" + ItemNo11 + "0B" + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(12) Then
  Paket "5B02" + "01" + "1427" + ItemNo12 + "0C" + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(13) Then
  Paket "5B02" + "01" + "1427" + ItemNo13 + "0D" + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(14) Then
  Paket "5B02" + "01" + "1427" + ItemNo14 + "0E" + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(15) Then
  Paket "5B02" + "01" + "1427" + ItemNo15 + "0F" + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(16) Then
 Paket "5B02" + "01" + "1427" + ItemNo16 + Hex(CLng("16")) + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(17) Then
 Paket "5B02" + "01" + "1427" + ItemNo17 + Hex(CLng("17")) + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(18) Then
 Paket "5B02" + "01" + "1427" + ItemNo18 + Hex(CLng("18")) + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(19) Then
 Paket "5B02" + "01" + "1427" + ItemNo19 + Hex(CLng("19")) + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(20) Then
Paket "5B02" + "01" + "1427" + ItemNo20 + Hex(CLng("20")) + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(21) Then
Paket "5B02" + "01" + "1427" + ItemNo21 + Hex(CLng("21")) + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(22) Then
Paket "5B02" + "01" + "1427" + ItemNo22 + Hex(CLng("22")) + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(23) Then
 Paket "5B02" + "01" + "1427" + ItemNo23 + Hex(CLng("23")) + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(24) Then
  Paket "5B02" + "01" + "1427" + ItemNo24 + Hex(CLng("24")) + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(25) Then
  Paket "5B02" + "01" + "1427" + ItemNo25 + Hex(CLng("25")) + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(26) Then
  Paket "5B02" + "01" + "1427" + ItemNo26 + Hex(CLng("26")) + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(27) Then
 Paket "5B02" + "01" + "1427" + ItemNo27 + Hex(CLng("27")) + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If

Next i28
Next i27
Next i26
Next i25
Next i24
Next i23
Next i22
Next i21
Next i20
Next i19
Next i18
Next i17
Next i16
Next i15
Next i14
Next i13
Next i12
Next i11
Next i10
Next i9
Next i8
Next i7
Next i6
Next i5
Next i4
Next i3
Next i2
Next i1

End Function

Public Function Runner(crx As Single, cry As Single)
'Sabitle
On Error Resume Next
Dim zipla, X, Y, uzak, A, b, d, e, i, isrtx, isrty
Dim tx As Single, ty As Single
Dim x1 As Single, y1 As Single
Dim bykx, byky, kckx, kcky
zipla = 3.5
tx = ReadFloat(ReadLong(KO_PTR_CHR) + KO_OFF_X)
ty = ReadFloat(ReadLong(KO_PTR_CHR) + KO_OFF_Y)
X = Abs(crx - tx)
Y = Abs(cry - ty)
If tx > crx Then isrtx = -1: bykx = tx: kckx = crx Else isrtx = 1: bykx = crx: kckx = tx
If ty > cry Then isrty = -1: byky = ty: kcky = cry Else isrty = 1: byky = cry: kcky = ty
uzak = Int(Sqr((X ^ 2 + Y ^ 2)))
If uzak > 9999 Then Exit Function
If crx <= 0 Or cry <= 0 Then Exit Function
For i = zipla To uzak Step zipla
A = i ^ 2 * X ^ 2
b = X ^ 2 + Y ^ 2
d = Sqr(A / b)
e = Sqr(i ^ 2 - d ^ 2)
x1 = Int(tx + isrtx * d)
y1 = Int(ty + isrty * e)
If (kckx <= x1 And x1 <= bykx) And (kcky <= y1 And y1 <= byky) Then
WriteFloat ReadLong(KO_PTR_CHR) + KO_OFF_X, x1
WriteFloat ReadLong(KO_PTR_CHR) + KO_OFF_Y, y1
WriteFloat ReadLong(KO_PTR_CHR) + KO_OFF_Z, ReadFloat(ReadLong(KO_PTR_CHR) + KO_OFF_Z)
Paket "06" _
& Left(AlignDWORD(ReadFloat(ReadLong(KO_PTR_CHR) + KO_OFF_X) * 10), 4) _
& Left(AlignDWORD(ReadFloat(ReadLong(KO_PTR_CHR) + KO_OFF_Y) * 10), 4) _
& Left(AlignDWORD(ReadFloat(ReadLong(KO_PTR_CHR) + KO_OFF_Z) * 10), 4) _
& "2D0000" _
& FormatHex(Hex(CInt(CharX) * 10), 4) & FormatHex(Hex(CInt(CharY) * 10), 4) & FormatHex(Hex(CInt(CharZ) * 10), 4)
End If
Next
WriteFloat ReadLong(KO_PTR_CHR) + KO_OFF_X, crx
WriteFloat ReadLong(KO_PTR_CHR) + KO_OFF_Y, cry
WriteFloat ReadLong(KO_PTR_CHR) + KO_OFF_Z, ReadFloat(ReadLong(KO_PTR_CHR) + KO_OFF_Z)

Paket "06" _
& Left(AlignDWORD(ReadFloat(ReadLong(KO_PTR_CHR) + KO_OFF_X) * 10), 4) _
& Left(AlignDWORD(ReadFloat(ReadLong(KO_PTR_CHR) + KO_OFF_Y) * 10), 4) _
& Left(AlignDWORD(ReadFloat(ReadLong(KO_PTR_CHR) + KO_OFF_Z) * 10), 4) _
& "2D0000" _
& FormatHex(Hex(CInt(CharX) * 10), 4) & FormatHex(Hex(CInt(CharY) * 10), 4) & FormatHex(Hex(CInt(CharZ) * 10), 4)
Pause 0.1
End Function


Public Function MouseX()
MouseX = ReadFloat(ReadLong(KO_PTR_CHR) + KO_OFF_MX)
End Function

Public Function MouseY()
MouseY = ReadFloat(ReadLong(KO_PTR_CHR) + KO_OFF_MY)
End Function

