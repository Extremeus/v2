VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "ieframe.dll"
Begin VB.Form Form2 
   BackColor       =   &H0080C0FF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Giri� Yap"
   ClientHeight    =   1455
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   3135
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1455
   ScaleWidth      =   3135
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      Caption         =   "Login"
      Height          =   1455
      Left            =   0
      TabIndex        =   16
      Top             =   0
      Width           =   3135
      Begin VB.TextBox Text1 
         Height          =   315
         Left            =   720
         TabIndex        =   21
         Top             =   240
         Width           =   2295
      End
      Begin VB.TextBox Text2 
         Height          =   315
         IMEMode         =   3  'DISABLE
         Left            =   720
         PasswordChar    =   "*"
         TabIndex        =   20
         Top             =   600
         Width           =   2295
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Giri� >"
         Height          =   315
         Left            =   2160
         TabIndex        =   19
         Top             =   960
         Width           =   855
      End
      Begin VB.CommandButton Command2 
         Caption         =   "< Kay�t"
         Height          =   315
         Left            =   120
         TabIndex        =   18
         Top             =   960
         Width           =   855
      End
      Begin VB.CommandButton Command7 
         Caption         =   "Key Y�kle"
         Height          =   315
         Left            =   1080
         TabIndex        =   17
         Top             =   960
         Width           =   975
      End
      Begin VB.Label Label5 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "ID :"
         Height          =   255
         Left            =   0
         TabIndex        =   23
         Top             =   255
         Width           =   615
      End
      Begin VB.Label Label6 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Pass :"
         Height          =   255
         Left            =   0
         TabIndex        =   22
         Top             =   615
         Width           =   615
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "Register"
      Height          =   1455
      Left            =   480
      TabIndex        =   7
      Top             =   4560
      Width           =   3135
      Begin VB.TextBox Text3 
         Height          =   315
         Left            =   720
         TabIndex        =   12
         Top             =   240
         Width           =   1335
      End
      Begin VB.TextBox Text4 
         Height          =   315
         IMEMode         =   3  'DISABLE
         Left            =   720
         PasswordChar    =   "*"
         TabIndex        =   11
         Top             =   600
         Width           =   1335
      End
      Begin VB.CommandButton Command3 
         Caption         =   "< Geri"
         Height          =   315
         Left            =   2160
         TabIndex        =   10
         Top             =   960
         Width           =   855
      End
      Begin VB.CommandButton Command4 
         Caption         =   "Kay�t"
         Height          =   315
         Left            =   2160
         TabIndex        =   9
         Top             =   240
         Width           =   855
      End
      Begin VB.TextBox Text5 
         Height          =   315
         Left            =   720
         TabIndex        =   8
         Top             =   960
         Width           =   1335
      End
      Begin VB.Label Label1 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "ID :"
         Height          =   255
         Left            =   0
         TabIndex        =   15
         Top             =   240
         Width           =   615
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Pass :"
         Height          =   255
         Left            =   0
         TabIndex        =   14
         Top             =   600
         Width           =   615
      End
      Begin VB.Label Label3 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "E-Mail :"
         Height          =   255
         Left            =   0
         TabIndex        =   13
         Top             =   960
         Width           =   615
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "Key"
      Height          =   1095
      Left            =   0
      TabIndex        =   0
      Top             =   2880
      Width           =   3135
      Begin VB.CommandButton Command5 
         Caption         =   "Ekle >"
         Height          =   315
         Left            =   2160
         TabIndex        =   4
         Top             =   240
         Width           =   855
      End
      Begin VB.TextBox Text6 
         Height          =   315
         Left            =   720
         TabIndex        =   3
         Top             =   600
         Width           =   1335
      End
      Begin VB.TextBox Text7 
         Height          =   315
         Left            =   720
         TabIndex        =   2
         Top             =   240
         Width           =   1335
      End
      Begin VB.CommandButton Command6 
         Caption         =   "< Geri"
         Height          =   315
         Left            =   2160
         TabIndex        =   1
         Top             =   600
         Width           =   855
      End
      Begin VB.Label Label4 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Key :"
         Height          =   255
         Left            =   0
         TabIndex        =   6
         Top             =   600
         Width           =   615
      End
      Begin VB.Label Label7 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "ID :"
         Height          =   255
         Left            =   0
         TabIndex        =   5
         Top             =   240
         Width           =   615
      End
   End
   Begin SHDocVwCtl.WebBrowser a 
      Height          =   3255
      Left            =   3480
      TabIndex        =   24
      Top             =   0
      Width           =   2655
      ExtentX         =   4683
      ExtentY         =   5741
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      NoWebView       =   0   'False
      HideFileNames   =   0   'False
      SingleClick     =   0   'False
      SingleSelection =   0   'False
      NoFolders       =   0   'False
      Transparent     =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   ""
   End
   Begin VB.Label Label8 
      Caption         =   "http://agsystems.xyz/aguyelik/"
      Height          =   375
      Left            =   7080
      TabIndex        =   25
      Top             =   2760
      Width           =   3375
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Text1.Text <> "" And Text2.Text <> "" Then a.Navigate Label8.Caption & "giris_kontrol.php?kadi=" & Text1.Text & "&pass=" & Text2.Text
End Sub

Private Sub Command2_Click()
kay�t
End Sub

Private Sub Command3_Click()
giris
End Sub

Private Sub Command4_Click()
If Text3.Text <> "" And Text4.Text <> "" And Text5.Text <> "" Then a.Navigate Label8.Caption & "yeni_uyelik.php?kadi=" & Text3.Text & "&sfr=" & Text4.Text & "&sfr2=" & Text4.Text & " &mail=" & Text5.Text
End Sub

Private Sub Command5_Click()
If Text6.Text <> "" Then a.Navigate Label8.Caption & "key_onay.php?key=" & Text6.Text & "&kadi=" & Text7.Text
Command5.Enabled = False
End Sub

Private Sub Command6_Click()
giris
End Sub

Private Sub Command7_Click()
Key
End Sub

Private Sub Form_Load()
'giris
a.Silent = True
End Sub

Function giris()
Me.Height = "1770": Me.Width = "3225"
Frame1.Top = "0": Frame1.Left = "0"
Frame2.Top = "11110": Frame2.Left = "11110"
Frame3.Top = "11110": Frame3.Left = "11110"
End Function

Function kay�t()
Me.Height = "1875": Me.Width = "3210"
Frame2.Top = "0": Frame2.Left = "0"
Frame1.Top = "11110": Frame1.Left = "11110"
Frame3.Top = "11110": Frame3.Left = "11110"
End Function

Function Key()
Me.Height = "1515": Me.Width = "3225"
Frame3.Top = "0": Frame3.Left = "0"
Frame1.Top = "11110": Frame1.Left = "11110"
Frame2.Top = "11110": Frame1.Left = "11110"
End Function


Private Sub a_DocumentComplete(ByVal pDisp As Object, URL As Variant)
If a.LocationURL = Label8.Caption & "key_on.php" Then MsgBox "Y�kleme Ba�ar�l�" & vbCrLf & "Toplam G�n : " & a.Document.getelementbyid("kgun").value, vbOKOnly, "Reg."
If a.LocationURL = Label8.Caption & "key_off.php" Then MsgBox "Key Ge�ersiz", vbOKOnly, "Reg.": Command5.Enabled = True
If a.LocationURL = Label8.Caption & "uye_var.php" Then MsgBox "Kullan�c� ad� veya e-mail kullan�l�yor.", vbOKOnly, "Reg."
If a.LocationURL = Label8.Caption & "uye_ok.php" Then MsgBox "Yeni kay�t ba�ar�l�.", vbOKOnly, "Reg.": Command4.Enabled = False
If a.LocationURL = Label8.Caption & "uye_off.php" Then MsgBox "Yeni kay�t ba�ar�s�z.", vbOKOnly, "Reg."
If a.LocationURL = Label8.Caption & "uye_yok.php" Then MsgBox "�ye bulunamad�.", vbOKOnly, "Reg."
If a.LocationURL = Label8.Caption & "uye_paneli.php" Then
If a.Document.getelementbyid("kgun").value > 0 Then
MsgBox "Giri� Ba�ar�l�." & vbCrLf & "Kalan G�n : " & a.Document.getelementbyid("kgun").value, vbOKOnly, "Reg."
Form1.Show
Unload Me
Else
MsgBox "Giri� Ba�ar�s�z Y�kleme Yap�n�z." & vbCrLf & "Kalan G�n : " & a.Document.getelementbyid("kgun").value, vbOKOnly, "Reg."
End If
End If
End Sub


