VERSION 5.00
Begin VB.Form Form3 
   Caption         =   "Form3"
   ClientHeight    =   1275
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   3615
   LinkTopic       =   "Form3"
   ScaleHeight     =   1275
   ScaleWidth      =   3615
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Giriþ Yap"
      Height          =   735
      Left            =   2640
      TabIndex        =   2
      Top             =   240
      Width           =   855
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   720
      TabIndex        =   1
      Text            =   "Text2"
      Top             =   720
      Width           =   1815
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   720
      TabIndex        =   0
      Text            =   "Text1"
      Top             =   240
      Width           =   1815
   End
   Begin VB.Label Label3 
      Height          =   255
      Left            =   720
      TabIndex        =   5
      Top             =   1080
      Width           =   2655
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      BeginProperty Font 
         Name            =   "Open Sans"
         Size            =   8.25
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   720
      Width           =   495
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      BeginProperty Font 
         Name            =   "Open Sans"
         Size            =   8.25
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   240
      Width           =   495
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Text1 = "Duko" And Text2 = "Duko" Then
Form1.Show
Else
Label3.Caption = "Kullanýcý adý veya þifre yanlýþ"
End If
End Sub

Private Sub Form_Load()
Label1.Caption = "K.Adý"
Label2.Caption = "Pass"
End Sub

