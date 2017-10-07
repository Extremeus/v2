Attribute VB_Name = "LicenseModular"
Option Explicit
Public CN As ADODB.Connection

Function ReadINI(Section As String, KeyName As String, Filename As String) As String
Dim sRet As String
sRet = String$(255, Chr$(0))
ReadINI = Left$(sRet, GetPrivateProfileString(Section, ByVal KeyName$, "", sRet, Len(sRet), Filename))
End Function


