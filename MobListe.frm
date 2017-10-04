VERSION 5.00
Begin VB.Form MobListe 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Mob List"
   ClientHeight    =   4695
   ClientLeft      =   32265
   ClientTop       =   1050
   ClientWidth     =   4695
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   162
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "MobListe.frx":0000
   LinkTopic       =   "Form10"
   MaxButton       =   0   'False
   ScaleHeight     =   4695
   ScaleWidth      =   4695
   Begin VB.Frame Frame2 
      Caption         =   "   Race Attack List"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4695
      Left            =   2400
      TabIndex        =   1
      Top             =   0
      Width           =   2295
      Begin VB.CommandButton EtrafTaraIrkCmd 
         Caption         =   "Etraftakileri Ekle"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   162
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   13
         Top             =   3840
         Width           =   1815
      End
      Begin VB.TextBox PlayerEkleTxt 
         Alignment       =   2  'Center
         Height          =   285
         Left            =   120
         TabIndex        =   11
         Top             =   2640
         Width           =   2055
      End
      Begin VB.CommandButton PlayerListTemizleCmd 
         Caption         =   "Temizle"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   162
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   600
         TabIndex        =   10
         Top             =   4320
         Width           =   1215
      End
      Begin VB.CommandButton SeciliPlayerEkleCmd 
         Caption         =   "Seçili Olaný Ekle"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   162
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   9
         Top             =   3360
         Width           =   2055
      End
      Begin VB.CommandButton TextPlayerEkleCmd 
         Caption         =   "Ekle"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   162
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   360
         TabIndex        =   8
         Top             =   3000
         Width           =   1575
      End
      Begin VB.ListBox List2 
         Height          =   2310
         ItemData        =   "MobListe.frx":030A
         Left            =   120
         List            =   "MobListe.frx":030C
         Style           =   1  'Checkbox
         TabIndex        =   3
         Top             =   240
         Width           =   2055
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Mob Attack List"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4695
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   2295
      Begin VB.CommandButton EtrafTaraYaratýkCmd 
         Caption         =   "Etraftakileri Ekle"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   162
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   12
         Top             =   3840
         Width           =   1815
      End
      Begin VB.CommandButton EtrafiTaraListTemizle 
         Caption         =   "Temizle"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   162
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   480
         TabIndex        =   7
         Top             =   4320
         Width           =   1335
      End
      Begin VB.CommandButton SeciliMobuEkle 
         Caption         =   "Seçili Olaný Ekle"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   162
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   6
         Top             =   3360
         Width           =   2055
      End
      Begin VB.CommandButton TextEkle 
         Caption         =   "Ekle"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   162
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   360
         TabIndex        =   5
         Top             =   3000
         Width           =   1575
      End
      Begin VB.TextBox MobEkleText 
         Alignment       =   2  'Center
         Height          =   285
         Left            =   120
         TabIndex        =   4
         Top             =   2640
         Width           =   2055
      End
      Begin VB.ListBox List1 
         Height          =   2310
         ItemData        =   "MobListe.frx":030E
         Left            =   120
         List            =   "MobListe.frx":0310
         Style           =   1  'Checkbox
         TabIndex        =   2
         Top             =   240
         Width           =   2055
      End
   End
End
Attribute VB_Name = "MobListe"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False



Private Sub Form_Load()
On Error Resume Next

End Sub
Private Sub Form_Unload(Cancel As Integer)
Cancel = True
Me.Hide
End Sub

Private Sub List1_DblClick()
List1.RemoveItem List1.ListIndex
End Sub
Private Sub TextEkle_Click()
If ListeAra(MobEkleText.Text, List1) = False Then
List1.AddItem MobEkleText.Text
End If
End Sub
Private Sub SeciliMobuEkle_Click()
If ListeAra(OkuIDSName(MobTID), List1) = False Then
List1.AddItem OkuIDSName(MobTID)
End If
End Sub
Private Sub EtrafTaraYaratýkCmd_Click()
 GetAllMob List1
End Sub
Private Sub EtrafiTaraListTemizle_Click()
List1.Clear
End Sub

Private Sub List2_DblClick()
List2.RemoveItem List2.ListIndex
End Sub
Private Sub TextPlayerEkleCmd_Click()
If ListeAra(PlayerEkleTxt.Text, List2) = False Then
List2.AddItem PlayerEkleTxt.Text
End If
End Sub
Private Sub SeciliPlayerEkleCmd_Click()
If ListeAra(OkuIDSName(MobTID), List2) = False Then
List2.AddItem OkuIDSName(MobTID)
End If
End Sub
Private Sub EtrafTaraIrkCmd_Click()
 GetAllPLayer List2
End Sub
Private Sub PlayerListTemizleCmd_Click()
List2.Clear
End Sub

