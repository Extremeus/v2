VERSION 5.00
Object = "{6BF52A50-394A-11D3-B153-00C04F79FAA6}#1.0#0"; "wmp.dll"
Begin VB.Form Form5 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Harita"
   ClientHeight    =   5055
   ClientLeft      =   7800
   ClientTop       =   630
   ClientWidth     =   7470
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   162
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "Form5.frx":0000
   LinkTopic       =   "Form5"
   MaxButton       =   0   'False
   ScaleHeight     =   5055
   ScaleWidth      =   7470
   Begin VB.ListBox lwmob 
      Height          =   1425
      ItemData        =   "Form5.frx":030A
      Left            =   240
      List            =   "Form5.frx":030C
      TabIndex        =   37
      Top             =   2640
      Width           =   3615
   End
   Begin VB.Timer OtoSaatKayýt 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   4920
      Top             =   3960
   End
   Begin VB.CommandButton TsBasCmd 
      Caption         =   "Ts Bas"
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
      Left            =   3480
      TabIndex        =   19
      Top             =   4680
      Width           =   1018
   End
   Begin VB.CommandButton ayarkayýt 
      Caption         =   "Ayarlarý Kaydet"
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
      Left            =   0
      TabIndex        =   18
      Top             =   4680
      Width           =   3375
   End
   Begin VB.TextBox txtLid 
      Alignment       =   2  'Center
      Height          =   285
      Left            =   6600
      TabIndex        =   12
      Text            =   "30000"
      Top             =   120
      Width           =   735
   End
   Begin VB.TextBox txtFid 
      Alignment       =   2  'Center
      Height          =   285
      Left            =   5760
      TabIndex        =   11
      Text            =   "10000"
      Top             =   120
      Width           =   735
   End
   Begin VB.Timer tmrFind 
      Enabled         =   0   'False
      Interval        =   80
      Left            =   4920
      Top             =   2040
   End
   Begin VB.Timer frm5c 
      Interval        =   1000
      Left            =   4920
      Top             =   3480
   End
   Begin VB.Timer Alarm2 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   4920
      Top             =   1080
   End
   Begin VB.Timer Hpleriekle 
      Interval        =   1000
      Left            =   4920
      Top             =   1560
   End
   Begin VB.Timer Alarm 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   4920
      Top             =   600
   End
   Begin VB.Timer AlarmCal 
      Enabled         =   0   'False
      Interval        =   2000
      Left            =   4920
      Top             =   120
   End
   Begin VB.Timer ara 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   4920
      Top             =   3000
   End
   Begin VB.ListBox Hpler 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1620
      Left            =   5760
      TabIndex        =   4
      Top             =   480
      Width           =   1575
   End
   Begin VB.Timer tmrFind2 
      Enabled         =   0   'False
      Interval        =   2000
      Left            =   4920
      Top             =   2520
   End
   Begin VB.Frame Frame2 
      Caption         =   "Yaratýðýn Yanýna Gitmek için üstünü Çift Týklayýn."
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2280
      Left            =   0
      TabIndex        =   3
      Top             =   2400
      Width           =   4520
   End
   Begin VB.Frame Frame3 
      Height          =   2720
      Left            =   0
      TabIndex        =   0
      Top             =   -240
      Width           =   4520
      Begin VB.CommandButton Command1 
         Caption         =   "X,Y AL"
         Height          =   255
         Left            =   3600
         TabIndex        =   36
         Top             =   480
         Width           =   855
      End
      Begin VB.CommandButton btnClear 
         Caption         =   "Temizle"
         Height          =   255
         Left            =   3720
         TabIndex        =   17
         Top             =   2400
         Width           =   735
      End
      Begin VB.CommandButton btnSlist 
         Caption         =   "Listeyi Ara"
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
         Left            =   2160
         TabIndex        =   16
         Top             =   2400
         Width           =   1455
      End
      Begin VB.CommandButton btnAddMob 
         Caption         =   "EKLE"
         Height          =   255
         Left            =   3720
         TabIndex        =   15
         Top             =   2040
         Width           =   735
      End
      Begin VB.TextBox txtMobName 
         Alignment       =   2  'Center
         Height          =   285
         Left            =   2160
         TabIndex        =   14
         Top             =   2040
         Width           =   1455
      End
      Begin VB.ListBox lstMobName 
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   162
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000007&
         Height          =   1230
         ItemData        =   "Form5.frx":030E
         Left            =   2160
         List            =   "Form5.frx":0310
         TabIndex        =   13
         Top             =   720
         Width           =   2295
      End
      Begin VB.CommandButton AyarOku 
         Caption         =   "Haritadaki Yaratýklarý Listeye Ekle"
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
         Left            =   0
         TabIndex        =   10
         Top             =   480
         Width           =   3495
      End
      Begin VB.CheckBox chTopMost 
         Caption         =   "Üstte Tut"
         Height          =   255
         Left            =   120
         TabIndex        =   9
         Top             =   240
         Width           =   975
      End
      Begin VB.CheckBox otoarama 
         Caption         =   "Oto Tara"
         Height          =   255
         Left            =   1200
         TabIndex        =   8
         Top             =   240
         Width           =   975
      End
      Begin VB.CheckBox AlarmCheck 
         Caption         =   "Alarm Çal"
         Height          =   195
         Left            =   2280
         TabIndex        =   7
         Top             =   240
         Width           =   1095
      End
      Begin VB.TextBox HpText 
         Alignment       =   2  'Center
         Height          =   285
         Left            =   3600
         TabIndex        =   6
         Text            =   "50000"
         Top             =   240
         Width           =   855
      End
      Begin VB.CommandButton btnSMap 
         Caption         =   "Haritayý Tara"
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
         Left            =   0
         TabIndex        =   2
         Top             =   2400
         Width           =   2055
      End
      Begin VB.ListBox lstMap 
         Height          =   1620
         ItemData        =   "Form5.frx":0312
         Left            =   0
         List            =   "Form5.frx":0314
         TabIndex        =   1
         Top             =   720
         Width           =   2055
      End
   End
   Begin VB.Label Label16 
      Alignment       =   2  'Center
      Caption         =   "200"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   7680
      TabIndex        =   35
      Top             =   5760
      Width           =   615
   End
   Begin VB.Label Label15 
      Alignment       =   2  'Center
      Caption         =   "200"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   7680
      TabIndex        =   34
      Top             =   5400
      Width           =   615
   End
   Begin VB.Label Label14 
      Alignment       =   2  'Center
      Caption         =   "200"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   7680
      TabIndex        =   33
      Top             =   5040
      Width           =   615
   End
   Begin VB.Label Label13 
      Alignment       =   2  'Center
      Caption         =   "200"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   7680
      TabIndex        =   32
      Top             =   4680
      Width           =   615
   End
   Begin VB.Label Label12 
      Alignment       =   2  'Center
      Caption         =   "200"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   7680
      TabIndex        =   31
      Top             =   4320
      Width           =   615
   End
   Begin VB.Label Label11 
      Alignment       =   2  'Center
      Caption         =   "200"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   7680
      TabIndex        =   30
      Top             =   3960
      Width           =   615
   End
   Begin VB.Label Label10 
      Alignment       =   2  'Center
      Caption         =   "200"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   7680
      TabIndex        =   29
      Top             =   3600
      Width           =   615
   End
   Begin VB.Label Label9 
      Alignment       =   2  'Center
      Caption         =   "200"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   7680
      TabIndex        =   28
      Top             =   3240
      Width           =   615
   End
   Begin VB.Label Label8 
      Alignment       =   2  'Center
      Caption         =   "100"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   7680
      TabIndex        =   27
      Top             =   2640
      Width           =   615
   End
   Begin VB.Label Label7 
      Alignment       =   2  'Center
      Caption         =   "100"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   7680
      TabIndex        =   26
      Top             =   2280
      Width           =   615
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      Caption         =   "100"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   7680
      TabIndex        =   25
      Top             =   1920
      Width           =   615
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      Caption         =   "100"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   7680
      TabIndex        =   24
      Top             =   1560
      Width           =   615
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Caption         =   "100"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   7680
      TabIndex        =   23
      Top             =   1200
      Width           =   615
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Caption         =   "100"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   7680
      TabIndex        =   22
      Top             =   840
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Caption         =   "100"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   7680
      TabIndex        =   21
      Top             =   480
      Width           =   615
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "100"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   7680
      TabIndex        =   20
      Top             =   120
      Width           =   615
   End
   Begin WMPLibCtl.WindowsMediaPlayer WindowsMediaPlayer1 
      Height          =   855
      Left            =   5760
      TabIndex        =   5
      Top             =   2160
      Width           =   1575
      URL             =   ""
      rate            =   1
      balance         =   0
      currentPosition =   0
      defaultFrame    =   ""
      playCount       =   1
      autoStart       =   -1  'True
      currentMarker   =   0
      invokeURLs      =   -1  'True
      baseURL         =   ""
      volume          =   100
      mute            =   0   'False
      uiMode          =   "full"
      stretchToFit    =   0   'False
      windowlessVideo =   0   'False
      enabled         =   -1  'True
      enableContextMenu=   -1  'True
      fullScreen      =   0   'False
      SAMIStyle       =   ""
      SAMILang        =   ""
      SAMIFilename    =   ""
      captioningID    =   ""
      enableErrorDialogs=   0   'False
      _cx             =   2778
      _cy             =   1508
   End
End
Attribute VB_Name = "Form5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim iID As Long
Dim MobBase As Long, MobID As Long
Dim DasKafa As Integer, KelKafa As Integer

Private Sub Alarm_Timer()
On Error Resume Next
Dim t As Long
For t = 0 To Form5.Hpler.ListCount - 1
If AlarmCheck.value = 1 And Form5.Hpler.List(t) = Form5.HpText.Text Then
AlarmCal.Enabled = True
Else
AlarmCal.Enabled = False
End If
Next
End Sub

Private Sub Alarm2_Timer()
Dim i As Long
Dim limit As Long
limit = val(Form5.HpText.Text)
If Hpler.ListCount > 0 Then
For i = 0 To Hpler.ListCount - 1
For x = 1 To lwmob.ListItems.COUNT
If AlarmCheck.value = 1 And val(Form5.Hpler.List(i)) >= limit Then   'Texte Eþit ve Büyükse
If Form5.lwmob.ListItems(x).SubItems(2) > HpText.Text Then
If Label1.Caption + "2" < Form5.lwmob.ListItems(1).SubItems(3) Or Label1.Caption - "2" > Form5.lwmob.ListItems(1).SubItems(3) Or _
Label2.Caption + "2" < Form5.lwmob.ListItems(2).SubItems(3) Or Label2.Caption - "2" > Form5.lwmob.ListItems(2).SubItems(3) Or _
Label3.Caption + "2" < Form5.lwmob.ListItems(3).SubItems(3) Or Label3.Caption - "2" > Form5.lwmob.ListItems(3).SubItems(3) Or _
Label4.Caption + "2" < Form5.lwmob.ListItems(4).SubItems(3) Or Label4.Caption - "2" > Form5.lwmob.ListItems(4).SubItems(3) Or _
Label5.Caption + "2" < Form5.lwmob.ListItems(5).SubItems(3) Or Label5.Caption - "2" > Form5.lwmob.ListItems(5).SubItems(3) Or _
Label6.Caption + "2" < Form5.lwmob.ListItems(6).SubItems(3) Or Label6.Caption - "2" > Form5.lwmob.ListItems(6).SubItems(3) Or _
Label7.Caption + "2" < Form5.lwmob.ListItems(7).SubItems(3) Or Label7.Caption - "2" > Form5.lwmob.ListItems(7).SubItems(3) Or _
Label8.Caption + "2" < Form5.lwmob.ListItems(8).SubItems(3) Or Label8.Caption - "2" > Form5.lwmob.ListItems(8).SubItems(3) Then
AlarmCal.Enabled = True
End If
End If
End If
Next x
Next i
End If
End Sub

Private Sub AlarmCal_Timer()
On Error Resume Next


WindowsMediaPlayer1.Settings.setMode "loop", True
WindowsMediaPlayer1.URL = App.Path & "\Alarm.wav"


If AlarmCheck.value = 0 Then
WindowsMediaPlayer1.Settings.setMode "loop", False
AlarmCal.Enabled = False
End If
End Sub

Private Sub AlarmCheck_Click()
If AlarmCheck.value = 1 Then
Alarm2.Enabled = True
Else
Alarm2.Enabled = False
End If
End Sub

Private Sub ara_Timer()
On Error Resume Next
    If lstMobName.ListCount > 0 Then
        lwmob.ListItems.Clear
        
        For i = 0 To lstMobName.ListCount - 1
            For L = 0 To lstMap.ListCount - 1
                If InStr(LCase(lstMap.List(L)), LCase(lstMobName.List(i))) > 0 Then
                    
                        MobID = lstMap.ItemData(L)
                        MobBase = GetTargetBase(MobID)
                        Paket "1D0100" & FormatHex(Hex(MobID), 4)
                        Paket "22" & FormatHex(Hex(MobID), 4)
                        If ReadStringAuto(MobBase + KO_OFF_NAME) <> "" Then
                            Set lstview = lwmob.ListItems.add(, , MobID)
                            lstview.ListSubItems.add , , ReadStringAuto(MobBase + KO_OFF_NAME)
                            lstview.ListSubItems.add , , ReadLong(MobBase + KO_OFF_HP)
                            lstview.ListSubItems.add , , ReadFloat(MobBase + KO_OFF_X)
                            lstview.ListSubItems.add , , ReadFloat(MobBase + KO_OFF_Y)
                        End If
                
                End If
            Next
        Next
    End If
If Form5.lwmob.ListItems(1).SubItems(3) > 0 Then: Label9.Caption = Form5.lwmob.ListItems(1).SubItems(3)
If Form5.lwmob.ListItems(2).SubItems(3) > 0 Then: Label10.Caption = Form5.lwmob.ListItems(2).SubItems(3)
If Form5.lwmob.ListItems(3).SubItems(3) > 0 Then: Label11.Caption = Form5.lwmob.ListItems(3).SubItems(3)
If Form5.lwmob.ListItems(4).SubItems(3) > 0 Then: Label12.Caption = Form5.lwmob.ListItems(4).SubItems(3)
If Form5.lwmob.ListItems(5).SubItems(3) > 0 Then: Label13.Caption = Form5.lwmob.ListItems(5).SubItems(3)
If Form5.lwmob.ListItems(6).SubItems(3) > 0 Then: Label14.Caption = Form5.lwmob.ListItems(6).SubItems(3)
If Form5.lwmob.ListItems(7).SubItems(3) > 0 Then: Label15.Caption = Form5.lwmob.ListItems(7).SubItems(3)
If Form5.lwmob.ListItems(8).SubItems(3) > 0 Then: Label16.Caption = Form5.lwmob.ListItems(8).SubItems(3)
End Sub

Private Sub ayarkayýt_Click()
AyarlarýKaydetHarita
End Sub

Private Sub AyarOku_Click()
Form5.lstMap.Clear
Form5.lstMobName.Clear
AyarlarýOkuHarita
End Sub

Private Sub btnAddMob_Click()
    If txtMobName.Text <> "" Then
        lstMobName.AddItem txtMobName.Text
        txtMobName.Text = ""
        txtMobName.SetFocus
    End If
End Sub

Private Sub btnClear_Click()
    lstMobName.Clear
End Sub

Private Sub btnSlist_Click()
    If lstMobName.ListCount > 0 Then
        lwmob.ListItems.Clear
        
        For i = 0 To lstMobName.ListCount - 1
            For L = 0 To lstMap.ListCount - 1
                If InStr(LCase(lstMap.List(L)), LCase(lstMobName.List(i))) > 0 Then
                    
                        MobID = lstMap.ItemData(L)
                        MobBase = GetTargetBase(MobID)
                        Paket "1D0100" & FormatHex(Hex(MobID), 4)
                        Paket "22" & FormatHex(Hex(MobID), 4)
                        If ReadStringAuto(MobBase + KO_OFF_NAME) <> "" Then
                            Set lstview = lwmob.ListItems.add(, , MobID)
                            lstview.ListSubItems.add , , .ReadStringAuto(MobBase + KO_OFF_NAME)
                            lstview.ListSubItems.add , , .ReadLong(MobBase + KO_OFF_HP)
                            lstview.ListSubItems.add , , .ReadFloat(MobBase + KO_OFF_X)
                            lstview.ListSubItems.add , , .ReadFloat(MobBase + KO_OFF_Y)
                        End If
                    
                End If
            Next
        Next
    End If
End Sub

Private Sub btnSMap_Click()
    iID = val(txtFid.Text)
    btnSMap.Enabled = False
    lstMap.Clear
    tmrFind.Enabled = True
End Sub

Private Sub Check1_Click()
If otoarama.value = 1 Then
Form5.ara.Enabled = True
Else
Form5.ara.Enabled = False
End If
End Sub

Private Sub Check2_Click()
If AlarmCheck.value = 1 Then
Alarm2.Enabled = True
Else
Alarm2.Enabled = False
End If
End Sub

Private Sub chTopMost_Click()
    If chTopMost.value = 1 Then
        SetWindowPos Me.hwnd, HWND_TOPMOST, Me.Left / Screen.TwipsPerPixelX, Me.Top / Screen.TwipsPerPixelY, Me.Width / Screen.TwipsPerPixelX, Me.Height / Screen.TwipsPerPixelY, SWP_NOACTIVATE Or SWP_SHOWWINDOW
    Else
        SetWindowPos Me.hwnd, HWND_NOTOPMOST, Me.Left / Screen.TwipsPerPixelX, Me.Top / Screen.TwipsPerPixelY, Me.Width / Screen.TwipsPerPixelX, Me.Height / Screen.TwipsPerPixelY, SWP_NOACTIVATE Or SWP_SHOWWINDOW
    End If
End Sub

Private Sub Command1_Click()
Label1.Caption = Label9.Caption
Label2.Caption = Label10.Caption
Label3.Caption = Label11.Caption
Label4.Caption = Label12.Caption
Label5.Caption = Label13.Caption
Label6.Caption = Label14.Caption
Label7.Caption = Label15.Caption
Label8.Caption = Label16.Caption
End Sub

Private Sub frm5c_Timer()
If Form5.otoarama.value = 1 Then
Form5.Caption = (CharName) + "-" + CharServer + "-" + CharZoneIndex
'End If
'If AlarmCal.Enabled = True Then
'Form5.WindowState = vbshow
End If
End Sub
Private Sub HpleriEkle_Timer()
Hpler.Clear
For i = 1 To lwmob.ListItems.COUNT
If val(Form5.lwmob.ListItems(i).SubItems(2)) > val(Form5.HpText.Text) Then
Form5.Hpler.AddItem Form5.lwmob.ListItems(i).SubItems(2)
End If
Next i
End Sub

Private Sub lstMobName_DblClick()
lstMobName.RemoveItem lstMobName.ListIndex
End Sub

Private Sub lwMob_DblClick()
If CharId > "0000" And CharHP > 0 Then: Runner11 lwmob.SelectedItem.SubItems(3) - 10, lwmob.SelectedItem.SubItems(4)
End Sub

Private Sub lwMob2_Click()
lwMob2.lis
End Sub

Private Sub otoarama_Click()
If otoarama.value = 1 Then
Form5.ara.Enabled = True
Form5.OtoSaatKayýt.Enabled = True
Else
Form5.ara.Enabled = False
Form5.OtoSaatKayýt.Enabled = False
End If
End Sub

Private Sub OtoSaatKayýt_Timer()
On Error Resume Next
DasKafa = DasKafa + 1

For i = 1 To lwmob.ListItems.COUNT
If Form5.lwmob.ListItems(i).SubItems(2) > HpText.Text And DasKafa = "1" Then
If Label1.Caption + "2" < Form5.lwmob.ListItems(1).SubItems(3) Or Label1.Caption - "2" > Form5.lwmob.ListItems(1).SubItems(3) Or _
Label2.Caption + "2" < Form5.lwmob.ListItems(2).SubItems(3) Or Label2.Caption - "2" > Form5.lwmob.ListItems(2).SubItems(3) Or _
Label3.Caption + "2" < Form5.lwmob.ListItems(3).SubItems(3) Or Label3.Caption - "2" > Form5.lwmob.ListItems(3).SubItems(3) Or _
Label4.Caption + "2" < Form5.lwmob.ListItems(4).SubItems(3) Or Label4.Caption - "2" > Form5.lwmob.ListItems(4).SubItems(3) Or _
Label5.Caption + "2" < Form5.lwmob.ListItems(5).SubItems(3) Or Label5.Caption - "2" > Form5.lwmob.ListItems(5).SubItems(3) Or _
Label6.Caption + "2" < Form5.lwmob.ListItems(6).SubItems(3) Or Label6.Caption - "2" > Form5.lwmob.ListItems(6).SubItems(3) Or _
Label7.Caption + "2" < Form5.lwmob.ListItems(7).SubItems(3) Or Label7.Caption - "2" > Form5.lwmob.ListItems(7).SubItems(3) Or _
Label8.Caption + "2" < Form5.lwmob.ListItems(8).SubItems(3) Or Label8.Caption - "2" > Form5.lwmob.ListItems(8).SubItems(3) Then
Open App.Path & "\RadarLog.txt" For Append As #1
    Print #1, CharServer & " - " & CharZoneIndex & " - " & Form5.lwmob.ListItems(i).SubItems(1) & " - HP : " & Form5.lwmob.ListItems(i).SubItems(2) & " - Saat > " & Left(Time, 5) & " & Tarih > " & Date
Close #1
End If
End If
If DasKafa >= "60" Then
DasKafa = "0"
End If
Next
End Sub

Private Sub tmrFind_Timer()
Dim Base As Long, mID As Long, targetName As String, i As Long
    tmrFind2.Enabled = True
    For i = 0 To 5
         PaketYolla "1D0100" & FormatHex(Hex(iID + i), 4)
        btnSMap.Caption = iID + i & "/" & val(txtLid.Text)
        'Pause 0.001
    Next
    If iID >= val(txtLid.Text) Then
        tmrFind.Enabled = False
        btnSMap.Enabled = True
        btnSMap.Caption = "Haritayý Tara"
    End If
    iID = iID + 5
End Sub

Private Sub tmrFind2_Timer()
Dim targetName As String, tekrar As Long
    Dim EBP As Long, FEnd As Long, ESI As Long, EAX As Long, mob_addr As Long
    EBP = ReadLong(ReadLong(KO_FLDB) + &H34)
    FEnd = ReadLong(ReadLong(EBP + 4) + 4)
    ESI = ReadLong(EBP)
    
    While ESI <> EBP
        mob_addr = ReadLong(ESI + &H10)
        If mob_addr = 0 Then Exit Sub
        tekrar = tekrar + 1
        If tekrar > 5000 Then Exit Sub
        
        targetName = ReadStringAuto(mob_addr + KO_OFF_NAME)
        
        If targetName = "Raged Captain" Then GoTo nextmob
        
        If lstMap.ListCount > 0 Then
            For i = 0 To lstMap.ListCount - 1
                If lstMap.ItemData(i) = ReadLong(mob_addr + KO_OFF_ID) Then
                    GoTo nextmob
                End If
            Next
        End If
        
        lstMap.AddItem targetName
        lstMap.ItemData(lstMap.NewIndex) = ReadLong(mob_addr + KO_OFF_ID)
        
nextmob:
        EAX = ReadLong(ESI + 8)
        If ReadLong(ESI + 8) <> FEnd Then
            While ReadLong(EAX) <> FEnd
                tekrar = tekrar + 1
                If tekrar > 5000 Then Exit Sub
                EAX = ReadLong(EAX)
            Wend
            ESI = EAX
        Else
            EAX = ReadLong(ESI + 4)
            While ESI = ReadLong(EAX + 8)
                tekrar = tekrar + 1
                If tekrar > 5000 Then Exit Sub
                ESI = EAX
                EAX = ReadLong(EAX + 4)
            Wend
            If ReadLong(ESI + 8) <> EAX Then
                ESI = EAX
            End If
        End If
    Wend
    tmrFind2.Enabled = False
End Sub

Private Sub Form_Load()
On Error Resume Next

AyarlarýOkuHarita
End Sub

Private Sub Form_Unload(Cancel As Integer)
Cancel = True
Me.Hide
'AlarmCal.Enabled = False
'ara.Enabled = False
End Sub

Private Sub TsBasCmd_Click()
 CakmaTsBas
End Sub


