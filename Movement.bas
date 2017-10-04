Attribute VB_Name = "Movement"
Public Function MobHpOku() As Long
Dim xCode() As Byte, Paket As String
Dim MobID As Long
MobID = ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_MOB)
If FuncPtr = 0 Then: FuncPtr = VirtualAllocEx(KO_HANDLE, 0, 1024, MEM_COMMIT, PAGE_READWRITE)
If MobID > 9999 Then
Paket = "608B0D" & AlignDWORD(KO_FLDB) & "6A01" & "68" & AlignDWORD(MobID) & "BF" & AlignDWORD(KO_FMBS) & "FFD7" & "A3" & AlignDWORD(FuncPtr) & "61C3"
Else
Paket = "608B0D" & AlignDWORD(KO_FLDB) & "6A01" & "68" & AlignDWORD(MobID) & "BF" & AlignDWORD(KO_FPBS) & "FFD7" & "A3" & AlignDWORD(FuncPtr) & "61C3"

End If
Hex2Byte Paket, xCode: ExecuteRemoteCode xCode, True
MobHpOku = ReadLong(ReadLong(FuncPtr) + KO_OFF_HP)
End Function
Public Function MobHpOkuMax() As Long
Dim xCode() As Byte, Paket As String
Dim MobID As Long
MobID = ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_MOB)
If FuncPtr = 0 Then: FuncPtr = VirtualAllocEx(KO_HANDLE, 0, 1024, MEM_COMMIT, PAGE_READWRITE)
If MobID > 9999 Then
Paket = "608B0D" & AlignDWORD(KO_FLDB) & "6A01" & "68" & AlignDWORD(MobID) & "BF" & AlignDWORD(KO_FMBS) & "FFD7" & "A3" & AlignDWORD(FuncPtr) & "61C3"
Else
Paket = "608B0D" & AlignDWORD(KO_FLDB) & "6A01" & "68" & AlignDWORD(MobID) & "BF" & AlignDWORD(KO_FPBS) & "FFD7" & "A3" & AlignDWORD(FuncPtr) & "61C3"

End If
Hex2Byte Paket, xCode: ExecuteRemoteCode xCode, True
MobHpOkuMax = ReadLong(ReadLong(FuncPtr) + KO_OFF_MAXHP)
End Function

Public Function targetName() As String
Dim PaketByte() As Byte, Paket As String
Dim MobID As Long
MobID = ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_MOB)
If FuncPtr = 0 Then: FuncPtr = VirtualAllocEx(KO_HANDLE, 0, 1024, MEM_COMMIT, PAGE_READWRITE)
If MobID > 9999 Then
Paket = "608B0D" & AlignDWORD(KO_FLDB) & "6A01" & "68" & AlignDWORD(MobID) & "BF" & AlignDWORD(KO_FMBS) & "FFD7" & "A3" & AlignDWORD(FuncPtr) & "61C3"
Else
Paket = "608B0D" & AlignDWORD(KO_FLDB) & "6A01" & "68" & AlignDWORD(MobID) & "BF" & AlignDWORD(KO_FPBS) & "FFD7" & "A3" & AlignDWORD(FuncPtr) & "61C3"
End If
ConvHEX2ByteArray Paket, PaketByte: ExecuteRemoteCode PaketByte, True
targetName = ReadLong(FuncPtr)
End Function

Function TargetNameBase(Base As Long) As String
If ReadLong(Base + KO_OFF_NAME + 20) >= 20 Then
TargetNameBase = ReadStringAuto(ReadLong(Base + KO_OFF_NAME))
Else
TargetNameBase = ReadStringAuto(Base + KO_OFF_NAME)
End If
End Function
