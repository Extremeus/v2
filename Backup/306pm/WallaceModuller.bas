Attribute VB_Name = "KoxpModular"
''Varibles
Public KO_OFF_Y As Long
Public KO_OFF_X As Long
Public KO_OFF_Z As Long
Public KO_OFF_MX As Long
Public KO_OFF_MY As Long
Public KO_OFF_MZ As Long
Public KO_OFF_Go1 As Long
Public KO_OFF_GoX As Long
Public KO_OFF_GoLD As Long
Public KO_OFF_GoY As Long
Public KO_OFF_Go2 As Long
Public KO_OFF_ZONE As Long
Public KO_OFF_LVL As Long
Public KO_OFF_EXP As Long
Public KO_OFF_MAXEXP As Long
Public KO_OFF_NATION As Long
Public KO_OFF_NAME As Long
Public KO_OFF_WH As Long
Public KO_FNCZ As Long
Public KO_FNCB As Long
Public KO_OFF_CHAT As Long
Public KO_RECVHK As Long
Public KO_RCVHKB As Long
Public KO_RCVHKB1 As Long
Public KO_RCVHKB2 As Long
Public KO_RCVHKB3 As Long
Public KO_RECVHK1 As Long
Public KO_RECVHK2 As Long
Public KO_RECVHK3 As Long
Public Canpottime As Long
Public Manapottime As Long
Public BytesAddr_MobZ As Long
Public BytesAddr As Long
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
Public RepairID As String
Public ItemSlot As String
Public RecvID As String
Public LastBoxID As Long
Public OpenNextBox As Boolean
Public LastRepair As Date
Public RepairDiff As Long
Public LootBuffer As String

Public sSid As Long, LVL As Long, tmpMob As Long, GetSlot As Integer, GetSlot2 As Integer
Public SlotX As Long, SlotY As Long, SlotZ As Long
Public DaggerSlot As Long
Public BowID As String
Public BowID2 As String

Public PriestHealTime As Long
Public PriestBuffTime As Long
Public ÖncekiExp As Long
Public ExpZaman As Long
Public DeadMob As String
Public DeadMobZYap As Boolean
Public lastID
Public targetid As Long
Public HexSözcük As String
'start declaring autoattack log
'Not created by me.
Option Explicit

Public Type PARTY_VAULE
ID As Long
LVL As Long
RACE As Long
HP As Long
MaxHP As Long
MP As Long
MAXMP As Long
End Type


Public Const MAXINV_ARRAY = 41

Public Type INV_VAULE
ID As Long
EXT As Long
End Type

Public Type INV_INFORMATION
Slot(MAXINV_ARRAY) As INV_VAULE
End Type

Public Type CHAR_INFORMATION
NEAR As Long
MEID As Long
TID As Long
NT As Long
MAXMP As Long
MP As Long
MaxHP As Long
HP As Long
Class As Long
LVL As Long
GOLD As Long
EXP As Long
MAXEXP As Long
ZONE As Long
X As Long
Y As Long
Z As Long
MX As Long
MY As Long
MZ As Long
Mobx As Long
MobY As Long
MobZ As Long
End Type

Public Cinfo As CHAR_INFORMATION

Public Iinfo As INV_INFORMATION
'Oto Kutu




Public Type MODULEENTRY32
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
    szExeFile As String * 260
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
   ID As Long
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
Public Const TH32CS_SNAPPROCESS As Long = 2&
Public Declare Function OpenProcess Lib "kernel32" (ByVal dwDesiredAccess As Long, ByVal bInheritHandle As Long, ByVal dwProcessId As Long) As Long
Public Const PROCESS_CREATE_THREAD = &H2
Public Const PROCESS_VM_OPERATION = &H8
Public Const PROCESS_VM_WRITE = &H20
Public Declare Function CreateToolhelpSnapshot Lib "kernel32" Alias "CreateToolhelp32Snapshot" (ByVal lFlags As Long, ByVal lProcessID As Long) As Long
Public Declare Function Process32First Lib "kernel32" (ByVal hSnapShot As Long, uProcess As PROCESSENTRY32) As Long
Public Declare Function Process32Next Lib "kernel32" (ByVal hSnapShot As Long, uProcess As PROCESSENTRY32) As Long
Public Declare Function Module32First Lib "kernel32" (ByVal hSnapShot As Long, uProcess As MODULEENTRY32) As Long
Public Declare Function Module32Next Lib "kernel32" (ByVal hSnapShot As Long, uProcess As MODULEENTRY32) As Long
Public Declare Function WriteProcessMemory Lib "kernel32" (ByVal hProcess As Long, ByVal lpBaseAddress As Any, lpBuffer As Any, ByVal nSize As Long, lpNumberOfBytesWritten As Long) As Long
Public Declare Function CreateRemoteThread Lib "kernel32" (ByVal ProcessHandle As Long, lpThreadAttributes As Long, ByVal dwStackSize As Long, ByVal lpStartAddress As Any, ByVal lpParameter As Any, ByVal dwCreationFlags As Long, lpThreadID As Long) As Long
Public Declare Function VirtualAllocEx Lib "kernel32" (ByVal hProcess As Long, ByVal lpAddress As Long, ByVal dwSize As Long, ByVal flAllocationType As Long, ByVal flProtect As Long) As Long
Public Declare Function VirtualFreeEx Lib "kernel32" (ByVal hProcess As Long, lpAddress As Any, ByVal dwSize As Long, ByVal dwFreeType As Long) As Long
Public Declare Function GetPublicProfileString Lib "kernel32" Alias "GetPublicProfileStringA" (ByVal lpApplicationname As String, ByVal lpKeyName As Any, ByVal lpDefault As String, ByVal lpReturnedString As String, ByVal nSize As Long, ByVal lpFileName As String) As Long
Public Declare Function WritePublicProfileSection Lib "kernel32" Alias "WritePublicProfileSectionA" (ByVal lpAppName As String, ByVal lPaketing As String, ByVal lpFileName As String) As Long
Public Declare Function WritePublicProfileString Lib "kernel32" Alias "WritePublicProfileStringA" (ByVal lpApplicationname As String, ByVal lpKeyName As Any, ByVal lPaketing As Any, ByVal lpFileName As String) As Long
Public Declare Function ReadFileSimple Lib "kernel32" Alias "ReadFile" (ByVal hFile As Long, ByVal lpBuffer As String, ByVal nNumberOfBytesToRead As Long, lpNumberOfBytesRead As Long, ByVal Zero As Long) As Long
Public Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal lpApplicationname As String, ByVal lpKeyName As Any, ByVal lpDefault As String, ByVal lpReturnedString As String, ByVal nSize As Long, ByVal lpFileName As String) As Long
Public Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal lpApplicationname As String, ByVal lpKeyName As Any, ByVal lpString As Any, ByVal lpFileName As String) As Long
Public Declare Function ShowWindow Lib "user32.dll" (ByVal Hwnd As Long, ByVal nCmdShow As Long) As Long
Public Declare Function SetWindowText Lib "user32" Alias "SetWindowTextA" (ByVal Hwnd As Long, ByVal lpString As String) As Long
Public Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal Hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Public Declare Function CreateThread Lib "kernel32" (lpThreadAttributes As Long, ByVal dwStackSize As Long, ByVal lpStartAddress As Long, ByVal lpParameter As Long, ByVal dwCreationFlags As Long, lpThreadID As Long) As Long
Public Declare Function SuspendThread Lib "kernel32" (ByVal hThread As Long) As Long
Public Declare Function OpenThread Lib "kernel32" (ByVal dwDesiredAccess As Long, ByVal bInheritHandle As Long, ByVal dwThreadId As Long) As Long
Public Declare Function GetExitCodeProcess Lib "kernel32" (ByVal hProcess As Long, lpExitCode As Long) As Long
Public Declare Function TerminateProcess Lib "kernel32" (ByVal hProcess As Long, ByVal uExitCode As Long) As Long
Public Declare Function GetWindow Lib "user32" (ByVal Hwnd As Long, ByVal wCmd As Long) As Long
Public Declare Function IsWindowVisible Lib "user32" (ByVal Hwnd As Long) As Long
Public Declare Function FindWindowH Lib "user32" Alias "FindWindowA" (ByVal lpClassName As Long, ByVal lpWindowName As Long) As Long
Public Declare Function NtQuerySystemInformation Lib "ntdll.dll" (ByVal dwInfoType As Long, ByVal lpStructure As Long, ByVal dwSize As Long, dwReserved As Long) As Long
Public Declare Function GetCurrentProcess Lib "kernel32.dll" () As Long
Public Declare Function GetLastError Lib "kernel32.dll" () As Long
Public Const MEM_COMMIT = &H1000
Public Const MEM_RELEASE = &H8000
Public Const PAGE_READWRITE = &H4

Public Declare Function GetModuleHandle Lib "kernel32" Alias "GetModuleHandleA" (ByVal lpModuleName As String) As Long
Public Declare Function GetProcAddress Lib "kernel32" (ByVal hModule As Long, ByVal lpProcName As String) As Long
Public Declare Function WaitForSingleObject Lib "kernel32" (ByVal hHandle As Long, ByVal dwMilliseconds As Long) As Long
Public Const INFINITE = &HFFFF

Public Declare Function CloseHandle Lib "kernel32" (ByVal hObject As Long) As Long
Public Declare Function loot Lib "DLL.dll" Alias "Loot" (ByVal Slot As String, ByVal Enable As Boolean) As Boolean
Public Declare Sub Sleep Lib "kernel32.dll" (ByVal dwMilliseconds As Long)
Public Declare Function SetCordinate Lib "DLL.dll" (ByVal Slot As String, ByVal X As Long, ByVal Y As Long) As Boolean
Public Declare Function SendPacket Lib "DLL.dll" (ByVal Slot As String, ByRef lpBuffer As Any, ByVal nSize As Long) As Boolean
Public Declare Function CharInfo Lib "DLL.dll" () As CHAR_INFORMATION
Public Declare Function GetAsyncKeyState Lib "user32" (ByVal vKey As Long) As Integer
Public Declare Function GetTickCount Lib "kernel32" () As Long
Public Declare Function WallHack Lib "DLL.dll" (ByVal Slot As String, ByVal val As Long) As Long
Public Declare Function GetInfo Lib "DLL.dll" (ByVal InfoType As Long) As Long
Public Declare Function CreateP Lib "DLL.dll" (ByVal Direct As String, ByVal DLL As String) As Boolean




Public Type PARTY_INFORMATION
COUNT As Long
M(8) As PARTY_VAULE
End Type




Public Pinfo As PARTY_INFORMATION
'Oto Kutu




Function OffsetleriYükle()
    UseAutoLoot = 0
    OpenNextBox = True
    LastBoxID = 0
    UseAutoSell = 0

 KO_PTR_CHR = &HE13EF0
 KO_PTR_DLG = &HDFAEA8
 KO_PTR_PKT = &HDFAE74
 KO_SND_FNC = &H48C9C0
 KO_ADR_CHR = ReadLong(KO_PTR_CHR)
 KO_ADR_DLG = ReadLong(KO_PTR_DLG)
'-------Recv Pointerlar-------
 KO_RECV_PTR = &HB57208
 KO_RECV_FNC = &H53E980
 KO_SND_PACKET = KO_PTR_PKT + &HC5
'-------XignCode Pointerlar-------
'Public Const KO_CRE_THREAD           As Long = &H9A53F1
'Public Const KO_LANC_BYPASS          As Long = &H9A9C42
'Public Const KO_XIGN_BYPASS          As Long = &H9A8D3D
'Public Const KO_XIGN_EXBPS1          As Long = &H4AE522
'Public Const KO_XIGN_EXBPS2          As Long = &H4AE50C
'Public Const KO_XIGN_EXBPS3          As Long = &H4AE531
'-------Speed Pointerlar-------
'Public Const KO_SH_HOOK              As Long = &H4E28EB
'Public Const KO_SH_VALUE             As Long = &HB523A8
'Public Const KO_SPD_HOOK             As Long = &H4E2988
'-------Peri Pointerlar-------
'Public Const KO_PERI_TAK             As Long = &H56AE90
'Public Const KO_PERI_MLOOT           As Long = &HCA1060
'Public Const KO_PERI_CLOOT           As Long = &HCA105C
'-------Diger Pointerlar-------
'Public Const KO_EXE_WEB              As Long = &H4B2DF0
'KO_NODC = &HB52260
'Public Const KO_PM                   As Long = &HC43138
'Public Const KO_M_TIMEOUT            As Long = &HB4CD04
'Public Const KO_EXCEPTION            As Long = &H9A6960
'Public Const KO_FINDITEM             As Long = &H4B5710
'Public Const KO_FINDITEM2            As Long = &H4B5770
'Public Const KO_INFO_MSG             As Long = &H69F3F0
'Public Const KO_BASE_CON             As Long = &H56F700
'Public Const KO_BASE_DES             As Long = &H56F830
'Public Const KO_PTR_OL1              As Long = &HDF5E84
'Public Const KO_ADR_OL1              As Long = &H4D11E0
'Public Const KO_ADR_OL2              As Long = &H4D5B50
'Public Const KO_ADR_OL3              As Long = &H4D8250
'Public Const KO_ADR_OL4              As Long = &H4D1720
'Public Const KO_ADR_OL5              As Long = &H4BC1D0
'Public Const KO_ADR_OL6              As Long = &H4C1050
'Public Const KO_ADR_OL7              As Long = &H4C5DDC
'Public Const KO_ADR_ROTA1            As Long = &H548DF0
'Public Const KO_ADR_ROTA2            As Long = &H548D90
'-------Seç Pointerlar-------
 KO_FLDB = &HE13EEC
 'KO_ITOB = &HE0EC54
 'KO_ITEB = &HE0EC58
 'KO_ISEN = &H542060
 'KO_SMMB = &HE0ED18
 'KO_STMB = &H5174B0
 KO_FNCZ = &H51ED20
 'KO_FNCX = &H51EB60
 'KO_FNCB = &H51EC10
 'KO_FMBS = &H4EE420
 'KO_FPBS = &H4EF390
 'KO_FNSB = &H4F1770
 'KO_FPOX = &H6899C0
'-------Offsetler-------
 KO_OFF_NAME = &H688
 'KO_OFF_NAMEC = &H698
 KO_OFF_CLASS = &H6B0
 KO_OFF_NATION = &H6A8
 KO_OFF_MOB = &H644
 KO_OFF_ID = &H680
 KO_OFF_WH = &H6C0
 KO_OFF_LOOT = &H93C
 KO_OFF_KUTU = &H918
 KO_OFF_KUTU2 = &H930
 KO_OFF_HP = &H6BC
 KO_OFF_MAXHP = &H6B8
 KO_OFF_MP = &HB60
 KO_OFF_MAXMP = &HB5C
 'KO_OFF_EXP = &HB78
 'KO_OFF_MAXEXP = &HB70
 KO_OFF_PARTY = &H2FC
 KO_OFF_GoLD = &HB6C
 KO_OFF_ZONE = &HC00
 KO_OFF_LVL = &H6B4
 KO_OFF_X = &HD8
 KO_OFF_Y = &HE0
 KO_OFF_Z = &HDC
 KO_OFF_MX = &HF9C
 KO_OFF_MY = &HFA4
 KO_OFF_MZ = &HFA0
 KO_OFF_Go1 = &HF90
 KO_OFF_Go2 = &H3F0
 'KO_OFF_PTC = &H300
  'KO_OFF_INV = &H1B4
 KO_OFF_SWIFT = &H7C4
'-------Bireysel Offsetler-------
 'KO_OFF_RSP = &H418
 'KO_OFF_GEC = &H6A8
 'KO_PT_BASE = &H1E8
 'KO_PT_BASE2 = &H2FC
 'KO_SKILLBASE = &H1EC
 'KO_SKILL1 = &H180
 'KO_SKILL2 = &H184
 'KO_SKILL3 = &H188
 'KO_SKILLMASTER = &H18C
 'KO_MOB_EFF = &H2A0

End Function

Function AutoMobZ() 'Z (Enemy)
BytesAddr_MobZ = VirtualAllocEx(KO_HANDLE, 0, 1024, MEM_COMMIT, PAGE_READWRITE)
Dim xCode() As Byte, xStr As String
xStr = "60" & "8B0D" & AlignDWORD(KO_PTR_DLG) & "BF" & AlignDWORD(KO_FNCZ) & "FFD761C3"
Hex2Byte xStr, xCode
ExecuteRemoteCode xCode, True
'VirtualFreeEx KO_HANDLE, BytesAddr_MobZ, 0, MEM_RELEASE&
End Function
Function AutoMobB() 'B (NPC)
Dim xCode() As Byte, xStr As String
xStr = "60" & "8B0D" & AlignDWORD(KO_PTR_DLG) & "BF" & AlignDWORD(KO_FNCB) & "FFD761C3"
Hex2Byte xStr, xCode
ExecuteRemoteCode xCode, True
End Function

Public Function CharÝsim()
Dim pPtr As Long
Dim pStr As String
Dim yeniadrEs As Long
pPtr = ReadLong(KO_PTR_CHR)
yeniadrEs = ReadLong(pPtr + 1672)
pStr = ReadString(yeniadrEs, 20)
CharÝsim = pStr '"TurkumDahaGuzelim"
End Function

Public Function KarakterOku(s As Integer, Ozellik As String)
Select Case Ozellik
Case "X": KarakterOku = KarakterX
Case "Y": KarakterOku = KarakterY
Case "Z": KarakterOku = KarakterZ
Case "Level": KarakterOku = ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_LVL)
Case "ID": KarakterOku = Strings.Mid(AlignDWORD(ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_ID)), 1, 4)
Case "Hp": KarakterOku = ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_HP)
Case "Mp": KarakterOku = ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_MP)
Case "MaxHP": KarakterOku = ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_MAXHP)
Case "MaxMP": KarakterOku = ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_MAXMP)
Case "Para": KarakterOku = ReadLong(ReadLong(KO_PTR_CHR) + 2924)
Case "Zone": KarakterOku = ReadLong(ReadLong(KO_PTR_CHR) + 2660)
Case "Class": KarakterOku = ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_CLASS)
Case "Exp": KarakterOku = ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_EXP)
Case "MaxExp": KarakterOku = ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_MAXEXP)
Case "Dc": KarakterOku = ReadLong(ReadLong(KO_PTR_PKT) + &H4004C)
Case "Nt": KarakterOku = ReadLong(ReadLong(KO_PTR_CHR) + &H5E0)
Case "Hýz": KarakterOku = ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_SWIFT)
Case "Name": KarakterOku = CharÝsim(s)
End Select
End Function
Function GetUzaklýk(X, Y)
On Error Resume Next
GetUzaklýk = Fix((((X - KarakterX()) * (X - KarakterX()) + (Y - KarakterY()) * (Y - KarakterY())) ^ 0.5))
End Function

Function aLLID(Sýra As Integer) As String
Select Case Sýra
Case 0
aLLID = Strings.Mid(AlignDWORD(LongOku(LongOku(LongOku(LongOku(LongOku(KO_OFF_PARTY) + PartyOffset) + PartyValue) + 0) + PartyID) + 0), 1, 4)
Case 1
aLLID = Strings.Mid(AlignDWORD(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(KO_OFF_PARTY) + PartyOffset) + PartyValue) + 0)) + PartyID) + 0), 1, 4)
Case 2
aLLID = Strings.Mid(AlignDWORD(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(KO_OFF_PARTY) + PartyOffset) + PartyValue) + 0))) + PartyID) + 0), 1, 4)
Case 3
aLLID = Strings.Mid(AlignDWORD(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(KO_OFF_PARTY) + PartyOffset) + PartyValue) + 0)))) + PartyID) + 0), 1, 4)
Case 4
aLLID = Strings.Mid(AlignDWORD(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(KO_OFF_PARTY) + PartyOffset) + PartyValue) + 0))))) + PartyID) + 0), 1, 4)
Case 5
aLLID = Strings.Mid(AlignDWORD(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(KO_OFF_PARTY) + PartyOffset) + PartyValue) + 0)))))) + PartyID) + 0), 1, 4)
Case 6
aLLID = Strings.Mid(AlignDWORD(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(KO_OFF_PARTY) + PartyOffset) + PartyValue) + 0))))))) + PartyID) + 0), 1, 4)
Case 7
aLLID = Strings.Mid(AlignDWORD(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(KO_OFF_PARTY) + PartyOffset) + PartyValue) + 0)))))))) + PartyID) + 0), 1, 4)
End Select
End Function
Function aLLNick(Sýra As Integer) As String
Select Case Sýra
Case 0
aLLNick = YazýOku(LongOku(LongOku(LongOku(LongOku(LongOku(KO_OFF_PARTY) + PartyOffset) + PartyValue) + &H0) + PartyAdý) + &H0, LongOku(LongOku(LongOku(LongOku(LongOku(KO_OFF_PARTY) + PartyOffset) + PartyValue) + &H0) + PartyAdý))
Case 1
aLLNick = YazýOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(KO_OFF_PARTY) + PartyOffset) + PartyValue) + &H0) + &H0) + PartyAdý) + &H0, LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(KO_OFF_PARTY) + PartyOffset) + PartyValue) + &H0) + &H0) + PartyAdý))
Case 2
aLLNick = YazýOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(KO_OFF_PARTY) + PartyOffset) + PartyValue) + &H0) + &H0) + &H0) + PartyAdý) + &H0, LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(KO_OFF_PARTY) + PartyOffset) + PartyValue) + &H0) + &H0) + &H0) + PartyAdý))
Case 3
aLLNick = YazýOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(KO_OFF_PARTY) + PartyOffset) + PartyValue) + &H0) + &H0) + &H0) + &H0) + PartyAdý) + &H0, LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(KO_OFF_PARTY) + PartyOffset) + PartyValue) + &H0) + &H0) + &H0) + &H0) + PartyAdý))
Case 4
aLLNick = YazýOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(KO_OFF_PARTY) + PartyOffset) + PartyValue) + &H0) + &H0) + &H0) + &H0) + &H0) + PartyAdý) + &H0, LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(KO_OFF_PARTY) + PartyOffset) + PartyValue) + &H0) + &H0) + &H0) + &H0) + &H0) + PartyAdý))
Case 5
aLLNick = YazýOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(KO_OFF_PARTY) + PartyOffset) + PartyValue) + &H0) + &H0) + &H0) + &H0) + &H0) + &H0) + PartyAdý) + &H0, LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(KO_OFF_PARTY) + PartyOffset) + PartyValue) + &H0) + &H0) + &H0) + &H0) + &H0) + &H0) + PartyAdý))
Case 6
aLLNick = YazýOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(KO_OFF_PARTY) + PartyOffset) + PartyValue) + &H0) + &H0) + &H0) + &H0) + &H0) + &H0) + &H0) + PartyAdý) + &H0, LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(KO_OFF_PARTY) + PartyOffset) + PartyValue) + &H0) + &H0) + &H0) + &H0) + &H0) + &H0) + &H0) + PartyAdý))
Case 7
aLLNick = YazýOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(KO_OFF_PARTY) + PartyOffset) + PartyValue) + &H0) + &H0) + &H0) + &H0) + &H0) + &H0) + &H0) + &H0) + PartyAdý) + &H0, LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(LongOku(KO_OFF_PARTY) + PartyOffset) + PartyValue) + &H0) + &H0) + &H0) + &H0) + &H0) + &H0) + &H0) + &H0) + PartyAdý))
End Select
End Function
Function GetPlayerBase(ByVal TargetChar As Long)
        On Error Resume Next
        Dim Ptr As Long, tmpCharBase As Long, tmpBase As Long, IDArray As Long, BaseAddr As Long, Mob As Long
        Mob = TargetChar: Ptr = LongOku(KO_FLDB): tmpCharBase = LongOku(Ptr + &H3C): tmpBase = LongOku(tmpCharBase + &H4)
        While tmpBase <> 0
            IDArray = LongOku(tmpBase + &HC)
            If IDArray >= Mob Then
                If IDArray = Mob Then BaseAddr = LongOku(tmpBase + &H1E4) 'BASE
                tmpBase = LongOku(tmpBase + &H0)
            Else: tmpBase = LongOku(tmpBase + &H8)
            End If
        Wend
     GetPlayerBase = BaseAddr
    End Function
Public Sub IDTakip()
On Error Resume Next
Dim X As Single
Dim Y As Single
X = Form1.Label2
Y = Form1.Label3
If X = "0" Or Y = 0 Then
Else 'knk buyur ?
If KarakterX = CharX And KarakterY = CharY Then Exit Sub
    WriteLong ReadLong(KO_PTR_CHR) + &HF90, 1
    WriteFloat ReadLong(KO_PTR_CHR) + &HF9C, CharX
    WriteFloat ReadLong(KO_PTR_CHR) + &HFA4, CharY
    WriteLong ReadLong(KO_PTR_CHR) + &H3F0, 2
End If
End Sub
