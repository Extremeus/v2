Attribute VB_Name = "Get"



Function GetDistance(ChrkorX, ChrkorY, HedefX, HedefY) As Long
On Error Resume Next
GetDistance = Sqr((HedefX - ChrkorX) ^ 2 + (HedefY - ChrkorY) ^ 2)
End Function

Function GetAllMob(lsts As ListBox)
Dim EBP As Long, ESI As Long, EAX As Long, FEnd As Long
Dim LDist As Long, CrrDist As Long, LID As Long, LBase As Long, LMoBID As Long, zaman As Long
Dim Base_Addr As Long
LDist = 99999
zMobName = ""
zMobX = 0
zMobY = 0
zMobZ = 0
zMobID = 0
zMobDistance = 0
EBP = ReadLong(ReadLong(KO_FLDB) + &H34)
FEnd = ReadLong(ReadLong(ReadLong(ReadLong(KO_FLDB) + &H34) + 4) + 4)
ESI = ReadLong(EBP)
While ESI <> EBP
Base_Addr = ReadLong(ESI + &H10)
If Base_Addr = 0 Then Exit Function
If ReadLong(Base_Addr + &H6A8) = 0 And ByteOku(Base_Addr + &H2A0) <> 10 Then
    CrrDist = GetDistance(CharX, CharY, ReadFloat(Base_Addr + KO_OFF_X), ReadFloat(Base_Addr + KO_OFF_Y))
        If CrrDist < LDist Then
            LID = ReadLong(Base_Addr + KO_OFF_ID1)
            LBase = Base_Addr
            LDist = CrrDist
        End If
End If
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
Dim Name As String
If ReadLong(LBase + KO_OFF_NAMEC) >= 15 Then
Name = ReadString(ReadLong(LBase + KO_OFF_NAME), False, ReadLong(LBase + KO_OFF_NAMEC)) 'BUDA TAMAM
Else
Name = ReadString(LBase + KO_OFF_NAME, False, ReadLong(LBase + KO_OFF_NAMEC))
End If
If LongOku(Base_Addr + &H6A8) = 0 Then
If ListeAra(Name, lsts) = False Then MobListe.List1.AddItem Name
End If
Wend
End Function
Public Sub AyarlarýOkuHarita()
On Error Resume Next
If CharZone = 11 Then
Dosya = Dir(App.Path & "\KarusEslant1.ini")
If Dosya <> "" Then
For i = 0 To ReadINI("Bot", "lstMobName", App.Path & "\KarusEslant1.ini") ' boss listesi
 lstMobName.AddItem ReadINI("Bot", "lstMobName(" & i & ")", App.Path & "\KarusEslant1.ini")
Next
For i = 0 To ReadINI("Map", "MapListCount", App.Path & "\KarusEslant1.ini")
     lstMap.AddItem ReadINI("Map", "MapListName(" & i & ")", App.Path & "\KarusEslant1.ini")
     lstMap.ItemData(lstMap.NewIndex) = ReadINI("Map", "MapListID(" & i & ")", App.Path & "\KarusEslant1.ini")
Next
End If
End If
If CharZone = 13 Then
Dosya = Dir(App.Path & "\KarusEslant2.ini")
If Dosya <> "" Then
For i = 0 To ReadINI("Bot", "lstMobName", App.Path & "\KarusEslant2.ini") ' boss listesi
 lstMobName.AddItem ReadINI("Bot", "lstMobName(" & i & ")", App.Path & "\KarusEslant2.ini")
Next
For i = 0 To ReadINI("Map", "MapListCount", App.Path & "\KarusEslant2.ini")
     lstMap.AddItem ReadINI("Map", "MapListName(" & i & ")", App.Path & "\KarusEslant2.ini")
     lstMap.ItemData(lstMap.NewIndex) = ReadINI("Map", "MapListID(" & i & ")", App.Path & "\KarusEslant2.ini")
Next
End If
End If
If CharZone = 12 Then
Dosya = Dir(App.Path & "\HumanEslant1.ini")
If Dosya <> "" Then
For i = 0 To ReadINI("Bot", "lstMobName", App.Path & "\HumanEslant1.ini") ' boss listesi
 lstMobName.AddItem ReadINI("Bot", "lstMobName(" & i & ")", App.Path & "\HumanEslant1.ini")
Next
For i = 0 To ReadINI("Map", "MapListCount", App.Path & "\HumanEslant1.ini")
     lstMap.AddItem ReadINI("Map", "MapListName(" & i & ")", App.Path & "\HumanEslant1.ini")
     lstMap.ItemData(lstMap.NewIndex) = ReadINI("Map", "MapListID(" & i & ")", App.Path & "\HumanEslant1.ini")
Next
End If
End If
If CharZone = 15 Then
Dosya = Dir(App.Path & "\HumanEslant2.ini")
If Dosya <> "" Then
For i = 0 To ReadINI("Bot", "lstMobName", App.Path & "\HumanEslant2.ini") ' boss listesi
 lstMobName.AddItem ReadINI("Bot", "lstMobName(" & i & ")", App.Path & "\HumanEslant2.ini")
Next
For i = 0 To ReadINI("Map", "MapListCount", App.Path & "\HumanEslant2.ini")
     lstMap.AddItem ReadINI("Map", "MapListName(" & i & ")", App.Path & "\HumanEslant2.ini")
     lstMap.ItemData(lstMap.NewIndex) = ReadINI("Map", "MapListID(" & i & ")", App.Path & "\HumanEslant2.ini")
Next
End If
End If
If CharZone = 71 Then
Dosya = Dir(App.Path & "\HaritaCZ.ini")
If Dosya <> "" Then
For i = 0 To ReadINI("Bot", "lstMobName", App.Path & "\HaritaCZ.ini") ' boss listesi
 lstMobName.AddItem ReadINI("Bot", "lstMobName(" & i & ")", App.Path & "\HaritaCZ.ini")
Next
For i = 0 To ReadINI("Map", "MapListCount", App.Path & "\HaritaCZ.ini")
     lstMap.AddItem ReadINI("Map", "MapListName(" & i & ")", App.Path & "\HaritaCZ.ini")
     lstMap.ItemData(lstMap.NewIndex) = ReadINI("Map", "MapListID(" & i & ")", App.Path & "\HaritaCZ.ini")
Next
End If
End If
If CharZone = 75 Then
Dosya = Dir(App.Path & "\Krowaz.ini")
If Dosya <> "" Then
For i = 0 To ReadINI("Bot", "lstMobName", App.Path & "\Krowaz.ini") ' boss listesi
 lstMobName.AddItem ReadINI("Bot", "lstMobName(" & i & ")", App.Path & "\Krowaz.ini")
Next
For i = 0 To ReadINI("Map", "MapListCount", App.Path & "\Krowaz.ini")
     lstMap.AddItem ReadINI("Map", "MapListName(" & i & ")", App.Path & "\Krowaz.ini")
     lstMap.ItemData(lstMap.NewIndex) = ReadINI("Map", "MapListID(" & i & ")", App.Path & "\Krowaz.ini")
Next
End If
End If

End Sub

Public Function ReadStringAuto(addr As Long) As String
    Dim aRr(255) As Byte, bu As String
    If KO_HANDLE > 0 Then
        If ByteOku(addr + &H10) > 15 Then
            addr = ReadLong(addr)
        End If
        ReadProcessMem KO_HANDLE, addr, aRr(0), 255, 0&
        For i = 0 To 255
            bu = Chr$(aRr(i))
            If Asc(bu) = 0 Then
                Exit For
            End If
            Ret = Ret & bu
        Next
        ReadStringAuto = Trim(Ret)
    End If
End Function
Function GetTargetBase(target As Long)
    Dim pCode() As Byte, pStr As String, KO_FNC As Long
    
    If target > 9999 Then
        KO_FNC = KO_FMBS
    ElseIf target > 0 Then
        KO_FNC = KO_FPBS
    Else
        Exit Function
    End If

    If FuncPtr <> 0 Then
        pStr = "60" & _
              "8B0D" & _
              AlignDWORD(KO_FLDB) & _
              "6A01" & _
              "68" & _
              AlignDWORD(target) & _
              "BF" & _
              AlignDWORD(KO_FNC) & _
              "FFD7" & _
              "A3" & _
              AlignDWORD(FuncPtr) & _
              "61C3"
        Hex2Byte pStr, pCode
        ExecuteRemoteCode pCode, True
        GetTargetBase = ReadLong(FuncPtr)
    End If
End Function

Function GetAllPLayer(lsts As ListBox)
Dim EBP As Long, ESI As Long, EAX As Long, FEnd As Long
Dim LDist As Long, CrrDist As Long, LID As Long, LBase As Long, LMoBID As Long, zaman As Long
Dim Base_Addr As Long
LDist = 99999
zMobName = ""
zMobX = 0
zMobY = 0
zMobZ = 0
zMobID = 0
zMobDistance = 0
EBP = ReadLong(ReadLong(KO_FLDB) + &H40)
FEnd = ReadLong(ReadLong(ReadLong(ReadLong(KO_FLDB) + &H40) + 4) + 4)
ESI = ReadLong(EBP)
While ESI <> EBP
Base_Addr = ReadLong(ESI + &H10)
If Base_Addr = 0 Then Exit Function
If ReadLong(Base_Addr + &H6A8) = 0 And ByteOku(Base_Addr + &H2A0) <> 10 Then
    CrrDist = GetDistance(CharX, CharY, ReadFloat(Base_Addr + KO_OFF_X), ReadFloat(Base_Addr + KO_OFF_Y))
        If CrrDist < LDist Then
            LID = ReadLong(Base_Addr + KO_OFF_ID1)
            LBase = Base_Addr
            LDist = CrrDist
        End If
End If
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
Dim Name As String
If ReadLong(LBase + KO_OFF_NAMELEN) >= 15 Then
Name = ReadString(ReadLong(LBase + KO_OFF_NAME), False, ReadLong(LBase + KO_OFF_NAMELEN)) 'BUDA TAMAM
Else
Name = ReadString(LBase + KO_OFF_NAME, False, ReadLong(LBase + KO_OFF_NAMELEN))
End If
If LongOku(Base_Addr + &H6A8) = 0 Then
If ListeAra(Name, lsts) = False Then MobListe.List2.AddItem Name
End If
Wend
End Function
