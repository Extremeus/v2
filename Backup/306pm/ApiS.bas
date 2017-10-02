Attribute VB_Name = "AMainModular"
Option Explicit
'--------------------------------------------------------------------------------------------------------------------------
'Functions
Public Declare Function DuplicateHandle Lib "kernel32" (ByVal hSourceProcessHandle As Long, ByVal hSourceHandle As Long, ByVal hTargetProcessHandle As Long, lpTargetHandle As Long, ByVal dwDesiredAccess As Long, ByVal bInheritHandle As Long, ByVal dwOptions As Long) As Long
Public Declare Function GetClassName Lib "user32" Alias "GetClassNameA" (ByVal Hwnd As Long, ByVal lpClassName As String, ByVal nMaxCount As Long) As Long
Public Declare Function CreateToolhelp32Snapshot Lib "kernel32" (ByVal lFlags As Long, ByVal lProcessID As Long) As Long
Public Declare Function ResumeThread Lib "kernel32" (ByVal hThread As Long) As Long
Public Declare Function GetThreadPriority Lib "kernel32" (ByVal hThread As Long) As Long
Public Declare Sub CopyMemory Lib "kernel32.dll" Alias "RtlMoveMemory" (Destination As Any, Source As Any, ByVal Length As Long)
Public Declare Function GetTickCount Lib "kernel32" () As Long
Public Declare Function CloseHandle Lib "kernel32" (ByVal hObject As Long) As Long
Public Declare Function ReadProcessMem Lib "kernel32" Alias "ReadProcessMemory" (ByVal hProcess As Long, ByVal lpBaseAddress As Any, ByRef lpBuffer As Any, ByVal nSize As Long, lpNumberOfBytesWritten As Long) As Long
Private Declare Function CreateMailslot Lib "kernel32" Alias "CreateMailslotA" (ByVal lpName As String, ByVal nMaxMessageSize As Long, ByVal lReadTimeout As Long, lpSecurityAttributes As Any) As Long
Private Declare Function GetMailslotInfo Lib "kernel32" (ByVal hMailSlot As Long, lpMaxMessageSize As Long, lpNextSize As Long, lpMessageCount As Long, lpReadTimeout As Long) As Long
Private Declare Function LoadLibrary Lib "kernel32" Alias "LoadLibraryA" (ByVal lpLibFileName As String) As Long
Private Declare Function GetProcAddress Lib "kernel32" (ByVal hModule As Long, ByVal lpProcName As String) As Long
Private Declare Function GetModuleHandle Lib "kernel32" Alias "GetModuleHandleA" (ByVal lpModuleName As String) As Long
Private Declare Function FreeLibrary Lib "kernel32" (ByVal hLibModule As Long) As Long
Public Declare Function CreateRemoteThread Lib "kernel32" (ByVal hProcess As Long, lpThreadAttributes As Long, ByVal dwStackSize As Long, lpStartAddress As Long, lpParameter As Any, ByVal dwCreationFlags As Long, lpThreadID As Long) As Long
Public Declare Function WaitForSingleObject Lib "kernel32" (ByVal hHandle As Long, ByVal dwMilliseconds As Long) As Long
'Private Declare Function VirtualFreeEx Lib "kernel32" (ByVal hProcess As Long, lpAddress As Any, ByVal dwSize As Long, ByVal dwFreeType As Long) As Long
Public Declare Function VirtualFreeEx Lib "kernel32" (ByVal hProcess As Long, lpAddress As Any, ByVal dwSize As Long, ByVal dwFreeType As Long) As Long

Public Declare Function VirtualAllocEx Lib "kernel32" (ByVal hProcess As Long, ByVal lpAddress As Long, ByVal dwSize As Long, ByVal flAllocationType As Long, ByVal flProtect As Long) As Long
Private Declare Function GetPrivateProfileSection Lib "kernel32" Alias "GetPrivateProfileSectionA" (ByVal lpAppName As String, ByVal lpReturnedString As String, ByVal nSize As Long, ByVal lpFileName As String) As Long
Private Declare Function SetWindowPos Lib "user32" (ByVal Hwnd As Long, ByVal hWndInsertAfter As Long, ByVal X As Long, ByVal Y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
Private Declare Function WritePrivateProfileSection Lib "kernel32" Alias "WritePrivateProfileSectionA" (ByVal lpAppName As String, ByVal lPaketing As String, ByVal lpFileName As String) As Long
Public Declare Function GetAsyncKeyState Lib "user32" (ByVal vKey As Long) As Integer
Public Declare Function FindWindow Lib "user32" Alias "FindWindowA" (ByVal lpClassName As String, ByVal lpWindowName As String) As Long
Private Declare Function GetWindowThreadProcessId Lib "user32" (ByVal Hwnd As Long, lpdwProcessId As Long) As Long
Private Declare Function OpenProcess Lib "kernel32" (ByVal dwDesiredAccess As Long, ByVal bInheritHandle As Long, ByVal dwProcessId As Long) As Long
Public Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)
Public Declare Function WriteProcessMem Lib "kernel32" Alias "WriteProcessMemory" (ByVal hProcess As Long, ByVal lpBaseAddress As Any, ByRef lpBuffer As Any, ByVal nSize As Long, lpNumberOfBytesWritten As Long) As Long
Public Declare Function EnumProcessModules Lib "PSAPI.DLL" (ByVal hProcess As Long, ByRef lphModule As Long, ByVal cb As Long, ByRef cbNeeded As Long) As Long
Public Declare Function GetModuleFileNameExA Lib "PSAPI.DLL" (ByVal hProcess As Long, ByVal hModule As Long, ByVal ModuleName As String, ByVal nSize As Long) As Long
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
Public zMobName As String, zMobID As Long, zMobX As Long, zMobY As Long, zMobZ As Long, zMobHp As Long, zMobDistance As Long
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
Public KO_OFF_HP As Long
Public KO_OFF_MAXHP As Long
Public KO_OFF_MP As Long
Public KO_OFF_MAXMP As Long
Public KO_OFF_Y As Long
Public KO_OFF_X As Long
Public KO_OFF_Z As Long
Public KO_OFF_MX As Long
Public KO_OFF_MY As Long
Public KO_OFF_MZ As Long
Public KO_OFF_Go1 As Long
Public KO_OFF_GoX As Long
Public KO_OFF_GoY As Long
Public KO_OFF_Go2 As Long
Public KO_OFF_ZONE As Long
Public KO_OFF_WH As Long
Public KO_OFF_NATION As Long

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
    GetWindowThreadProcessId FindWindow(vbNullString, "Knight OnLine Client"), KO_PID
    KO_HANDLE = OpenProcess(PROCESS_ALL_ACCESS, False, KO_PID)
        If KO_HANDLE = 0 Then
            MsgBox ("Oyunu Yönetici Olarak Aç!!.")
            AttachKO = False
            Exit Function
                Dim RecvMailSlot As String
    RecvMailSlot = "\\.\mailslot\Cro" & Hex(GetTickCount)
    RecvHandle = EstablishMailSlot(RecvMailSlot)
    FindHook RecvMailSlot
        End If
    If KO_PID = 0 Then End
    AttachKO = True
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

Public Function ConvHEX2ByteArray(pStr As String, pByte() As Byte)
On Error Resume Next
Dim i As Long
Dim j As Long
ReDim pByte(1 To Len(pStr) / 2)
j = LBound(pByte) - 1
For i = 1 To Len(pStr) Step 2
    j = j + 1
    pByte(j) = CByte("&H" & Mid(pStr, i, 2))
Next
End Function
Public Sub YukarýdaTut(TheForm As Form, SetOnTop As Boolean)
    Dim lflag
    If SetOnTop Then
        lflag = HWND_TOPMOST
    Else
        lflag = HWND_NOTOPMOST
    End If
    SetWindowPos TheForm.Hwnd, lflag, 0, 0, 0, 0, SWP_NOMOVE Or SWP_NOSIZE
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
Mobx = ReadFloat(ReadLong(ReadLong(KO_PTR_DLG) + &H40C) + &H7C)
End Function
Function MobY() As Long
MobY = ReadFloat(ReadLong(ReadLong(KO_PTR_DLG) + &H40C) + &H84)
End Function
Function MobZ() As Long
MobZ = ReadFloat(ReadLong(ReadLong(KO_PTR_DLG) + &H40C) + &H80)
End Function
Public Function Hex2Byte(Paket As String, pByte() As Byte)
On Error Resume Next
Dim i As Long
Dim j As Long
ReDim pByte(1 To Len(Paket) / 2)

j = LBound(pByte) - 1
For i = 1 To Len(Paket) Step 2
    j = j + 1
    pByte(j) = CByte("&H" & Mid(Paket, i, 2))
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
VirtualFreeEx KO_HANDLE, BytesAddr, 0, MEM_RELEASE&
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
Sub AsmKodCalistir(pCode() As Byte)
Dim hThread As Long, Ret As Long
WriteByteArray codebytes, pCode, UBound(pCode) - LBound(pCode) + 1
  If codebytes <> 0 Then
   hThread = CreateRemoteThread(ByVal KO_HANDLE, 0, 0, ByVal codebytes, 0, 0, 0)
   If hThread Then
      Ret = WaitForSingleObject(hThread, INFINITE)
   End If
   CloseHandle hThread
End If
End Sub
Public Function YürüXY(X As Single, Y As Single) As Boolean
    If CInt(CharX) = CInt(X) And CInt(CharY) = CInt(Y) Then YürüXY = True: Exit Function
    WriteLong KO_ADR_CHR + KO_OFF_Go2, 2
    WriteFloat KO_ADR_CHR + KO_OFF_MX, X
    WriteFloat KO_ADR_CHR + KO_OFF_MY, Y
    WriteLong KO_ADR_CHR + KO_OFF_Go1, 1
    YürüXY = False: Exit Function
End Function
Public Function SpeedHack(XKor As Integer, YKor As Integer) As Boolean
If CInt(CharX) = XKor And CInt(CharY) = YKor Then SpeedHack = True: Exit Function
'SeksClub
Dim FarkX As Long, FarkY As Long
Dim ZýplaX As Integer, ZýplaY As Integer, i As Integer
FarkX = XKor - CharX
FarkY = YKor - CharY
ZýplaX = 2
ZýplaY = 2
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
    TmpHex = Hex(Asc(Mid(pStrHex, i, 1)))
    If Len(TmpHex) = 1 Then TmpHex = "0" & TmpHex
    TmpStr = TmpStr & TmpHex
Next
Hex2Val = CLng("&H" & TmpStr)
End Function
Function ReadString(ByVal pAddy As Long, ByVal LSize As Long) As String

    On Error Resume Next
    Dim value As Byte
    Dim tex() As Byte
    If LSize = 0 Then Exit Function

    ReDim tex(1 To LSize)
    ReadProcessMem KO_HANDLE, pAddy, tex(1), LSize, 0&
    ReadString = StrConv(tex, vbUnicode)

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
    AlignDWORD = Strings.Left(Strings.Mid(DTH, 2, 2) & "0" & Strings.Left(DTH, 1) & "0000", Length)
    Case 4
    AlignDWORD = Strings.Left(Strings.Mid(DTH, 3, 2) & Strings.Left(DTH, 2) & "0000", Length)
    Case 5
    AlignDWORD = Strings.Left(Strings.Mid(DTH, 4, 2) & Strings.Mid(DTH, 2, 2) & "0" & Strings.Left(DTH, 1), Length) & "00"
    Case 6
    AlignDWORD = Strings.Left(Strings.Mid(DTH, 5, 2) & Strings.Mid(DTH, 3, 2) & Strings.Left(DTH, 2) & "00", Length)
    Case 7
    AlignDWORD = Strings.Left(Strings.Mid(DTH, 6, 2) & Strings.Mid(DTH, 4, 2) & Strings.Mid(DTH, 2, 2) & "0" & Strings.Left(DTH, 1), Length)
    Case 8
    AlignDWORD = Strings.Left(Strings.Mid(DTH, 7, 2) & Strings.Mid(DTH, 5, 2) & Strings.Mid(DTH, 3, 2) & Strings.Left(DTH, 2), Length)
End Select
End Function
Function charName()
If ReadLong(ReadLong(KO_PTR_CHR) + &H698) > 15 Then
charName = ReadString(ReadLong(ReadLong(KO_PTR_CHR) + &H688), ReadLong(ReadLong(KO_PTR_CHR) + &H698))
Else
charName = ReadString(ReadLong(KO_PTR_CHR) + &H688, ReadLong(ReadLong(KO_PTR_CHR) + &H698))
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
Function MobID()
Dim pPtr As Long
Dim GetMobID As String
Dim GetMBID As Long
pPtr = ReadLong(KO_PTR_CHR)
GetMBID = ReadLong(pPtr + KO_OFF_MOB)
GetMobID = AlignDWORD(GetMBID)
MobID = Strings.Mid(GetMobID, 1, 4)
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
Public Sub ReadInventory()
      Dim tmpBase As Long, tmpLng1 As Long, tmpLng2 As Long, tmpLng3 As Long, tmpLng4 As Long
      Dim lngItemID As Long, lngItemID_Ext As Long, lngItemNameLen As Long, AdrItemName As Long
      Dim ItemName As String
      Dim i As Integer
      tmpBase = ReadLong(KO_PTR_DLG)
      tmpLng1 = ReadLong(tmpBase + &H1B4)
      Form1.List2.Clear
      Form1.List4.Clear
        For i = 16 To 41
          tmpLng2 = ReadLong(tmpLng1 + (&H20C + (4 * i)))
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
              ItemName = ReadString(AdrItemName, lngItemNameLen)
          End If
        If ItemName = "" Then Else
        Form1.List2.AddItem ItemName
        Form1.List4.AddItem ItemName
        
        ItemIntID(i) = lngItemID
      Next
End Sub
Function InventoryIDAra(ItemID As String) As Long
ReadInventory
Dim i As Integer, a As Long
For i = 14 To 40
a = InStr(1, Right(ItemIntID(i), 1), ItemID, vbTextCompare)
If a <> 0 Then
InventoryIDAra = i
Exit Function
Else
InventoryIDAra = 0
End If
Next
End Function
Function BankaBoþAra(ItemID As String) As Long
Dim i As Integer, a As Long
For i = 0 To 190
a = BankItemID(i)
If a <> 0 Then
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
        offset = ReadLong(KO_ADR_DLG + &H1B4)
        offset = ReadLong(offset + (&H20C + (4 * Slot))) 'inventory slot
          'item id adress
        
        Sonuc = ReadLong(ReadLong(offset + &H68)) + ReadLong(ReadLong(offset + &H6C))
        HexItemID = Strings.Mid(AlignDWORD(Sonuc), 1, 8)
End Function
Public Function LongItemID(ByVal Slot As Integer) As Long
        Dim offset, X, offset3, offset4 As Long
        Dim Base, Sonuc As Long
        offset = ReadLong(KO_ADR_DLG + &H1B4)
        offset = ReadLong(offset + (&H20C + (4 * Slot))) 'inventory slot
          'item id adress
        
        LongItemID = ReadLong(ReadLong(offset + &H68)) + ReadLong(ReadLong(offset + &H6C))
        
End Function
Function GetItemCountInInv(ByVal Slot As Integer) As Long
        Dim offset, Offset2 As Long
        offset = ReadLong(KO_ADR_DLG + &H1B4)
        offset = ReadLong(offset + (&H20C + (4 * Slot)))
        Offset2 = ReadLong(offset + &H70)
        GetItemCountInInv = Offset2
End Function
Function GetItemCount() As Integer
        Dim ItemIDAdr As Long
        Dim ItemCount As Integer
        ItemCount = 0
        Dim n As Integer
        For n = 14 To 41
            ItemIDAdr = ReadLong(KO_ADR_DLG + &H1B4)
            ItemIDAdr = ReadLong(ItemIDAdr + (&H20C + (4 * (n))))
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
Public Function AraText(Kelime, Cümle) As Boolean
Dim i As Long, Aranan As String
For i = 1 To Len(Cümle): Aranan = Mid(Cümle, i, Len(Kelime))
If Aranan = Kelime Then AraText = True: Exit For Else: AraText = False
Next
End Function
Function NpcIDFinder(FýndName As String) As String
Dim EBP As Long, ESI As Long, EAX As Long, FEnd As Long
Dim base_addr As Long
zMobName = ""
EBP = ReadLong(ReadLong(KO_FLDB) + &H34)
FEnd = ReadLong(ReadLong(EBP + 4) + 4)
ESI = ReadLong(EBP)
While ESI <> EBP
base_addr = ReadLong(ESI + &H10)
EAX = ReadLong(ESI + 8)
    If ReadLong(ESI + 8) <> FEnd Then
        While ReadLong(EAX) <> FEnd
        EAX = ReadLong(EAX)
        Wend
    ESI = EAX
    Else
    EAX = ReadLong(ESI + 4)
        While ESI = ReadLong(EAX + 8)
        ESI = EAX
        EAX = ReadLong(EAX + 4)
        Wend
            If ReadLong(ESI + 8) <> EAX Then
            ESI = EAX
            End If
    End If
If ReadLong(base_addr + &H698) > 15 Then
zMobName = ReadString(ReadLong(base_addr + &H688), ReadLong(base_addr + &H698))
Else
zMobName = ReadString(base_addr + &H688, ReadLong(base_addr + &H698))
End If

If AraText(FýndName, zMobName) = True Then
 NpcIDFinder = AlignDWORD(ReadLong(base_addr + KO_OFF_ID), 4)
 zMobZ = ReadFloat(base_addr + KO_OFF_Z)
 zMobID = AlignDWORD(ReadLong(base_addr + KO_OFF_ID), 4)
 End If
Wend
End Function

Function ItemleriAl()
    Select Case Form1.Combo4.ListIndex
        Case 0
        Paket "210111150300" & NpcIDFinder("Hesta") & "0E29625D0E000100000611665D0E0101000007F9695D0E0201000008E16D5D0E0301000009C9715D0E040100000A29625D0E050100000611665D0E0601000007F9695D0E0701000008E16D5D0E0801000009C9715D0E090100000A29625D0E0A0100000611665D0E0B01000007F9695D0E0C01000008E16D5D0E0D01000009"
        Paket "6A02"
        Paket "210111150300" & NpcIDFinder("Hesta") & "0DC9715D0E0E0100000A29625D0E0F0100000611665D0E1001000007F9695D0E1101000008E16D5D0E1201000009C9715D0E130100000A29625D0E140100000611665D0E1501000007F9695D0E1601000008E16D5D0E1701000009C9715D0E180100000A29625D0E190100000611665D0E1A01000007"
        Paket "6A02"
        Case 1
        Paket "210111150300" & NpcIDFinder("Hesta") & "0E69A46C0E000100010651A86C0E010100010739AC6C0E020100010821B06C0E030100010909B46C0E040100010A69A46C0E050100010651A86C0E060100010739AC6C0E070100010821B06C0E080100010909B46C0E090100010A69A46C0E0A0100010651A86C0E0B0100010739AC6C0E0C0100010821B06C0E0D01000109"
        Paket "6A02"
        Paket "210111150300" & NpcIDFinder("Hesta") & "0D09B46C0E0E0100010A69A46C0E0F0100010651A86C0E100100010739AC6C0E110100010821B06C0E120100010909B46C0E130100010A69A46C0E140100010651A86C0E150100010739AC6C0E160100010821B06C0E170100010909B46C0E180100010A69A46C0E190100010651A86C0E1A01000107"
        Paket "6A02"
        Case 2
        Paket "210111150300" & NpcIDFinder("Hesta") & "0EA9E67B0E000100020691EA7B0E010100020779EE7B0E020100020861F27B0E030100020949F67B0E040100020AA9E67B0E050100020691EA7B0E060100020779EE7B0E070100020861F27B0E080100020949F67B0E090100020AA9E67B0E0A0100020691EA7B0E0B0100020779EE7B0E0C0100020861F27B0E0D01000209"
        Paket "6A02"
        Paket "210111150300" & NpcIDFinder("Hesta") & "0D49F67B0E0E0100020AA9E67B0E0F0100020691EA7B0E100100020779EE7B0E110100020861F27B0E120100020949F67B0E130100020AA9E67B0E140100020691EA7B0E150100020779EE7B0E160100020861F27B0E170100020949F67B0E180100020AA9E67B0E190100020691EA7B0E1A01000207"
        Paket "6A02"
        Case 3
        Paket "210111150300" & NpcIDFinder("Hesta") & "0E2908FB0B0001000000110CFB0B0101000001F90FFB0B0201000002E113FB0B0301000003C917FB0B04010000042908FB0B0501000000110CFB0B0601000001F90FFB0B0701000002E113FB0B0801000003C917FB0B09010000042908FB0B0A01000000110CFB0B0B01000001F90FFB0B0C01000002E113FB0B0D01000003"
        Paket "6A02"
        Paket "210111150300" & NpcIDFinder("Hesta") & "0DC917FB0B0E010000042908FB0B0F01000000110CFB0B1001000001F90FFB0B1101000002E113FB0B1201000003C917FB0B13010000042908FB0B1401000000110CFB0B1501000001F90FFB0B1601000002E113FB0B1701000003C917FB0B18010000042908FB0B1901000000110CFB0B1A01000001"
        Paket "6A02"
        Case 4
        Paket "210111150300" & NpcIDFinder("Hesta") & "0E694A0A0C0001000100514E0A0C010100010139520A0C020100010221560A0C0301000103095A0A0C0401000104694A0A0C0501000100514E0A0C060100010139520A0C070100010221560A0C0801000103095A0A0C0901000104694A0A0C0A01000100514E0A0C0B0100010139520A0C0C0100010221560A0C0D01000103"
        Paket "6A02"
        Paket "210111150300" & NpcIDFinder("Hesta") & "0D095A0A0C0E01000104694A0A0C0F01000100514E0A0C100100010139520A0C110100010221560A0C1201000103095A0A0C1301000104694A0A0C1401000100514E0A0C150100010139520A0C160100010221560A0C1701000103095A0A0C1801000104694A0A0C1901000100514E0A0C1A01000101"
        Paket "6A02"
        Case 5
        Paket "210111150300" & NpcIDFinder("Hesta") & "0EA98C190C00010002009190190C01010002017994190C02010002026198190C0301000203499C190C0401000204A98C190C05010002009190190C06010002017994190C07010002026198190C0801000203499C190C0901000204A98C190C0A010002009190190C0B010002017994190C0C010002026198190C0D01000203"
        Paket "6A02"
        Paket "210111150300" & NpcIDFinder("Hesta") & "0D499C190C0E01000204A98C190C0F010002009190190C10010002017994190C11010002026198190C1201000203499C190C1301000204A98C190C14010002009190190C15010002017994190C16010002026198190C1701000203499C190C1801000204A98C190C19010002009190190C1A01000201"
        Paket "6A02"
        Case 6
        Paket "210111150300" & NpcIDFinder("Hesta") & "0E298F8E0F000100000C11938E0F010100000DF9968E0F020100000EE19A8E0F030100000FC99E8E0F0401000010298F8E0F050100000C11938E0F060100000DF9968E0F070100000EE19A8E0F080100000FC99E8E0F0901000010298F8E0F0A0100000C11938E0F0B0100000DF9968E0F0C0100000EE19A8E0F0D0100000F"
        Paket "6A02"
        Paket "210111150300" & NpcIDFinder("Hesta") & "0DC99E8E0F0E01000010298F8E0F0F0100000C11938E0F100100000DF9968E0F110100000EE19A8E0F120100000FC99E8E0F1301000010298F8E0F140100000C11938E0F150100000DF9968E0F160100000EE19A8E0F170100000FC99E8E0F1801000010298F8E0F190100000C11938E0F1A0100000D"
        Paket "6A02"
        Case 7
        Paket "210111150300" & NpcIDFinder("Hesta") & "0E69D19D0F000100010C51D59D0F010100010D39D99D0F020100010E21DD9D0F030100010F09E19D0F040100011069D19D0F050100010C51D59D0F060100010D39D99D0F070100010E21DD9D0F080100010F09E19D0F090100011069D19D0F0A0100010C51D59D0F0B0100010D39D99D0F0C0100010E21DD9D0F0D0100010F"
        Paket "6A02"
        Paket "210111150300" & NpcIDFinder("Hesta") & "0D09E19D0F0E0100011069D19D0F0F0100010C51D59D0F100100010D39D99D0F110100010E21DD9D0F120100010F09E19D0F130100011069D19D0F140100010C51D59D0F150100010D39D99D0F160100010E21DD9D0F170100010F09E19D0F180100011069D19D0F190100010C51D59D0F1A0100010D"
        Paket "6A02"
        Case 8
        Paket "210111150300" & NpcIDFinder("Hesta") & "0EA913AD0F000100020C9117AD0F010100020D791BAD0F020100020E611FAD0F030100020F4923AD0F0401000210A913AD0F050100020C9117AD0F060100020D791BAD0F070100020E611FAD0F080100020F4923AD0F0901000210A913AD0F0A0100020C9117AD0F0B0100020D791BAD0F0C0100020E611FAD0F0D0100020F"
        Paket "6A02"
        Paket "210111150300" & NpcIDFinder("Hesta") & "0D4923AD0F0E01000210A913AD0F0F0100020C9117AD0F100100020D791BAD0F110100020E611FAD0F120100020F4923AD0F1301000210A913AD0F140100020C9117AD0F150100020D791BAD0F160100020E611FAD0F170100020F4923AD0F1801000210A913AD0F190100020C9117AD0F1A0100020D"
        Paket "6A02"
        Case 9
        Paket "210111150300" & NpcIDFinder("Hesta") & "0E29BCBF10000100001211C0BF100101000013F9C3BF100201000014E1C7BF100301000015C9CBBF10040100001629BCBF10050100001211C0BF100601000013F9C3BF100701000014E1C7BF100801000015C9CBBF10090100001629BCBF100A0100001211C0BF100B01000013F9C3BF100C01000014E1C7BF100D01000015"
        Paket "6A02"
        Paket "210111150300" & NpcIDFinder("Hesta") & "0DC9CBBF100E0100001629BCBF100F0100001211C0BF101001000013F9C3BF101101000014E1C7BF101201000015C9CBBF10130100001629BCBF10140100001211C0BF101501000013F9C3BF101601000014E1C7BF101701000015C9CBBF10180100001629BCBF10190100001211C0BF101A01000013"
        Paket "6A02"
        Case 10
        Paket "210111150300" & NpcIDFinder("Hesta") & "0E69FECE1000010001125102CF1001010001133906CF100201000114210ACF100301000115090ECF10040100011669FECE1005010001125102CF1006010001133906CF100701000114210ACF100801000115090ECF10090100011669FECE100A010001125102CF100B010001133906CF100C01000114210ACF100D01000115"
        Paket "6A02"
        Paket "210111150300" & NpcIDFinder("Hesta") & "0D090ECF100E0100011669FECE100F010001125102CF1010010001133906CF101101000114210ACF101201000115090ECF10130100011669FECE1014010001125102CF1015010001133906CF101601000114210ACF101701000115090ECF10180100011669FECE1019010001125102CF101A01000113"
        Paket "6A02"
        Case 11
        Paket "210111150300" & NpcIDFinder("Hesta") & "0EA940DE1000010002129144DE1001010002137948DE100201000214614CDE1003010002154950DE100401000216A940DE1005010002129144DE1006010002137948DE100701000214614CDE1008010002154950DE100901000216A940DE100A010002129144DE100B010002137948DE100C01000214614CDE100D01000215"
        Paket "6A02"
        Paket "210111150300" & NpcIDFinder("Hesta") & "0D4950DE100E01000216A940DE100F010002129144DE1010010002137948DE101101000214614CDE1012010002154950DE101301000216A940DE1014010002129144DE1015010002137948DE101601000214614CDE1017010002154950DE101801000216A940DE1019010002129144DE101A01000213"
        Paket "6A02"
        Case 12
        Paket "210129110300" & NpcIDFinder("Gargameth") & "0EB13E3D42000100000CB13E3D42010100000CB13E3D42020100000CB13E3D42030100000CB13E3D42040100000CB13E3D42050100000CB13E3D42060100000CB13E3D42070100000CB13E3D42080100000CB13E3D42090100000CB13E3D420A0100000CB13E3D420B0100000CB13E3D420C0100000CB13E3D420D0100000C"
        Paket "6A02"
        Paket "210129110300" & NpcIDFinder("Gargameth") & "0DB13E3D420E0100000CB13E3D420F0100000CB13E3D42100100000CB13E3D42110100000CB13E3D42120100000CB13E3D42130100000CB13E3D42140100000CB13E3D42150100000CB13E3D42160100000CB13E3D42170100000CB13E3D42180100000CB13E3D42190100000CB13E3D421A0100000C"
        Paket "6A02"
    End Select
End Function

Function BankItemName(ByVal Slot As Integer) As String
        Dim a, b, C, L, adr As Long
        a = ReadLong(KO_ADR_DLG + 516)
        b = ReadLong(a + 296 + (4 * Slot))
        C = ReadLong(b + &H68)
        L = ReadLong(C + &H1C)
        If L > 15 Then
          adr = ReadLong(C + &HC)
          Else
          adr = C + &HC
          End If
          BankItemName = ""
          If L > 0 Then
              BankItemName = ReadString(adr, L)
         End If
End Function
Function BankItemID(ByVal Slot As Integer) As Long
        Dim a, b, C As Long
        a = ReadLong(KO_ADR_DLG + 516)
        b = ReadLong(a + 296 + (4 * Slot))
        C = ReadLong(b + &H68)
        If C <> 0 Then
        BankItemID = C
        Else
        BankItemID = 0
        End If
End Function
Public Sub ReadInn()
    Form1.List1.Clear
    Paket "2001" & NpcIDFinder("Neria") & "FFFFFFFF"
    Paket "4501" & NpcIDFinder("Neria")
    Paket "2001" & NpcIDFinder("Neria") & "FFFFFFFF": Sleep (1000)
    
    Dim n As Integer
        For n = 0 To 191
            BankadakiItemler(n) = BankItemName(n)
            Form1.List1.AddItem BankadakiItemler(n)
        Next
    Pause 0.1
End Sub


Public Function HexBankItemID(ByVal Slot As Integer) As String
        Dim offset, X, offset3, offset4 As Long
        Dim Base, Sonuc As Long
        offset = ReadLong(KO_ADR_DLG + 516)
        offset = ReadLong(offset + 296 + (4 * Slot))  'inventory slot
        
        Sonuc = ReadLong(ReadLong(offset + &H68)) + ReadLong(ReadLong(offset + &H6C))
        HexBankItemID = Strings.Mid(AlignDWORD(Sonuc), 1, 8)
    End Function
Function BuySC()
    Dim AlinacakSCSayisi As Long
    Dim ScrollID As String
    Dim scrollext As String
    AlinacakSCSayisi = val(Form1.Text2.Text) - GetItemCountInInv(41)
        If Form1.Combo1.Text = "Low Class" Then
            ScrollID = AlignDWORD(379221000)
            scrollext = "7"
        End If
        If Form1.Combo1.Text = "Middle Class" Then
            ScrollID = AlignDWORD(379205000)
            scrollext = "D"
        End If
        If Form1.Combo1.Text = "High Class" Then
            ScrollID = AlignDWORD(379016000)
            scrollext = "1"
        End If
        If Form1.Combo1.Text = "Blessed Upgrade Scroll" Then
            ScrollID = AlignDWORD(379021000)
            scrollext = "13"
        End If
        If AlinacakSCSayisi > 0 Or ScrollID <> "" Then
            Paket "2101" & "30E00300" & NpcIDFinder("Charon") & "01" & ScrollID & "1B" & Strings.Mid(AlignDWORD(AlinacakSCSayisi), 1, 7) & scrollext
            Paket "6A02"
        End If
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
newHex = Right(newHex, 2) & Mid(newHex, 3, 2) & Left(newHex, 2)
Case 8
newHex = Right(newHex, 2) & Mid(newHex, 5, 2) & Mid(newHex, 3, 2) & Left(newHex, 2)
Case Else
End Select
FormatHex = newHex
End Function

Function KarakterID()
KarakterID = Strings.Mid(AlignDWORD(LongOku(LongOku(KO_PTR_CHR) + KO_OFF_ID)), 1, 4)
End Function

Function DüþmanId()
DüþmanId = Strings.Mid(AlignDWORD(LongOku(LongOku(KO_PTR_CHR) + KO_OFF_MOB)), 1, 4)
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

SkillID = Strings.Mid(AlignDWORD(SýnýfBul & SkillSeç), 1, 6)
'Paket "3101" & SkillID & "00" & CharID & MobID & "0000000000000000000000000D00"
'Paket "3102" & SkillID & "00" & CharID & MobID & "000000000000010000000000"
'Paket "3103" & SkillID & "00" & CharID & MobID & "0000000000000100000000000000"
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
Paket "3101" & Strings.Mid(AlignDWORD(CharClass & "515"), 1, 6) & "00" & KarakterID & MobID & "00000000000000000000000000000D00"
Paket "3102" & Strings.Mid(AlignDWORD(CharClass & "515"), 1, 6) & "00" & KarakterID & MobID & "00000D020600B7019BFF0000F0000F00"
Paket "3103" & Strings.Mid(AlignDWORD(CharClass & "515"), 1, 6) & "00" & KarakterID & MobID & "00000000000000000400000000000000"
Paket "3103" & Strings.Mid(AlignDWORD(CharClass & "515"), 1, 6) & "00" & KarakterID & MobID & "00000000000000000400000000000000"
Paket "3103" & Strings.Mid(AlignDWORD(CharClass & "515"), 1, 6) & "00" & KarakterID & MobID & "00000000000000000500000000000000"
Bekle (50)
Paket "3101" & Strings.Mid(AlignDWORD(CharClass & "555"), 1, 6) & "00" & KarakterID & MobID & "00000000000000000000000000000F00"
Paket "3102" & Strings.Mid(AlignDWORD(CharClass & "555"), 1, 6) & "00" & KarakterID & MobID & "00000D020600B7019BFF0000F0000F00"
Paket "3103" & Strings.Mid(AlignDWORD(CharClass & "555"), 1, 6) & "00" & KarakterID & MobID & "00000000000000001500000000000000"
Paket "3103" & Strings.Mid(AlignDWORD(CharClass & "555"), 1, 6) & "00" & KarakterID & MobID & "00000000000000001500000000000000"
Paket "3103" & Strings.Mid(AlignDWORD(CharClass & "555"), 1, 6) & "00" & KarakterID & MobID & "00000000000000001600000000000000"
Paket "3103" & Strings.Mid(AlignDWORD(CharClass & "555"), 1, 6) & "00" & KarakterID & MobID & "00000000000000001700000000000000"
Paket "3103" & Strings.Mid(AlignDWORD(CharClass & "555"), 1, 6) & "00" & KarakterID & MobID & "00000000000000001800000000000000"
End If
End Function



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
If Form1.Combo7.Text = "1920" Then
SkillSeç = "020"
End If
If Form1.Combo7.Text = "960" Then
SkillSeç = "019"
End If
If Form1.Combo7.Text = "480" Then
SkillSeç = "018"
End If
If Form1.Combo7.Text = "180" Then
SkillSeç = "017"
End If
If Form1.Combo7.Text = "90" Then
SkillSeç = "016"
End If
SkillID = Strings.Mid(AlignDWORD(490 & SkillSeç), 1, 6)
Paket "3103" + SkillID + "00" + KarakterID + KarakterID + "0000000000000000000000000000"
End Sub
Public Sub CanPot()
Dim SkillSeç As String
Dim SkillID As String
If Form1.Combo6.Text = "720" Then
SkillSeç = "014"
End If
If Form1.Combo6.Text = "360" Then
SkillSeç = "013"
End If
If Form1.Combo6.Text = "180" Then
SkillSeç = "012"
End If
If Form1.Combo6.Text = "90" Then
SkillSeç = "011"
End If
If Form1.Combo6.Text = "45" Then
SkillSeç = "010"
End If
SkillID = Strings.Mid(AlignDWORD(490 & SkillSeç), 1, 6)
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
Paket "3103" + Strings.Mid(AlignDWORD(SýnýfBul & "705"), 1, 6) + "00" + KarakterID + KarakterID + "0000000000000000000000000000"
End Sub

Function CharId()
CharId = Strings.Mid(AlignDWORD(ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_ID)), 1, 4)
End Function

Public Function ItemAdet()
If Form1.up7.Text = "0" Then
  ItemAdet = "0" & Hex(CLng("00"))
Else
  ItemAdet = Hex(CLng(Form1.up7.Text))
End If
If Form1.up7.Text = "1" Then
  ItemAdet = "0" & Hex(CLng("01"))
End If
If Form1.up7.Text = "2" Then
  ItemAdet = "0" & Hex(CLng("02"))
End If
If Form1.up7.Text = "3" Then
  ItemAdet = "0" & Hex(CLng("03"))
End If
If Form1.up7.Text = "4" Then
  ItemAdet = "0" & Hex(CLng("04"))
End If
If Form1.up7.Text = "5" Then
  ItemAdet = "0" & Hex(CLng("05"))
End If
If Form1.up7.Text = "6" Then
  ItemAdet = "0" & Hex(CLng("06"))
End If
If Form1.up7.Text = "7" Then
  ItemAdet = "0" & Hex(CLng("07"))
End If
If Form1.up7.Text = "8" Then
  ItemAdet = "0" & Hex(CLng("08"))
End If
If Form1.up7.Text = "9" Then
  ItemAdet = "0" & Hex(CLng("09"))
End If

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

Private Function CheckForMessages(Handle As Long, MessageCount As Long)
Dim lMsgCount As Long, lNextMsgSize As Long
CheckForMessages = False
GetMailslotInfo Handle, ByVal 0&, lNextMsgSize, lMsgCount, ByVal 0&
MessageCount = lMsgCount
CheckForMessages = True
End Function
Function HexString(ByVal EvalString As String) As String
        Dim intStrLen As Integer
        Dim intLoop As Integer
        Dim strHex As String

        EvalString = Trim(EvalString)
        intStrLen = Len(EvalString)
        For intLoop = 1 To intStrLen
            strHex = strHex & Hex(Asc(Mid(EvalString, intLoop, 1)))
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
        For i = 16 To 43
          tmpLng2 = ReadLong(tmpLng1 + (&H20C + (4 * i)))
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

Public Function GetInventory(GetSlot As Integer, ByRef itemadi As String, ByRef ItemSayisi As String)
Dim Base As Long, Lng1 As Long, Lng2 As Long, Lng3 As Long, Lng4 As Long, tmpLng4 As Long
Dim lngItemID As Long, lngItemID_Ext As Long, lngItemNameLen As Long, AdrItemName As Long
Dim ItemNameB() As Byte
Dim ItemName As String
Dim lngKacTane, lngcurdura, ItemUpgrade As Long
Dim i As Integer
      
Base = LongOku(KO_PTR_DLG)
Lng1 = LongOku(Base + &H1B4)
      
For i = 16 To 42

Lng2 = ReadLong(Lng1 + (&H20 + (4 * i)))
Lng3 = ReadLong(Lng2 + &H68)
Lng4 = ReadLong(Lng2 + &H6C)

lngKacTane = LongOku(Lng2 + &H70)
lngcurdura = LongOku(Lng2 + &H74)
        
tmpLng4 = LongOku(Lng2 + &H6C)
lngItemID = LongOku(Lng3)
lngItemID_Ext = LongOku(Lng4)
lngItemID = lngItemID + lngItemID_Ext
lngItemNameLen = LongOku(Lng3 + &H1C)
AdrItemName = LongOku(Lng3 + &HC)
ItemName = ""
If lngItemNameLen > 0 Then
SýraByteOku AdrItemName, ItemNameB, lngItemNameLen
ItemName = StrConv(ItemNameB, vbUnicode)
End If
Next
itemadi = ItemName
ItemSayisi = lngKacTane
ItemUpgrade = lngItemID_Ext
GetInventory = lngItemID
End Function
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

 For i1 = 16 To 16
 For i2 = 17 To 17
  For i3 = 18 To 18
 For i4 = 19 To 19
  For i5 = 20 To 20
 For i6 = 21 To 21
  For i7 = 22 To 22
 For i8 = 23 To 23
  For i9 = 24 To 24
 For i10 = 25 To 25
  For i11 = 26 To 26
 For i12 = 27 To 27
  For i13 = 28 To 28
 For i14 = 29 To 29
  For i15 = 30 To 30
 For i16 = 31 To 31
  For i17 = 32 To 32
 For i18 = 33 To 33
  For i19 = 34 To 34
 For i20 = 35 To 35
  For i21 = 36 To 36
 For i22 = 37 To 37
  For i23 = 38 To 38
 For i24 = 39 To 39
 For i25 = 40 To 40
  For i26 = 41 To 41
 For i27 = 42 To 42
 For i28 = 43 To 43
 
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
Paket "5B02" + "01" + "1C27" + ItemNo + "00" + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(1) Then
Paket "5B02" + "01" + "1C27" + ItemNo1 + "01" + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(2) Then
Paket "5B02" + "01" + "1C27" + ItemNo2 + "02" + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(3) Then
Paket "5B02" + "01" + "1C27" + ItemNo3 + "03" + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(4) Then
Paket "5B02" + "01" + "1C27" + ItemNo4 + "04" + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(5) Then
Paket "5B02" + "01" + "1C27" + ItemNo5 + "05" + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(6) Then
 Paket "5B02" + "01" + "1C27" + ItemNo6 + "06" + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(7) Then
 Paket "5B02" + "01" + "1C27" + ItemNo7 + "07" + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(8) Then
  Paket "5B02" + "01" + "1C27" + ItemNo8 + "08" + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(9) Then
  Paket "5B02" + "01" + "1C27" + ItemNo9 + "09" + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(10) Then
 Paket "5B02" + "01" + "1C27" + ItemNo10 + "0A" + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(11) Then
  Paket "5B02" + "01" + "1C27" + ItemNo11 + "0B" + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(12) Then
  Paket "5B02" + "01" + "1C27" + ItemNo12 + "0C" + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(13) Then
  Paket "5B02" + "01" + "1C27" + ItemNo13 + "0D" + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(14) Then
  Paket "5B02" + "01" + "1C27" + ItemNo14 + "0E" + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(15) Then
  Paket "5B02" + "01" + "1C27" + ItemNo15 + "0F" + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(16) Then
 Paket "5B02" + "01" + "1C27" + ItemNo16 + Hex(CLng("16")) + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(17) Then
 Paket "5B02" + "01" + "1C27" + ItemNo17 + Hex(CLng("17")) + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(18) Then
 Paket "5B02" + "01" + "1C27" + ItemNo18 + Hex(CLng("18")) + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(19) Then
 Paket "5B02" + "01" + "1C27" + ItemNo19 + Hex(CLng("19")) + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(20) Then
Paket "5B02" + "01" + "1C27" + ItemNo20 + Hex(CLng("20")) + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(21) Then
Paket "5B02" + "01" + "1C27" + ItemNo21 + Hex(CLng("21")) + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(22) Then
Paket "5B02" + "01" + "1C27" + ItemNo22 + Hex(CLng("22")) + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(23) Then
 Paket "5B02" + "01" + "1C27" + ItemNo23 + Hex(CLng("23")) + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(24) Then
  Paket "5B02" + "01" + "1C27" + ItemNo24 + Hex(CLng("24")) + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(25) Then
  Paket "5B02" + "01" + "1C27" + ItemNo25 + Hex(CLng("25")) + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(26) Then
  Paket "5B02" + "01" + "1C27" + ItemNo26 + Hex(CLng("26")) + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
End If
If Form1.canta.Selected(27) Then
 Paket "5B02" + "01" + "1C27" + ItemNo27 + Hex(CLng("27")) + ScrollID + Form1.Text21.Text + "00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF00000000FF"
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
