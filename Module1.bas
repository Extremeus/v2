Attribute VB_Name = "Attack"
Public Sub PriestAtak(UserID As Long, SkillNo As Long)
On Error Resume Next
Dim SkillID As String
SkillID = Strings.mID(AlignDWORD(ClassOku & Right$(SkillNo, 3)), 1, 6)
Paket "3103" + SkillID + "00" + KarakterID + Formathex(hex$(UserID), 4) + "0100010000000000000000000000"
Paket "3101" + SkillID + "00" + KarakterID + DüşmanId + "00000000000000000000000000000F00"
If Form1.Check5.value = 1 And MobUzaklıK <= 7 Then
kUzaklık = 7: Paket "080101" + Formathex(hex$(UserID), 4) + "FF000000"
End If
End Sub




Public Sub minor()
Paket "3103" + Strings.mID(AlignDWORD(ClassOku & "705"), 1, 6) + "00" + CharId + CharId + "0000000000000000000000000000"
End Sub

Public Sub Sprint()
If SkillBasılımı(ClassOku & "002") = False And SkillBasılımı(ClassOku & "010") = False And SkillBasılımı(ClassOku & "725") = False Then
Paket ("3103" + Strings.mID(AlignDWORD(ClassOku & "002"), 1, 6) + "00" + CharId + CharId + "000000000000000000000000")
End If
End Sub

Public Sub Defense()
If SkillBasılımı(ClassOku & "007") = False Then
Paket ("3103" + Strings.mID(AlignDWORD(ClassOku & "007"), 1, 6) + "00" + CharId + CharId + "000000000000000000000000")
End If
End Sub

Public Sub Gain()
If SkillBasılımı(ClassOku & "705") = False Then
Paket ("3103" + Strings.mID(AlignDWORD(ClassOku & "705"), 1, 6) + "00" + CharId + CharId + "000000000000000000000000")
End If
End Sub

Public Sub Swift()
If SkillBasılımı(ClassOku & "002") = False And SkillBasılımı(ClassOku & "010") = False And SkillBasılımı(ClassOku & "725") = False Then
Paket "3101" + Strings.mID(AlignDWORD(ClassOku & "010"), 1, 6) + "00" + CharId + CharId + Formathex(hex$(UserID), 4) + "0000000000000000000000000F00"
Paket "3103" + Strings.mID(AlignDWORD(ClassOku & "010"), 1, 6) + "00" + CharId + CharId + "F7020400AE01000000000000"
End If
End Sub

Public Sub SwiftID(UserID As Long)
Paket "3101" + Strings.mID(AlignDWORD(ClassOku & "010"), 1, 6) + "00" + CharId + Formathex(hex$(UserID), 4) + "0000000000000000000000000F00"
Paket "3103" + Strings.mID(AlignDWORD(ClassOku & "010"), 1, 6) + "00" + CharId + Formathex(hex$(UserID), 4) + "F7020400AE01000000000000"
End Sub

Public Sub LightFeet()
If SkillBasılımı(ClassOku & "002") = False And SkillBasılımı(ClassOku & "010") = False And SkillBasılımı(ClassOku & "725") = False Then
Paket "3103" + Strings.mID(AlignDWORD(ClassOku & "725"), 1, 6) + "00" + CharId + CharId + "0000000000000000000000000000"
End If
End Sub



Public Sub HideBas()
If SkillBasılımı(ClassOku & "645") = False And SkillBasılımı(ClassOku & "700") = False Then
Paket "3101" + Strings.mID(AlignDWORD(ClassOku & "700"), 1, 6) + "00" + CharId + CharId + Formathex(hex$(UserID), 4) + "0000000000000000000000000F00"
Paket "3103" + Strings.mID(AlignDWORD(ClassOku & "700"), 1, 6) + "00" + CharId + CharId + "0000000000000000000000000000"
End If
End Sub

Public Sub Stealth()
If SkillBasılımı(ClassOku & "645") = False And SkillBasılımı(ClassOku & "700") = False Then
Paket "3101" + Strings.mID(AlignDWORD(ClassOku & "645"), 1, 6) + "00" + CharId + CharId + Formathex(hex$(UserID), 4) + "0000000000000000000000001E00"
Paket "3103" + Strings.mID(AlignDWORD(ClassOku & "645"), 1, 6) + "00" + CharId + CharId + "0000000000000000000000000000"
End If
End Sub

Public Sub Evade()
If SkillBasılımı(ClassOku & "710") = False And SkillBasılımı(ClassOku & "730") = False And SkillBasılımı(ClassOku & "760") = False Then
Paket "3103" + Strings.mID(AlignDWORD(ClassOku & "710"), 1, 6) + "00" + CharId + CharId + "0000000000000000000000000000"
End If
End Sub

Public Sub Safety()
If SkillBasılımı(ClassOku & "710") = False And SkillBasılımı(ClassOku & "730") = False And SkillBasılımı(ClassOku & "760") = False Then
Paket "3103" + Strings.mID(AlignDWORD(ClassOku & "730"), 1, 6) + "00" + CharId + CharId + "0000000000000000000000000000"
End If
End Sub

Public Sub ScaledSkin()
If SkillBasılımı(ClassOku & "710") = False And SkillBasılımı(ClassOku & "730") = False And SkillBasılımı(ClassOku & "760") = False Then
Paket "3103" + Strings.mID(AlignDWORD(ClassOku & "760"), 1, 6) + "00" + CharId + CharId + "0000000000000000000000000000"
End If
End Sub

Public Sub CatsEye()
If SkillBasılımı(ClassOku & "715") = False And SkillBasılımı(ClassOku & "735") = False Then
Paket ("3101" + Strings.mID(AlignDWORD(ClassOku & "715"), 1, 6) + "00" + CharId + CharId + Formathex(hex$(UserID), 4) + "0000000000000000000000000F00")
Paket ("3103" + Strings.mID(AlignDWORD(ClassOku & "715"), 1, 6) + "00" + CharId + CharId + "000000000000000000000000")
End If
End Sub

Public Sub LupineEyes()
If SkillBasılımı(ClassOku & "715") = False And SkillBasılımı(ClassOku & "735") = False Then
Paket "3101" + Strings.mID(AlignDWORD(ClassOku & "735"), 1, 6) + "00" + CharId + CharId + Formathex(hex$(UserID), 4) + "0000000000000000000000001400"
Paket "3103" + Strings.mID(AlignDWORD(ClassOku & "735"), 1, 6) + "00" + CharId + CharId + "F7020400AE01000000000000"
End If
End Sub

Public Sub Strength()
If SkillBasılımı(ClassOku & "004") = False And SkillBasılımı(ClassOku & "529") = False And SkillBasılımı(ClassOku & "629") = False And SkillBasılımı(ClassOku & "729") = False Then
Paket "3101" + Strings.mID(AlignDWORD(ClassOku & "004"), 1, 6) + "00" + CharId + CharId + Formathex(hex$(UserID), 4) + "0000000000000000000000000F00"
Paket "3103" + Strings.mID(AlignDWORD(ClassOku & "004"), 1, 6) + "00" + CharId + CharId + "0000000000000000000000000000"
End If
End Sub

Public Sub Blasting()
If SkillBasılımı(ClassOku & "004") = False And SkillBasılımı(ClassOku & "529") = False And SkillBasılımı(ClassOku & "629") = False And SkillBasılımı(ClassOku & "729") = False Then
Paket ("3103" + Strings.mID(AlignDWORD(ClassOku & "529"), 1, 6) + "00" + CharId + CharId + "000000000000000000000000")
End If
End Sub

Public Sub Wildness()
If SkillBasılımı(ClassOku & "004") = False And SkillBasılımı(ClassOku & "529") = False And SkillBasılımı(ClassOku & "629") = False And SkillBasılımı(ClassOku & "729") = False Then
Paket ("3103" + Strings.mID(AlignDWORD(ClassOku & "629"), 1, 6) + "00" + CharId + CharId + "000000000000000000000000")
End If
End Sub

Public Sub Eruption()
If SkillBasılımı(ClassOku & "004") = False And SkillBasılımı(ClassOku & "529") = False And SkillBasılımı(ClassOku & "629") = False And SkillBasılımı(ClassOku & "729") = False Then
Paket ("3103" + Strings.mID(AlignDWORD(ClassOku & "729"), 1, 6) + "00" + CharId + CharId + "000000000000000000000000")
End If
End Sub

Public Sub PriestKitap()
If SkillBasılımı("490026") = False And SkillBasılımı(SınıfBul & "030") = False Then
Paket "3103" + "2A7A07" + "00" + CharId + CharId + "0000000000000000000000000000"
Pause 120
End If
End Sub

Function MageGate()
Paket "3101" + Strings.mID(AlignDWORD(ClassOku & "015"), 1, 6) + "00" + CharId + CharId + Formathex(hex$(UserID), 4) + "0000000000000000000000000F00"
Paket "3103" + Strings.mID(AlignDWORD(ClassOku & "015"), 1, 6) + "00" + CharId + CharId + "000000000000000000000000"
End Function

Function PriestGate()
Paket "3101" + Strings.mID(AlignDWORD(ClassOku & "700"), 1, 6) + "00" + CharId + CharId + Formathex(hex$(UserID), 4) + "0000000000000000000000000F00"
Paket "3103" + Strings.mID(AlignDWORD(ClassOku & "700"), 1, 6) + "00" + CharId + CharId + "000000000000000000000000"
End Function

Function TeleportID(UserID As Long)
Paket "3101" & Strings.mID(AlignDWORD(ClassOku & "004"), 1, 6) & "00" & CharId & Formathex(hex$(UserID), 4) & "0000000000000000000000000F00"
Paket "3103" & Strings.mID(AlignDWORD(ClassOku & "004"), 1, 6) & "00" & CharId & Formathex(hex$(UserID), 4) & "000000000000000000000000"
End Function

Function MinorID(UserID As Long)
Paket "3103" + Strings.mID(AlignDWORD(ClassOku & "705"), 1, 6) + "00" + CharId + Formathex(hex$(UserID), 4) + "0000000000000000000000000000"
End Function





