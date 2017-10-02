VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Begin VB.Form Frmloot 
   Caption         =   "Form4"
   ClientHeight    =   6405
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   9960
   LinkTopic       =   "Form4"
   ScaleHeight     =   6405
   ScaleWidth      =   9960
   StartUpPosition =   3  'Windows Default
   Begin VB.CheckBox OnTop 
      Caption         =   "Üstte Tut"
      Height          =   735
      Left            =   8040
      Style           =   1  'Graphical
      TabIndex        =   10
      Top             =   0
      Width           =   975
   End
   Begin VB.Frame Frame1 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   0
      TabIndex        =   5
      Top             =   0
      Width           =   6735
      Begin VB.CheckBox Check 
         Caption         =   "Uniqe Ýtemleri Topla"
         Height          =   255
         Index           =   1
         Left            =   4800
         TabIndex        =   9
         Top             =   360
         Width           =   1815
      End
      Begin VB.OptionButton rdButon 
         Caption         =   "Sadece Listedekileri Topla"
         Height          =   255
         Index           =   2
         Left            =   4440
         TabIndex        =   8
         Top             =   120
         Width           =   2175
      End
      Begin VB.OptionButton rdButon 
         Caption         =   "Sadece Para Topla"
         Height          =   255
         Index           =   1
         Left            =   2160
         TabIndex        =   7
         Top             =   120
         Width           =   1695
      End
      Begin VB.OptionButton rdButon 
         Caption         =   "Her Þeyi Topla"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   6
         Top             =   120
         Width           =   1455
      End
      Begin VB.Line Line2 
         X1              =   4780
         X2              =   4560
         Y1              =   480
         Y2              =   480
      End
      Begin VB.Line Line1 
         X1              =   4560
         X2              =   4560
         Y1              =   360
         Y2              =   510
      End
   End
   Begin VB.ListBox lstUniqe 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3375
      Left            =   0
      TabIndex        =   4
      Top             =   5160
      Width           =   2175
   End
   Begin VB.ListBox ListBox1 
      Height          =   3375
      Left            =   6840
      TabIndex        =   3
      Top             =   840
      Width           =   2175
   End
   Begin VB.ListBox lstTaki 
      Height          =   3375
      Left            =   4560
      TabIndex        =   2
      Top             =   840
      Width           =   2175
   End
   Begin VB.ListBox lstSilah1 
      Height          =   3375
      Left            =   2280
      TabIndex        =   1
      Top             =   840
      Width           =   2175
   End
   Begin VB.CommandButton CmdKapat 
      Caption         =   "Kapat"
      Height          =   375
      Left            =   7440
      TabIndex        =   0
      Top             =   4320
      Width           =   1575
   End
   Begin MSComctlLib.TreeView TreeView1 
      Height          =   3375
      Left            =   0
      TabIndex        =   11
      Top             =   840
      Width           =   2175
      _ExtentX        =   3836
      _ExtentY        =   5953
      _Version        =   393217
      LabelEdit       =   1
      LineStyle       =   1
      Style           =   7
      Appearance      =   1
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   6.75
         Charset         =   162
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
End
Attribute VB_Name = "Frmloot"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
