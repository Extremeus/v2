VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "ieframe.dll"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{A8E5842E-102B-4289-9D57-3B3F5B5E15D3}#13.4#0"; "TASARIM.OCX"
Begin VB.Form Form1 
   BackColor       =   &H80000004&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "c"
   ClientHeight    =   12015
   ClientLeft      =   19050
   ClientTop       =   2010
   ClientWidth     =   4380
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   12015
   ScaleWidth      =   4380
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton Command17 
      Caption         =   "Command17"
      Height          =   495
      Left            =   6000
      TabIndex        =   232
      Top             =   8040
      Width           =   1455
   End
   Begin VB.Timer Tml 
      Interval        =   100
      Left            =   4080
      Top             =   1680
   End
   Begin VB.Frame Frame8 
      Caption         =   "Timers"
      Height          =   3975
      Left            =   8520
      TabIndex        =   206
      Top             =   1680
      Width           =   3135
      Begin VB.Timer Timer1 
         Enabled         =   0   'False
         Interval        =   1
         Left            =   2040
         Top             =   240
      End
      Begin VB.Timer Timer2 
         Enabled         =   0   'False
         Interval        =   1000
         Left            =   2040
         Top             =   720
      End
      Begin VB.Timer Timer3 
         Enabled         =   0   'False
         Interval        =   250
         Left            =   1560
         Top             =   720
      End
      Begin VB.Timer zaman 
         Enabled         =   0   'False
         Interval        =   1000
         Left            =   2520
         Top             =   1200
      End
      Begin VB.Timer Timer4 
         Enabled         =   0   'False
         Interval        =   250
         Left            =   2520
         Top             =   720
      End
      Begin VB.Timer Timer5 
         Enabled         =   0   'False
         Interval        =   250
         Left            =   2520
         Top             =   240
      End
      Begin VB.Timer Timer6 
         Enabled         =   0   'False
         Interval        =   155
         Left            =   600
         Top             =   1200
      End
      Begin VB.Timer Timer7 
         Enabled         =   0   'False
         Interval        =   250
         Left            =   1080
         Top             =   1200
      End
      Begin VB.Timer Timer8 
         Enabled         =   0   'False
         Interval        =   155
         Left            =   1560
         Top             =   1200
      End
      Begin VB.Timer Timer9 
         Enabled         =   0   'False
         Interval        =   155
         Left            =   2040
         Top             =   1200
      End
      Begin VB.Timer Timer19 
         Enabled         =   0   'False
         Interval        =   5
         Left            =   120
         Top             =   1200
      End
      Begin VB.Frame Frame1 
         Caption         =   "Effect Timerleri"
         Height          =   2295
         Index           =   1
         Left            =   0
         TabIndex        =   207
         Top             =   1680
         Width           =   3135
         Begin VB.Timer effect3 
            Interval        =   2000
            Left            =   600
            Top             =   240
         End
         Begin VB.Timer effect4 
            Interval        =   1
            Left            =   1560
            Top             =   240
         End
         Begin VB.Timer effect2 
            Interval        =   700
            Left            =   1080
            Top             =   240
         End
         Begin VB.Timer effect1 
            Interval        =   10
            Left            =   120
            Top             =   240
         End
      End
      Begin VB.Timer Timer12 
         Enabled         =   0   'False
         Interval        =   222
         Left            =   1080
         Top             =   240
      End
      Begin VB.Timer Timer11 
         Enabled         =   0   'False
         Interval        =   2000
         Left            =   1560
         Top             =   240
      End
      Begin VB.Timer Timer13 
         Enabled         =   0   'False
         Interval        =   100
         Left            =   600
         Top             =   240
      End
      Begin VB.Timer Timer14 
         Enabled         =   0   'False
         Interval        =   1250
         Left            =   120
         Top             =   720
      End
      Begin VB.Timer Timer15 
         Interval        =   1000
         Left            =   1080
         Top             =   720
      End
      Begin VB.Timer Timer31 
         Enabled         =   0   'False
         Interval        =   2000
         Left            =   600
         Top             =   720
      End
      Begin VB.Timer Timer21 
         Interval        =   100
         Left            =   120
         Top             =   240
      End
   End
   Begin VB.Timer Timer22 
      Interval        =   1000
      Left            =   4080
      Top             =   2160
   End
   Begin VB.Frame Frame6 
      BackColor       =   &H00FFFFFF&
      Caption         =   "SC"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1935
      Left            =   6840
      TabIndex        =   106
      Top             =   6720
      Width           =   1575
      Begin VB.CommandButton Command28 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Sil"
         Height          =   375
         Left            =   840
         MaskColor       =   &H00FFFFFF&
         Style           =   1  'Graphical
         TabIndex        =   116
         Top             =   1440
         Width           =   615
      End
      Begin VB.CommandButton Command27 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Sil"
         Height          =   255
         Left            =   840
         MaskColor       =   &H00FFFFFF&
         Style           =   1  'Graphical
         TabIndex        =   115
         Top             =   1200
         Width           =   615
      End
      Begin VB.CommandButton Command26 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Sil"
         Height          =   375
         Left            =   840
         MaskColor       =   &H00FFFFFF&
         Style           =   1  'Graphical
         TabIndex        =   114
         Top             =   840
         Width           =   615
      End
      Begin VB.CommandButton Command25 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Sil"
         Height          =   255
         Left            =   840
         MaskColor       =   &H00FFFFFF&
         Style           =   1  'Graphical
         TabIndex        =   113
         Top             =   600
         Width           =   615
      End
      Begin VB.CommandButton Command24 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Sil"
         Height          =   375
         Left            =   840
         MaskColor       =   &H00FFFFFF&
         Style           =   1  'Graphical
         TabIndex        =   112
         Top             =   240
         Width           =   615
      End
      Begin VB.CommandButton Command23 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Def SC"
         Height          =   255
         Left            =   120
         MaskColor       =   &H00FFFFFF&
         Style           =   1  'Graphical
         TabIndex        =   111
         Top             =   600
         Width           =   735
      End
      Begin VB.CommandButton Command22 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Coin"
         Height          =   375
         Left            =   120
         MaskColor       =   &H00FFFFFF&
         Style           =   1  'Graphical
         TabIndex        =   110
         Top             =   1440
         Width           =   735
      End
      Begin VB.CommandButton Command21 
         BackColor       =   &H00FFFFFF&
         Caption         =   "NP SC"
         Height          =   255
         Left            =   120
         MaskColor       =   &H00FFFFFF&
         Style           =   1  'Graphical
         TabIndex        =   109
         Top             =   1200
         Width           =   735
      End
      Begin VB.CommandButton Command15 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Pazar SC"
         Height          =   375
         Left            =   120
         MaskColor       =   &H00FFFFFF&
         Style           =   1  'Graphical
         TabIndex        =   108
         Top             =   840
         Width           =   735
      End
      Begin VB.CommandButton Command7 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Attack SC"
         Height          =   375
         Left            =   120
         MaskColor       =   &H00FFFFFF&
         Style           =   1  'Graphical
         TabIndex        =   107
         Top             =   240
         Width           =   735
      End
   End
   Begin VB.TextBox Text21 
      Height          =   285
      Left            =   10200
      TabIndex        =   26
      Top             =   11160
      Width           =   735
   End
   Begin VB.ListBox moblist 
      Height          =   255
      Left            =   10200
      TabIndex        =   25
      Top             =   10920
      Width           =   1335
   End
   Begin VB.ListBox kutuid 
      Height          =   255
      ItemData        =   "Form1.frx":0000
      Left            =   8640
      List            =   "Form1.frx":0002
      TabIndex        =   17
      Top             =   10920
      Width           =   735
   End
   Begin VB.ListBox invlist 
      Height          =   255
      Left            =   9360
      TabIndex        =   24
      Top             =   11160
      Width           =   735
   End
   Begin VB.TextBox charad 
      Height          =   285
      Left            =   9360
      TabIndex        =   23
      Text            =   "char ad"
      Top             =   10920
      Width           =   735
   End
   Begin VB.TextBox Text2 
      BackColor       =   &H0080C0FF&
      Height          =   285
      Left            =   10680
      TabIndex        =   22
      Text            =   "500"
      Top             =   8160
      Width           =   495
   End
   Begin VB.CheckBox Check1 
      BackColor       =   &H0080C0FF&
      Caption         =   "SC Tazele Aktif"
      Height          =   255
      Left            =   8520
      TabIndex        =   21
      Top             =   8400
      Width           =   1455
   End
   Begin VB.TextBox Text10 
      Height          =   1335
      Left            =   8640
      TabIndex        =   20
      Text            =   "Text10"
      Top             =   240
      Width           =   3975
   End
   Begin VB.CommandButton Command9 
      Caption         =   "Oyunu Ac"
      Height          =   375
      Left            =   6000
      TabIndex        =   19
      Top             =   8520
      Width           =   855
   End
   Begin SHDocVwCtl.WebBrowser WebBrowser1 
      Height          =   1455
      Left            =   8520
      TabIndex        =   16
      Top             =   9000
      Width           =   3975
      ExtentX         =   7011
      ExtentY         =   2566
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
      Location        =   "http:///"
   End
   Begin VB.CommandButton Command8 
      BackColor       =   &H0080C0FF&
      Caption         =   "DURDUR"
      Enabled         =   0   'False
      Height          =   375
      Left            =   10680
      Style           =   1  'Graphical
      TabIndex        =   15
      Top             =   8640
      Width           =   1815
   End
   Begin VB.CommandButton Command4 
      BackColor       =   &H0080C0FF&
      Caption         =   "BAÞLAT"
      Enabled         =   0   'False
      Height          =   375
      Left            =   8520
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   8640
      Width           =   1695
   End
   Begin VB.TextBox Text5 
      Height          =   285
      Left            =   8640
      TabIndex        =   8
      Text            =   "Text5"
      Top             =   11160
      Width           =   735
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00FFC0C0&
      Height          =   615
      Index           =   4
      Left            =   8520
      TabIndex        =   3
      Top             =   7560
      Width           =   3975
      Begin VB.CheckBox Check2 
         BackColor       =   &H00FFC0C0&
         Caption         =   "+6 Da Oyundan Çýkma(Direkt 7 ye At)"
         Height          =   255
         Left            =   120
         TabIndex        =   14
         Top             =   240
         Value           =   1  'Checked
         Width           =   3135
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00FFC0C0&
      Caption         =   "Alýnacak Ýtemler"
      Height          =   735
      Index           =   3
      Left            =   8520
      TabIndex        =   2
      Top             =   6960
      Width           =   3975
      Begin VB.ComboBox Combo4 
         BackColor       =   &H0080C0FF&
         Height          =   315
         ItemData        =   "Form1.frx":0004
         Left            =   120
         List            =   "Form1.frx":002F
         Style           =   2  'Dropdown List
         TabIndex        =   13
         Top             =   240
         Width           =   1935
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00FFC0C0&
      Caption         =   "Oyun Dizin - ID Þifre - Server bilgileri"
      Height          =   1335
      Index           =   0
      Left            =   8520
      TabIndex        =   0
      Top             =   5640
      Width           =   3975
      Begin VB.ComboBox Combo3 
         BackColor       =   &H0080C0FF&
         Height          =   315
         ItemData        =   "Form1.frx":0158
         Left            =   2280
         List            =   "Form1.frx":0162
         Style           =   2  'Dropdown List
         TabIndex        =   12
         Top             =   960
         Width           =   1215
      End
      Begin VB.ComboBox Combo2 
         BackColor       =   &H0080C0FF&
         Height          =   315
         ItemData        =   "Form1.frx":016C
         Left            =   720
         List            =   "Form1.frx":0173
         Style           =   2  'Dropdown List
         TabIndex        =   11
         Top             =   960
         Width           =   1575
      End
      Begin VB.TextBox Text4 
         BackColor       =   &H0080C0FF&
         Height          =   285
         Left            =   2400
         TabIndex        =   5
         Top             =   600
         Width           =   1455
      End
      Begin VB.TextBox Text3 
         BackColor       =   &H0080C0FF&
         Height          =   285
         Left            =   840
         TabIndex        =   4
         Top             =   600
         Width           =   1455
      End
      Begin VB.TextBox Text1 
         BackColor       =   &H0080C0FF&
         Height          =   285
         Left            =   120
         TabIndex        =   1
         Text            =   "E:\Steam2\steamapps\common\Knight Online\knightonline.exe"
         Top             =   240
         Width           =   3615
      End
      Begin VB.Label Label2 
         BackColor       =   &H00FFC0C0&
         Caption         =   "Server"
         Height          =   255
         Index           =   2
         Left            =   1080
         TabIndex        =   10
         Top             =   960
         Width           =   495
      End
      Begin VB.Label Label2 
         BackColor       =   &H00FFC0C0&
         Caption         =   "Þifre"
         Height          =   255
         Index           =   1
         Left            =   1920
         TabIndex        =   7
         Top             =   600
         Width           =   615
      End
      Begin VB.Label Label2 
         BackColor       =   &H00FFC0C0&
         Caption         =   "ID"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   6
         Top             =   600
         Width           =   375
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   9855
      Left            =   0
      TabIndex        =   27
      Top             =   2160
      Width           =   3975
      _ExtentX        =   7011
      _ExtentY        =   17383
      _Version        =   393216
      Tabs            =   6
      TabsPerRow      =   6
      TabHeight       =   520
      BackColor       =   16777215
      TabCaption(0)   =   "Genel"
      TabPicture(0)   =   "Form1.frx":017F
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "GroupBox2"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      TabCaption(1)   =   "Attack"
      TabPicture(1)   =   "Form1.frx":019B
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Frame3"
      Tab(1).ControlCount=   1
      TabCaption(2)   =   "Heal"
      TabPicture(2)   =   "Form1.frx":01B7
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "GroupBox1"
      Tab(2).Control(1)=   "Frame12"
      Tab(2).Control(2)=   "potion"
      Tab(2).Control(3)=   "mana"
      Tab(2).Control(4)=   "intihar"
      Tab(2).Control(5)=   "minor"
      Tab(2).ControlCount=   6
      TabCaption(3)   =   "Upgrade"
      TabPicture(3)   =   "Form1.frx":01D3
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "Frame4"
      Tab(3).ControlCount=   1
      TabCaption(4)   =   "Diðer"
      TabPicture(4)   =   "Form1.frx":01EF
      Tab(4).ControlEnabled=   0   'False
      Tab(4).Control(0)=   "TabControl1"
      Tab(4).ControlCount=   1
      TabCaption(5)   =   "Pazar"
      TabPicture(5)   =   "Form1.frx":020B
      Tab(5).ControlEnabled=   0   'False
      Tab(5).Control(0)=   "GI"
      Tab(5).ControlCount=   1
      Begin VB.Frame GI 
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   162
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2535
         Left            =   -74880
         TabIndex        =   196
         Top             =   7200
         Width           =   3600
         Begin VB.TextBox Text22 
            Height          =   285
            Left            =   2040
            TabIndex        =   203
            Text            =   "Text22"
            Top             =   120
            Width           =   375
         End
         Begin VB.Timer pazartut 
            Left            =   600
            Top             =   1080
         End
         Begin VB.CommandButton Command12 
            BackColor       =   &H00FFFFC0&
            Caption         =   "ID EKLE"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Left            =   2040
            MaskColor       =   &H00FFFFFF&
            Style           =   1  'Graphical
            TabIndex        =   202
            Top             =   720
            Width           =   1335
         End
         Begin VB.CommandButton Command11 
            BackColor       =   &H00C0FFC0&
            Caption         =   "ID SIL"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Left            =   2040
            MaskColor       =   &H00FFFFFF&
            Style           =   1  'Graphical
            TabIndex        =   201
            Top             =   1080
            Width           =   1335
         End
         Begin VB.ListBox List5 
            Height          =   2205
            Left            =   120
            TabIndex        =   200
            Top             =   240
            Width           =   1695
         End
         Begin VB.CheckBox Check3 
            BackColor       =   &H00C0FFFF&
            Caption         =   "Baþla"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   375
            Left            =   2040
            Style           =   1  'Graphical
            TabIndex        =   199
            Top             =   2040
            Width           =   1335
         End
         Begin VB.CommandButton Command6 
            BackColor       =   &H00C0FFC0&
            Caption         =   "KAYDET"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Left            =   2040
            MaskColor       =   &H00FFFFFF&
            Style           =   1  'Graphical
            TabIndex        =   198
            Top             =   1440
            Width           =   1335
         End
         Begin VB.CommandButton Command5 
            BackColor       =   &H008080FF&
            Caption         =   "Temizle"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Left            =   2040
            MaskColor       =   &H00FFFFFF&
            Style           =   1  'Graphical
            TabIndex        =   197
            Top             =   360
            Width           =   1335
         End
      End
      Begin XtremeSuiteControls.TabControl TabControl1 
         Height          =   9375
         Left            =   -74880
         TabIndex        =   135
         Top             =   360
         Width           =   3735
         _Version        =   851972
         _ExtentX        =   6588
         _ExtentY        =   16536
         _StockProps     =   68
         AllowReorder    =   -1  'True
         Appearance      =   8
         PaintManager.BoldSelected=   -1  'True
         PaintManager.HotTracking=   -1  'True
         PaintManager.ShowIcons=   -1  'True
         ItemCount       =   4
         Item(0).Caption =   "Diðer"
         Item(0).ControlCount=   3
         Item(0).Control(0)=   "Frame11"
         Item(0).Control(1)=   "Frame9"
         Item(0).Control(2)=   "Frame7"
         Item(1).Caption =   "Görev[Human]"
         Item(1).ControlCount=   1
         Item(1).Control(0)=   "ListHuman"
         Item(2).Caption =   "Görev[Karus]"
         Item(2).ControlCount=   1
         Item(2).Control(0)=   "ListKarus"
         Item(3).Caption =   "Effects"
         Item(3).ControlCount=   4
         Item(3).Control(0)=   "Frame2"
         Item(3).Control(1)=   "Frame5"
         Item(3).Control(2)=   "Frame13"
         Item(3).Control(3)=   "Frame14"
         Begin VB.Frame Frame14 
            Caption         =   "Alan Skilleri"
            ForeColor       =   &H00000000&
            Height          =   975
            Left            =   -69880
            TabIndex        =   188
            Top             =   3720
            Visible         =   0   'False
            Width           =   3495
            Begin XtremeSuiteControls.CheckBox C 
               Height          =   195
               Index           =   24
               Left            =   1320
               TabIndex        =   189
               Top             =   720
               Width           =   1275
               _Version        =   851972
               _ExtentX        =   2249
               _ExtentY        =   344
               _StockProps     =   79
               Caption         =   "Þimþek Yaðdýr"
               BackColor       =   -2147483633
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.CheckBox C 
               Height          =   195
               Index           =   1
               Left            =   1320
               TabIndex        =   190
               Top             =   480
               Width           =   1365
               _Version        =   851972
               _ExtentX        =   2408
               _ExtentY        =   344
               _StockProps     =   79
               Caption         =   "Buz AT"
               BackColor       =   -2147483633
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.CheckBox C 
               Height          =   195
               Index           =   23
               Left            =   120
               TabIndex        =   191
               Top             =   720
               Width           =   1365
               _Version        =   851972
               _ExtentX        =   2408
               _ExtentY        =   344
               _StockProps     =   79
               Caption         =   "Comfety :)"
               BackColor       =   -2147483633
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.CheckBox C 
               Height          =   195
               Index           =   3
               Left            =   1320
               TabIndex        =   192
               Top             =   240
               Width           =   1365
               _Version        =   851972
               _ExtentX        =   2408
               _ExtentY        =   344
               _StockProps     =   79
               Caption         =   "Top Yap"
               BackColor       =   -2147483633
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.CheckBox C 
               Height          =   195
               Index           =   0
               Left            =   120
               TabIndex        =   193
               Top             =   240
               Width           =   1125
               _Version        =   851972
               _ExtentX        =   1984
               _ExtentY        =   344
               _StockProps     =   79
               Caption         =   "Nova Show"
               BackColor       =   -2147483633
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.CheckBox C 
               Height          =   195
               Index           =   25
               Left            =   120
               TabIndex        =   194
               Top             =   480
               Width           =   1365
               _Version        =   851972
               _ExtentX        =   2408
               _ExtentY        =   344
               _StockProps     =   79
               Caption         =   "Kar Yaðdýr"
               BackColor       =   -2147483633
               UseVisualStyle  =   -1  'True
            End
         End
         Begin VB.Frame Frame13 
            Caption         =   "Effect Dene"
            Height          =   975
            Left            =   -69880
            TabIndex        =   183
            Top             =   4680
            Visible         =   0   'False
            Width           =   3495
            Begin VB.CommandButton Command3 
               Caption         =   "Kendine AT"
               Height          =   300
               Left            =   120
               TabIndex        =   186
               Top             =   240
               Width           =   1215
            End
            Begin VB.CommandButton Command1 
               Caption         =   "Alan AT"
               Height          =   300
               Left            =   2280
               TabIndex        =   185
               Top             =   240
               Width           =   975
            End
            Begin VB.TextBox Text9 
               Height          =   300
               Left            =   1440
               MaxLength       =   6
               TabIndex        =   184
               Text            =   "000000"
               Top             =   240
               Width           =   735
            End
            Begin VB.Label Mob 
               Caption         =   "KarakterID"
               Height          =   255
               Left            =   2400
               TabIndex        =   195
               Top             =   600
               Width           =   855
            End
            Begin VB.Label Label1 
               BackStyle       =   0  'Transparent
               Caption         =   "Level farkeder."
               BeginProperty Font 
                  Name            =   "Arial"
                  Size            =   8.25
                  Charset         =   162
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   -1  'True
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   255
               Index           =   2
               Left            =   120
               TabIndex        =   187
               Top             =   600
               Width           =   1335
            End
         End
         Begin VB.Frame Frame5 
            Caption         =   "Normal Effectler"
            Height          =   1935
            Left            =   -69880
            TabIndex        =   164
            Top             =   1800
            Visible         =   0   'False
            Width           =   3495
            Begin XtremeSuiteControls.CheckBox C 
               Height          =   195
               Index           =   16
               Left            =   2400
               TabIndex        =   165
               Top             =   720
               Width           =   1005
               _Version        =   851972
               _ExtentX        =   1773
               _ExtentY        =   344
               _StockProps     =   79
               Caption         =   "Fire Armor"
               BackColor       =   -2147483633
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.CheckBox C 
               Height          =   195
               Index           =   15
               Left            =   2400
               TabIndex        =   166
               Top             =   480
               Width           =   1005
               _Version        =   851972
               _ExtentX        =   1773
               _ExtentY        =   344
               _StockProps     =   79
               Caption         =   "Minok's T"
               BackColor       =   -2147483633
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.CheckBox C 
               Height          =   195
               Index           =   17
               Left            =   2400
               TabIndex        =   167
               Top             =   960
               Width           =   1005
               _Version        =   851972
               _ExtentX        =   1773
               _ExtentY        =   344
               _StockProps     =   79
               Caption         =   "Kar Topu"
               BackColor       =   -2147483633
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.CheckBox C 
               Height          =   195
               Index           =   18
               Left            =   2400
               TabIndex        =   168
               Top             =   1200
               Width           =   885
               _Version        =   851972
               _ExtentX        =   1561
               _ExtentY        =   344
               _StockProps     =   79
               Caption         =   "Comfety"
               BackColor       =   -2147483633
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.CheckBox C 
               Height          =   195
               Index           =   14
               Left            =   2400
               TabIndex        =   169
               Top             =   240
               Width           =   645
               _Version        =   851972
               _ExtentX        =   1138
               _ExtentY        =   344
               _StockProps     =   79
               Caption         =   "Minor"
               BackColor       =   -2147483633
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.CheckBox C 
               Height          =   195
               Index           =   21
               Left            =   1320
               TabIndex        =   170
               Top             =   1440
               Width           =   1245
               _Version        =   851972
               _ExtentX        =   2196
               _ExtentY        =   344
               _StockProps     =   79
               Caption         =   "Scaled Skin"
               BackColor       =   -2147483633
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.CheckBox C 
               Height          =   195
               Index           =   4
               Left            =   1320
               TabIndex        =   171
               Top             =   240
               Width           =   1125
               _Version        =   851972
               _ExtentX        =   1984
               _ExtentY        =   344
               _StockProps     =   79
               Caption         =   "Master Yak"
               BackColor       =   -2147483633
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.CheckBox C 
               Height          =   195
               Index           =   7
               Left            =   1320
               TabIndex        =   172
               Top             =   480
               Width           =   885
               _Version        =   851972
               _ExtentX        =   1561
               _ExtentY        =   344
               _StockProps     =   79
               Caption         =   "Eskrima"
               BackColor       =   -2147483633
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.CheckBox C 
               Height          =   195
               Index           =   9
               Left            =   120
               TabIndex        =   173
               Top             =   1680
               Width           =   1365
               _Version        =   851972
               _ExtentX        =   2408
               _ExtentY        =   344
               _StockProps     =   79
               Caption         =   "1920 Lik Heal"
               BackColor       =   -2147483633
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.CheckBox C 
               Height          =   195
               Index           =   12
               Left            =   1320
               TabIndex        =   174
               Top             =   720
               Width           =   1245
               _Version        =   851972
               _ExtentX        =   2196
               _ExtentY        =   344
               _StockProps     =   79
               Caption         =   "Tarot Effect"
               BackColor       =   -2147483633
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.CheckBox C 
               Height          =   195
               Index           =   19
               Left            =   1320
               TabIndex        =   175
               Top             =   960
               Width           =   1245
               _Version        =   851972
               _ExtentX        =   2196
               _ExtentY        =   344
               _StockProps     =   79
               Caption         =   "Evade"
               BackColor       =   -2147483633
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.CheckBox C 
               Height          =   195
               Index           =   20
               Left            =   1320
               TabIndex        =   176
               Top             =   1200
               Width           =   1245
               _Version        =   851972
               _ExtentX        =   2196
               _ExtentY        =   344
               _StockProps     =   79
               Caption         =   "Safety"
               BackColor       =   -2147483633
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.CheckBox C 
               Height          =   195
               Index           =   2
               Left            =   120
               TabIndex        =   177
               Top             =   240
               Width           =   1365
               _Version        =   851972
               _ExtentX        =   2408
               _ExtentY        =   344
               _StockProps     =   79
               Caption         =   "Eline Iþýkver"
               BackColor       =   -2147483633
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.CheckBox C 
               Height          =   195
               Index           =   5
               Left            =   120
               TabIndex        =   178
               Top             =   480
               Width           =   1245
               _Version        =   851972
               _ExtentX        =   2196
               _ExtentY        =   344
               _StockProps     =   79
               Caption         =   "Kendin Patla"
               BackColor       =   -2147483633
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.CheckBox C 
               Height          =   195
               Index           =   6
               Left            =   120
               TabIndex        =   179
               Top             =   720
               Width           =   765
               _Version        =   851972
               _ExtentX        =   1349
               _ExtentY        =   344
               _StockProps     =   79
               Caption         =   "Buz At"
               BackColor       =   -2147483633
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.CheckBox C 
               Height          =   195
               Index           =   8
               Left            =   120
               TabIndex        =   180
               Top             =   960
               Width           =   1245
               _Version        =   851972
               _ExtentX        =   2196
               _ExtentY        =   344
               _StockProps     =   79
               Caption         =   "720 Lik POT "
               BackColor       =   -2147483633
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.CheckBox C 
               Height          =   195
               Index           =   10
               Left            =   120
               TabIndex        =   181
               Top             =   1200
               Width           =   1365
               _Version        =   851972
               _ExtentX        =   2408
               _ExtentY        =   344
               _StockProps     =   79
               Caption         =   "300 Acc Eff"
               BackColor       =   -2147483633
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.CheckBox C 
               Height          =   195
               Index           =   11
               Left            =   120
               TabIndex        =   182
               Top             =   1440
               Width           =   1245
               _Version        =   851972
               _ExtentX        =   2196
               _ExtentY        =   344
               _StockProps     =   79
               Caption         =   "62 Kaðýdý Eff"
               BackColor       =   -2147483633
               UseVisualStyle  =   -1  'True
            End
         End
         Begin VB.Frame Frame2 
            Caption         =   "Effect Gidicek Kiþi"
            ForeColor       =   &H00000000&
            Height          =   495
            Left            =   -69880
            TabIndex        =   161
            Top             =   1320
            Visible         =   0   'False
            Width           =   3495
            Begin XtremeSuiteControls.RadioButton OP1 
               Height          =   195
               Left            =   120
               TabIndex        =   162
               Top             =   240
               Width           =   975
               _Version        =   851972
               _ExtentX        =   1720
               _ExtentY        =   344
               _StockProps     =   79
               Caption         =   "Kendine"
               ForeColor       =   0
               BackColor       =   -2147483633
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.RadioButton OP2 
               Height          =   195
               Left            =   2040
               TabIndex        =   163
               Top             =   240
               Width           =   1095
               _Version        =   851972
               _ExtentX        =   1931
               _ExtentY        =   344
               _StockProps     =   79
               Caption         =   "Baþkasýna"
               ForeColor       =   0
               BackColor       =   -2147483633
               UseVisualStyle  =   -1  'True
            End
         End
         Begin VB.Frame Frame7 
            Caption         =   "Flood"
            Height          =   1695
            Left            =   120
            TabIndex        =   155
            Top             =   360
            Width           =   3495
            Begin VB.TextBox Text11 
               Height          =   1335
               Left            =   120
               TabIndex        =   159
               Text            =   "Text11"
               Top             =   240
               Width           =   2055
            End
            Begin VB.TextBox Text12 
               Height          =   285
               Left            =   2280
               TabIndex        =   158
               Text            =   "1000"
               Top             =   840
               Width           =   1095
            End
            Begin VB.CheckBox Check10 
               BackColor       =   &H8000000B&
               Caption         =   "Flood"
               Height          =   375
               Left            =   2280
               Style           =   1  'Graphical
               TabIndex        =   157
               Top             =   1200
               Width           =   1095
            End
            Begin VB.Timer FloodTimer 
               Enabled         =   0   'False
               Interval        =   1000
               Left            =   120
               Top             =   1080
            End
            Begin VB.ComboBox ComboUmut 
               Height          =   315
               ItemData        =   "Form1.frx":0227
               Left            =   2280
               List            =   "Form1.frx":023D
               TabIndex        =   156
               Text            =   "Normal"
               Top             =   240
               Width           =   1095
            End
            Begin VB.Label Label10 
               Caption         =   "Hýz"
               Height          =   255
               Left            =   2640
               TabIndex        =   160
               Top             =   600
               Width           =   375
            End
         End
         Begin VB.Frame Frame9 
            Caption         =   "Merchant Bug"
            Height          =   2415
            Left            =   120
            TabIndex        =   143
            Top             =   2040
            Width           =   3495
            Begin VB.TextBox Text13 
               Height          =   315
               Left            =   1680
               TabIndex        =   149
               Text            =   "50000000"
               Top             =   1920
               Width           =   855
            End
            Begin VB.TextBox Text14 
               Height          =   315
               Left            =   1680
               TabIndex        =   148
               Text            =   "2000000"
               Top             =   1560
               Width           =   855
            End
            Begin VB.CommandButton Command31 
               Caption         =   "Ekle"
               Height          =   195
               Left            =   2880
               TabIndex        =   147
               Top             =   1200
               Width           =   495
            End
            Begin VB.TextBox Text15 
               Height          =   315
               Left            =   1680
               TabIndex        =   146
               Top             =   240
               Width           =   1455
            End
            Begin VB.Timer Timer18 
               Interval        =   9000
               Left            =   1080
               Top             =   1800
            End
            Begin VB.CommandButton Command34 
               Caption         =   "Command34"
               Height          =   255
               Left            =   2880
               TabIndex        =   145
               Top             =   960
               Width           =   255
            End
            Begin VB.CommandButton Command35 
               Caption         =   "Command35"
               Height          =   255
               Left            =   3120
               TabIndex        =   144
               Top             =   960
               Width           =   255
            End
            Begin XtremeSuiteControls.PushButton PushButton33 
               Height          =   375
               Left            =   1680
               TabIndex        =   150
               Top             =   600
               Width           =   1095
               _Version        =   851972
               _ExtentX        =   1931
               _ExtentY        =   661
               _StockProps     =   79
               Caption         =   "ÇabukKur"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.PushButton PushButton32 
               Height          =   375
               Left            =   1680
               TabIndex        =   151
               Top             =   1080
               Width           =   1095
               _Version        =   851972
               _ExtentX        =   1931
               _ExtentY        =   661
               _StockProps     =   79
               Caption         =   "Pazar Aç"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.PushButton PushButton31 
               Height          =   375
               Left            =   2640
               TabIndex        =   152
               Top             =   1560
               Width           =   735
               _Version        =   851972
               _ExtentX        =   1296
               _ExtentY        =   661
               _StockProps     =   79
               Caption         =   "Koy"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.PushButton PushButton30 
               Height          =   375
               Left            =   2640
               TabIndex        =   153
               Top             =   1920
               Width           =   735
               _Version        =   851972
               _ExtentX        =   1296
               _ExtentY        =   661
               _StockProps     =   79
               Caption         =   "Deðiþtir"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.ListBox List4 
               Height          =   2055
               Left            =   120
               TabIndex        =   154
               Top             =   240
               Width           =   1455
               _Version        =   851972
               _ExtentX        =   2566
               _ExtentY        =   3625
               _StockProps     =   77
               BackColor       =   -2147483643
            End
         End
         Begin VB.Frame Frame11 
            Caption         =   "Diðer"
            Height          =   2295
            Left            =   120
            TabIndex        =   138
            Top             =   4440
            Width           =   1695
            Begin XtremeSuiteControls.PushButton PushButton29 
               Height          =   375
               Left            =   240
               TabIndex        =   139
               Top             =   1440
               Width           =   1215
               _Version        =   851972
               _ExtentX        =   2143
               _ExtentY        =   661
               _StockProps     =   79
               Caption         =   "Abyss Kýr"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.PushButton PushButton28 
               Height          =   375
               Left            =   240
               TabIndex        =   140
               Top             =   1080
               Width           =   1215
               _Version        =   851972
               _ExtentX        =   2143
               _ExtentY        =   661
               _StockProps     =   79
               Caption         =   "FT'ye Gir"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.PushButton PushButton27 
               Height          =   375
               Left            =   240
               TabIndex        =   141
               Top             =   360
               Width           =   1215
               _Version        =   851972
               _ExtentX        =   2143
               _ExtentY        =   661
               _StockProps     =   79
               Caption         =   "Town At"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.PushButton PushButton26 
               Height          =   375
               Left            =   240
               TabIndex        =   142
               Top             =   720
               Width           =   1215
               _Version        =   851972
               _ExtentX        =   2143
               _ExtentY        =   661
               _StockProps     =   79
               Caption         =   "NPC Aç Test"
               UseVisualStyle  =   -1  'True
            End
         End
         Begin VB.ListBox ListHuman 
            Height          =   8445
            ItemData        =   "Form1.frx":026D
            Left            =   -69880
            List            =   "Form1.frx":0391
            TabIndex        =   137
            Top             =   600
            Visible         =   0   'False
            Width           =   3495
         End
         Begin VB.ListBox ListKarus 
            Height          =   8055
            ItemData        =   "Form1.frx":08DB
            Left            =   -69880
            List            =   "Form1.frx":09FF
            TabIndex        =   136
            Top             =   1080
            Visible         =   0   'False
            Width           =   3495
         End
      End
      Begin XtremeSuiteControls.GroupBox GroupBox2 
         Height          =   9255
         Left            =   120
         TabIndex        =   89
         Top             =   360
         Width           =   3735
         _Version        =   851972
         _ExtentX        =   6588
         _ExtentY        =   16325
         _StockProps     =   79
         Caption         =   "Genel"
         UseVisualStyle  =   -1  'True
         Begin XtremeSuiteControls.GroupBox GroupBox7 
            Height          =   1935
            Left            =   120
            TabIndex        =   122
            Top             =   3960
            Width           =   1575
            _Version        =   851972
            _ExtentX        =   2778
            _ExtentY        =   3413
            _StockProps     =   79
            Caption         =   "Paket Sender"
            UseVisualStyle  =   -1  'True
            Begin XtremeSuiteControls.FlatEdit pakettext 
               Height          =   375
               Left            =   120
               TabIndex        =   125
               Top             =   240
               Width           =   1335
               _Version        =   851972
               _ExtentX        =   2355
               _ExtentY        =   661
               _StockProps     =   77
               BackColor       =   -2147483643
               Text            =   "Paket Code"
            End
            Begin XtremeSuiteControls.PushButton PushButton24 
               Height          =   375
               Left            =   120
               TabIndex        =   124
               Top             =   1440
               Width           =   1335
               _Version        =   851972
               _ExtentX        =   2355
               _ExtentY        =   661
               _StockProps     =   79
               Caption         =   "Oku"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.PushButton PushButton23 
               Height          =   375
               Left            =   120
               TabIndex        =   123
               Top             =   1080
               Width           =   1335
               _Version        =   851972
               _ExtentX        =   2355
               _ExtentY        =   661
               _StockProps     =   79
               Caption         =   "Gönder"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.Label Label14 
               Height          =   255
               Left            =   120
               TabIndex        =   126
               Top             =   720
               Width           =   1335
               _Version        =   851972
               _ExtentX        =   2355
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "       Paket Inf"
            End
         End
         Begin XtremeSuiteControls.GroupBox GroupBox6 
            Height          =   3255
            Left            =   120
            TabIndex        =   120
            Top             =   5880
            Width           =   3495
            _Version        =   851972
            _ExtentX        =   6165
            _ExtentY        =   5741
            _StockProps     =   79
            Caption         =   "Informations"
            UseVisualStyle  =   -1  'True
            Begin XtremeSuiteControls.GroupBox GroupBox8 
               Height          =   1455
               Left            =   0
               TabIndex        =   233
               Top             =   240
               Width           =   3495
               _Version        =   851972
               _ExtentX        =   6165
               _ExtentY        =   2566
               _StockProps     =   79
               Caption         =   "Karakter Takibi"
               BackColor       =   -2147483633
               UseVisualStyle  =   -1  'True
               Begin VB.Timer Timer10 
                  Interval        =   100
                  Left            =   2640
                  Top             =   360
               End
               Begin VB.Timer Follow 
                  Interval        =   200
                  Left            =   2640
                  Top             =   720
               End
               Begin VB.ComboBox Combo8 
                  BeginProperty Font 
                     Name            =   "Tahoma"
                     Size            =   8.25
                     Charset         =   162
                     Weight          =   400
                     Underline       =   0   'False
                     Italic          =   0   'False
                     Strikethrough   =   0   'False
                  EndProperty
                  Height          =   315
                  ItemData        =   "Form1.frx":0F49
                  Left            =   120
                  List            =   "Form1.frx":0F68
                  TabIndex        =   238
                  Text            =   $"Form1.frx":0FE0
                  Top             =   240
                  Width           =   1455
               End
               Begin XtremeSuiteControls.RadioButton RadioButton1 
                  Height          =   255
                  Left            =   120
                  TabIndex        =   234
                  Top             =   840
                  Width           =   2055
                  _Version        =   851972
                  _ExtentX        =   3625
                  _ExtentY        =   450
                  _StockProps     =   79
                  Caption         =   "Ana Karakteri Takip Et"
                  BackColor       =   -2147483633
                  UseVisualStyle  =   -1  'True
                  Value           =   -1  'True
               End
               Begin XtremeSuiteControls.CheckBox Ch 
                  Height          =   255
                  Index           =   17
                  Left            =   120
                  TabIndex        =   235
                  Top             =   600
                  Width           =   975
                  _Version        =   851972
                  _ExtentX        =   1720
                  _ExtentY        =   450
                  _StockProps     =   79
                  Caption         =   "Takip Et"
                  BackColor       =   -2147483633
                  UseVisualStyle  =   -1  'True
               End
               Begin XtremeSuiteControls.RadioButton RadioButton2 
                  Height          =   255
                  Left            =   120
                  TabIndex        =   236
                  Top             =   1080
                  Width           =   1455
                  _Version        =   851972
                  _ExtentX        =   2566
                  _ExtentY        =   450
                  _StockProps     =   79
                  Caption         =   "Seçileni Takip Et"
                  BackColor       =   -2147483633
                  UseVisualStyle  =   -1  'True
               End
            End
            Begin VB.Label Label18 
               Caption         =   "Label18"
               Height          =   255
               Left            =   2760
               TabIndex        =   240
               Top             =   2040
               Width           =   615
            End
            Begin VB.Label Label17 
               Caption         =   "Label17"
               Height          =   255
               Left            =   2760
               TabIndex        =   239
               Top             =   1800
               Width           =   615
            End
            Begin VB.Label Label12 
               BackColor       =   &H00FFFFFF&
               Caption         =   "DusmanID2"
               Height          =   375
               Left            =   120
               TabIndex        =   212
               Top             =   2400
               Width           =   1335
            End
            Begin VB.Label Label4 
               BackColor       =   &H00C0FFFF&
               Caption         =   "Label4"
               Height          =   375
               Left            =   1440
               TabIndex        =   211
               Top             =   2760
               Width           =   1335
            End
            Begin VB.Label Label5 
               BackColor       =   &H00C0FFFF&
               Caption         =   "PT Bilgi"
               Height          =   375
               Left            =   120
               TabIndex        =   210
               Top             =   2760
               Width           =   1335
            End
            Begin VB.Label Label6 
               BackColor       =   &H00C0FFFF&
               Caption         =   "Label6"
               Height          =   375
               Left            =   1440
               TabIndex        =   209
               Top             =   2400
               Width           =   1335
            End
            Begin VB.Label Label666 
               BackColor       =   &H00C0FFFF&
               Caption         =   "Label11"
               Height          =   375
               Left            =   120
               TabIndex        =   208
               Top             =   2040
               Width           =   1335
            End
            Begin VB.Label Label7 
               BackColor       =   &H80000004&
               Caption         =   "DusmanID"
               Height          =   255
               Left            =   1560
               TabIndex        =   121
               Top             =   2040
               Width           =   1215
            End
         End
         Begin VB.Timer kutusýfýrla 
            Enabled         =   0   'False
            Interval        =   5000
            Left            =   720
            Top             =   2880
         End
         Begin VB.Timer kututopla 
            Interval        =   500
            Left            =   1200
            Top             =   2880
         End
         Begin XtremeSuiteControls.GroupBox GroupBox5 
            Height          =   3975
            Left            =   1920
            TabIndex        =   98
            Top             =   1920
            Width           =   1695
            _Version        =   851972
            _ExtentX        =   2990
            _ExtentY        =   7011
            _StockProps     =   79
            Caption         =   "SCs'"
            UseVisualStyle  =   -1  'True
            Begin XtremeSuiteControls.PushButton PushButton22 
               Height          =   375
               Left            =   120
               TabIndex        =   119
               Top             =   3480
               Width           =   1455
               _Version        =   851972
               _ExtentX        =   2566
               _ExtentY        =   661
               _StockProps     =   79
               Caption         =   "Coin Iptal"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.PushButton PushButton21 
               Height          =   375
               Left            =   120
               TabIndex        =   118
               Top             =   3120
               Width           =   1455
               _Version        =   851972
               _ExtentX        =   2566
               _ExtentY        =   661
               _StockProps     =   79
               Caption         =   "Coin SC"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.PushButton PushButton20 
               Height          =   375
               Left            =   120
               TabIndex        =   117
               Top             =   2760
               Width           =   1455
               _Version        =   851972
               _ExtentX        =   2566
               _ExtentY        =   661
               _StockProps     =   79
               Caption         =   "NP SC Iptal"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.PushButton PushButton19 
               Height          =   375
               Left            =   120
               TabIndex        =   105
               Top             =   2400
               Width           =   1455
               _Version        =   851972
               _ExtentX        =   2566
               _ExtentY        =   661
               _StockProps     =   79
               Caption         =   "NP SC"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.PushButton PushButton18 
               Height          =   375
               Left            =   120
               TabIndex        =   104
               Top             =   2040
               Width           =   1455
               _Version        =   851972
               _ExtentX        =   2566
               _ExtentY        =   661
               _StockProps     =   79
               Caption         =   "Pazar Iptal"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.PushButton PushButton17 
               Height          =   375
               Left            =   120
               TabIndex        =   103
               Top             =   1680
               Width           =   1455
               _Version        =   851972
               _ExtentX        =   2566
               _ExtentY        =   661
               _StockProps     =   79
               Caption         =   "Pazar SC"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.PushButton PushButton16 
               Height          =   375
               Left            =   120
               TabIndex        =   102
               Top             =   1320
               Width           =   1455
               _Version        =   851972
               _ExtentX        =   2566
               _ExtentY        =   661
               _StockProps     =   79
               Caption         =   "Defence Iptal"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.PushButton PushButton15 
               Height          =   375
               Left            =   120
               TabIndex        =   101
               Top             =   960
               Width           =   1455
               _Version        =   851972
               _ExtentX        =   2566
               _ExtentY        =   661
               _StockProps     =   79
               Caption         =   "Defence SC"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.PushButton PushButton14 
               Height          =   375
               Left            =   120
               TabIndex        =   100
               Top             =   600
               Width           =   1455
               _Version        =   851972
               _ExtentX        =   2566
               _ExtentY        =   661
               _StockProps     =   79
               Caption         =   "Attack Iptal"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.PushButton PushButton13 
               Height          =   375
               Left            =   120
               TabIndex        =   99
               Top             =   240
               Width           =   1455
               _Version        =   851972
               _ExtentX        =   2566
               _ExtentY        =   661
               _StockProps     =   79
               Caption         =   "Attack SC"
               UseVisualStyle  =   -1  'True
            End
         End
         Begin VB.Timer Timer17 
            Interval        =   5000
            Left            =   3000
            Top             =   1200
         End
         Begin VB.Timer Timer16 
            Enabled         =   0   'False
            Interval        =   60000
            Left            =   3000
            Top             =   840
         End
         Begin XtremeSuiteControls.GroupBox GroupBox4 
            Height          =   1335
            Left            =   1920
            TabIndex        =   93
            Top             =   600
            Width           =   1695
            _Version        =   851972
            _ExtentX        =   2990
            _ExtentY        =   2355
            _StockProps     =   79
            Caption         =   "Transformation"
            UseVisualStyle  =   -1  'True
            Begin VB.ComboBox Combo5 
               Height          =   315
               ItemData        =   "Form1.frx":0FEE
               Left            =   120
               List            =   "Form1.frx":102B
               TabIndex        =   97
               Text            =   "Combo5"
               Top             =   840
               Width           =   1455
            End
            Begin XtremeSuiteControls.CheckBox Check8 
               Height          =   255
               Left            =   120
               TabIndex        =   94
               Top             =   240
               Width           =   855
               _Version        =   851972
               _ExtentX        =   1508
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "TS Bas"
               UseVisualStyle  =   -1  'True
            End
            Begin VB.Label Label9 
               Caption         =   "2 TS Gerekli"
               Height          =   255
               Left            =   120
               TabIndex        =   96
               Top             =   600
               Width           =   1215
            End
            Begin VB.Label LblTsSüre 
               Caption         =   "Süre"
               Height          =   255
               Left            =   1200
               TabIndex        =   95
               Top             =   270
               Width           =   375
            End
         End
         Begin XtremeSuiteControls.GroupBox GroupBox3 
            Height          =   3375
            Left            =   120
            TabIndex        =   92
            Top             =   600
            Width           =   1575
            _Version        =   851972
            _ExtentX        =   2778
            _ExtentY        =   5953
            _StockProps     =   79
            Caption         =   "Genel"
            UseVisualStyle  =   -1  'True
            Begin VB.Timer loot 
               Interval        =   1
               Left            =   120
               Top             =   2280
            End
            Begin VB.CheckBox Check7 
               Caption         =   "AutoLootR"
               Height          =   255
               Left            =   120
               TabIndex        =   205
               Top             =   1920
               Width           =   1095
            End
            Begin XtremeSuiteControls.CheckBox CheckBox7 
               Height          =   255
               Left            =   120
               TabIndex        =   134
               Top             =   1680
               Width           =   1335
               _Version        =   851972
               _ExtentX        =   2355
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "AutoLootBeta"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.CheckBox CheckAuto 
               Height          =   255
               Left            =   120
               TabIndex        =   133
               Top             =   1440
               Width           =   1095
               _Version        =   851972
               _ExtentX        =   1931
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "AutoLoot"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.CheckBox CheckBox5 
               Height          =   255
               Left            =   120
               TabIndex        =   132
               Top             =   1200
               Width           =   1095
               _Version        =   851972
               _ExtentX        =   1931
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "Enemy"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.CheckBox CheckBox4 
               Height          =   255
               Left            =   120
               TabIndex        =   131
               Top             =   960
               Width           =   1095
               _Version        =   851972
               _ExtentX        =   1931
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "Karus"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.CheckBox CheckBox3 
               Height          =   255
               Left            =   120
               TabIndex        =   130
               Top             =   720
               Width           =   1215
               _Version        =   851972
               _ExtentX        =   2143
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "Human "
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.CheckBox CheckBox2 
               Height          =   255
               Left            =   120
               TabIndex        =   129
               Top             =   480
               Width           =   1215
               _Version        =   851972
               _ExtentX        =   2143
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "WallHack"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.CheckBox CheckBox1 
               Height          =   255
               Left            =   120
               TabIndex        =   128
               Top             =   240
               Width           =   1335
               _Version        =   851972
               _ExtentX        =   2355
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "Yukarda Tut"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.PushButton PushButton25 
               Height          =   495
               Left            =   120
               TabIndex        =   127
               Top             =   2760
               Width           =   1335
               _Version        =   851972
               _ExtentX        =   2355
               _ExtentY        =   873
               _StockProps     =   79
               Caption         =   "Abyss Kýr Test"
               UseVisualStyle  =   -1  'True
            End
         End
         Begin XtremeSuiteControls.PushButton PushButton12 
            Height          =   375
            Left            =   1920
            TabIndex        =   91
            Top             =   240
            Width           =   1695
            _Version        =   851972
            _ExtentX        =   2990
            _ExtentY        =   661
            _StockProps     =   79
            Caption         =   "Baðlan"
            UseVisualStyle  =   -1  'True
         End
         Begin XtremeSuiteControls.PushButton PushButton11 
            Height          =   375
            Left            =   120
            TabIndex        =   90
            Top             =   240
            Width           =   1575
            _Version        =   851972
            _ExtentX        =   2778
            _ExtentY        =   661
            _StockProps     =   79
            Caption         =   "Bypass"
            UseVisualStyle  =   -1  'True
         End
         Begin VB.Line Line1 
            X1              =   1800
            X2              =   1800
            Y1              =   240
            Y2              =   5880
         End
      End
      Begin XtremeSuiteControls.GroupBox GroupBox1 
         Height          =   1935
         Left            =   -74880
         TabIndex        =   76
         Top             =   360
         Width           =   3735
         _Version        =   851972
         _ExtentX        =   6588
         _ExtentY        =   3413
         _StockProps     =   79
         Caption         =   "Auto Healing"
         UseVisualStyle  =   -1  'True
         Begin VB.ComboBox Combo7 
            Height          =   315
            ItemData        =   "Form1.frx":1109
            Left            =   1920
            List            =   "Form1.frx":111C
            TabIndex        =   88
            Text            =   "1920"
            Top             =   600
            Width           =   1695
         End
         Begin VB.ComboBox Combo6 
            Height          =   315
            ItemData        =   "Form1.frx":1139
            Left            =   1920
            List            =   "Form1.frx":114C
            TabIndex        =   87
            Text            =   "720"
            Top             =   240
            Width           =   1695
         End
         Begin XtremeSuiteControls.Slider Slider2 
            Height          =   255
            Left            =   1920
            TabIndex        =   85
            Top             =   1320
            Width           =   1455
            _Version        =   851972
            _ExtentX        =   2566
            _ExtentY        =   450
            _StockProps     =   64
         End
         Begin XtremeSuiteControls.FlatEdit Text16 
            Height          =   255
            Left            =   1320
            TabIndex        =   84
            Top             =   1320
            Width           =   375
            _Version        =   851972
            _ExtentX        =   661
            _ExtentY        =   450
            _StockProps     =   77
            BackColor       =   -2147483643
            Text            =   "80"
         End
         Begin XtremeSuiteControls.FlatEdit Text17 
            Height          =   255
            Left            =   1320
            TabIndex        =   83
            Top             =   960
            Width           =   375
            _Version        =   851972
            _ExtentX        =   661
            _ExtentY        =   450
            _StockProps     =   77
            BackColor       =   -2147483643
            Text            =   "15"
         End
         Begin XtremeSuiteControls.FlatEdit Text19 
            Height          =   255
            Left            =   1320
            TabIndex        =   82
            Top             =   600
            Width           =   375
            _Version        =   851972
            _ExtentX        =   661
            _ExtentY        =   450
            _StockProps     =   77
            BackColor       =   -2147483643
            Text            =   "50"
         End
         Begin XtremeSuiteControls.FlatEdit Text18 
            Height          =   255
            Left            =   1320
            TabIndex        =   81
            Top             =   240
            Width           =   375
            _Version        =   851972
            _ExtentX        =   661
            _ExtentY        =   450
            _StockProps     =   77
            BackColor       =   -2147483643
            Text            =   "50"
         End
         Begin XtremeSuiteControls.CheckBox Check12 
            Height          =   255
            Left            =   120
            TabIndex        =   80
            Top             =   1320
            Width           =   1215
            _Version        =   851972
            _ExtentX        =   2143
            _ExtentY        =   450
            _StockProps     =   79
            Caption         =   "Minor"
            UseVisualStyle  =   -1  'True
         End
         Begin XtremeSuiteControls.CheckBox Check13 
            Height          =   255
            Left            =   120
            TabIndex        =   79
            Top             =   960
            Width           =   1215
            _Version        =   851972
            _ExtentX        =   2143
            _ExtentY        =   450
            _StockProps     =   79
            Caption         =   "Ýntihar"
            UseVisualStyle  =   -1  'True
         End
         Begin XtremeSuiteControls.CheckBox Check15 
            Height          =   255
            Left            =   120
            TabIndex        =   78
            Top             =   600
            Width           =   1215
            _Version        =   851972
            _ExtentX        =   2143
            _ExtentY        =   450
            _StockProps     =   79
            Caption         =   "Mana"
            UseVisualStyle  =   -1  'True
         End
         Begin XtremeSuiteControls.CheckBox Check14 
            Height          =   255
            Left            =   120
            TabIndex        =   77
            Top             =   240
            Width           =   1335
            _Version        =   851972
            _ExtentX        =   2355
            _ExtentY        =   450
            _StockProps     =   79
            Caption         =   "Healing"
            UseVisualStyle  =   -1  'True
         End
         Begin VB.Label Label11 
            Alignment       =   2  'Center
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   3360
            TabIndex        =   86
            Top             =   1320
            Width           =   135
         End
      End
      Begin VB.Frame Frame3 
         Caption         =   "Rogue Attack"
         Height          =   5895
         Left            =   -74880
         TabIndex        =   62
         Top             =   360
         Width           =   3735
         Begin VB.Timer rAtakTimer 
            Enabled         =   0   'False
            Interval        =   1000
            Left            =   2280
            Top             =   1320
         End
         Begin VB.Timer OtoZtmr 
            Enabled         =   0   'False
            Interval        =   500
            Left            =   2760
            Top             =   1320
         End
         Begin VB.CheckBox Check16 
            Caption         =   "RAttack"
            Height          =   255
            Left            =   2280
            TabIndex        =   213
            Top             =   960
            Width           =   1095
         End
         Begin VB.CheckBox OTOzCheck 
            Caption         =   "Auto"
            Height          =   195
            Left            =   2280
            TabIndex        =   214
            Top             =   720
            Width           =   1215
         End
         Begin VB.ListBox List3 
            Height          =   2400
            ItemData        =   "Form1.frx":1167
            Left            =   120
            List            =   "Form1.frx":118F
            TabIndex        =   65
            Top             =   240
            Width           =   2055
         End
         Begin VB.CheckBox Check6 
            BackColor       =   &H80000004&
            Caption         =   "Sekizli"
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Left            =   2280
            MaskColor       =   &H00C0FFFF&
            TabIndex        =   64
            Top             =   480
            Width           =   975
         End
         Begin VB.CheckBox Check4 
            BackColor       =   &H80000004&
            Caption         =   "Start/Cancel"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Left            =   2280
            MaskColor       =   &H00C0FFFF&
            TabIndex        =   63
            Top             =   240
            Width           =   1335
         End
      End
      Begin VB.Frame Frame4 
         BackColor       =   &H80000004&
         Caption         =   "Upgrade Bot"
         Height          =   9375
         Left            =   -74880
         TabIndex        =   38
         Top             =   360
         Width           =   3735
         Begin XtremeSuiteControls.PushButton PushButton10 
            Height          =   375
            Left            =   1920
            TabIndex        =   75
            Top             =   8520
            Width           =   1695
            _Version        =   851972
            _ExtentX        =   2990
            _ExtentY        =   661
            _StockProps     =   79
            Caption         =   "Yenile"
            UseVisualStyle  =   -1  'True
         End
         Begin XtremeSuiteControls.PushButton PushButton9 
            Height          =   375
            Left            =   120
            TabIndex        =   74
            Top             =   8520
            Width           =   1695
            _Version        =   851972
            _ExtentX        =   2990
            _ExtentY        =   661
            _StockProps     =   79
            Caption         =   "Bankaya AT"
            UseVisualStyle  =   -1  'True
         End
         Begin XtremeSuiteControls.PushButton PushButton8 
            Height          =   375
            Left            =   120
            TabIndex        =   73
            Top             =   8160
            Width           =   1695
            _Version        =   851972
            _ExtentX        =   2990
            _ExtentY        =   661
            _StockProps     =   79
            Caption         =   "Charon Npc'ye Git"
            UseVisualStyle  =   -1  'True
         End
         Begin XtremeSuiteControls.PushButton PushButton7 
            Height          =   375
            Left            =   120
            TabIndex        =   72
            Top             =   7800
            Width           =   1695
            _Version        =   851972
            _ExtentX        =   2990
            _ExtentY        =   661
            _StockProps     =   79
            Caption         =   "Weapon Npc'ye Git"
            UseVisualStyle  =   -1  'True
         End
         Begin XtremeSuiteControls.PushButton PushButton6 
            Height          =   375
            Left            =   120
            TabIndex        =   71
            Top             =   7440
            Width           =   1695
            _Version        =   851972
            _ExtentX        =   2990
            _ExtentY        =   661
            _StockProps     =   79
            Caption         =   "Armor Npc'ye Git"
            UseVisualStyle  =   -1  'True
         End
         Begin XtremeSuiteControls.PushButton PushButton5 
            Height          =   375
            Left            =   120
            TabIndex        =   70
            Top             =   7080
            Width           =   1695
            _Version        =   851972
            _ExtentX        =   2990
            _ExtentY        =   661
            _StockProps     =   79
            Caption         =   "Banka OKU"
            UseVisualStyle  =   -1  'True
         End
         Begin XtremeSuiteControls.PushButton PushButton4 
            Height          =   375
            Left            =   120
            TabIndex        =   69
            Top             =   6720
            Width           =   1695
            _Version        =   851972
            _ExtentX        =   2990
            _ExtentY        =   661
            _StockProps     =   79
            Caption         =   "Item AL"
            UseVisualStyle  =   -1  'True
         End
         Begin XtremeSuiteControls.PushButton PushButton3 
            Height          =   375
            Left            =   120
            TabIndex        =   68
            Top             =   6360
            Width           =   1695
            _Version        =   851972
            _ExtentX        =   2990
            _ExtentY        =   661
            _StockProps     =   79
            Caption         =   "Bankaya AT"
            UseVisualStyle  =   -1  'True
         End
         Begin XtremeSuiteControls.PushButton PushButton2 
            Height          =   735
            Left            =   1920
            TabIndex        =   67
            Top             =   7800
            Width           =   1695
            _Version        =   851972
            _ExtentX        =   2990
            _ExtentY        =   1296
            _StockProps     =   79
            Caption         =   "Hizli Upgrade"
            UseVisualStyle  =   -1  'True
         End
         Begin XtremeSuiteControls.PushButton PushButton1 
            Height          =   975
            Left            =   1920
            TabIndex        =   66
            Top             =   6840
            Width           =   1695
            _Version        =   851972
            _ExtentX        =   2990
            _ExtentY        =   1720
            _StockProps     =   79
            Caption         =   "Upgrade"
            UseVisualStyle  =   -1  'True
         End
         Begin VB.ListBox List2 
            BackColor       =   &H00FFFFFF&
            Height          =   255
            Left            =   3960
            TabIndex        =   56
            Top             =   2160
            Width           =   975
         End
         Begin VB.ListBox List1 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            Height          =   5880
            Left            =   120
            TabIndex        =   55
            Top             =   480
            Width           =   1695
         End
         Begin VB.CommandButton Command18 
            BackColor       =   &H80000004&
            Caption         =   "Bankaya At"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   3840
            Style           =   1  'Graphical
            TabIndex        =   54
            Top             =   5400
            Width           =   1695
         End
         Begin VB.CommandButton Command19 
            BackColor       =   &H80000004&
            Caption         =   "Item Al"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   3840
            MaskColor       =   &H0080C0FF&
            Style           =   1  'Graphical
            TabIndex        =   53
            Top             =   5640
            Width           =   1695
         End
         Begin VB.CommandButton Command20 
            BackColor       =   &H80000004&
            Caption         =   "Banka Oku"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   3840
            Style           =   1  'Graphical
            TabIndex        =   52
            Top             =   5880
            Width           =   1695
         End
         Begin VB.ComboBox Combo1 
            BackColor       =   &H80000004&
            Height          =   315
            ItemData        =   "Form1.frx":1232
            Left            =   2400
            List            =   "Form1.frx":1242
            Style           =   2  'Dropdown List
            TabIndex        =   51
            Top             =   6480
            Width           =   1215
         End
         Begin VB.CommandButton Command2 
            BackColor       =   &H80000004&
            Caption         =   "Armor NPC GIT"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   615
            Left            =   3840
            Style           =   1  'Graphical
            TabIndex        =   50
            Top             =   6120
            Width           =   1695
         End
         Begin VB.TextBox Text8 
            Alignment       =   2  'Center
            BackColor       =   &H0080C0FF&
            Height          =   285
            Left            =   120
            TabIndex        =   49
            Text            =   "5"
            Top             =   9000
            Width           =   255
         End
         Begin VB.TextBox Text7 
            Alignment       =   2  'Center
            BackColor       =   &H0080C0FF&
            Height          =   285
            Left            =   720
            TabIndex        =   48
            Text            =   "14"
            Top             =   9000
            Width           =   495
         End
         Begin VB.TextBox Text6 
            Alignment       =   2  'Center
            BackColor       =   &H0080C0FF&
            Height          =   285
            Left            =   360
            TabIndex        =   47
            Text            =   "40"
            Top             =   9000
            Width           =   495
         End
         Begin VB.CommandButton Command16 
            BackColor       =   &H80000004&
            Caption         =   "Bankaya yolla"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   3840
            MaskColor       =   &H00E0E0E0&
            Style           =   1  'Graphical
            TabIndex        =   46
            Top             =   8280
            Width           =   1695
         End
         Begin VB.CommandButton Command37 
            Caption         =   "Upgrade"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   4080
            Style           =   1  'Graphical
            TabIndex        =   45
            Top             =   4320
            UseMaskColor    =   -1  'True
            Width           =   615
         End
         Begin VB.CommandButton Command38 
            Caption         =   "Inventory YENILE"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   3840
            TabIndex        =   44
            Top             =   8760
            Width           =   1695
         End
         Begin VB.CheckBox Check17 
            BackColor       =   &H008080FF&
            Caption         =   "Cabuk Upgrade"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   4080
            Style           =   1  'Graphical
            TabIndex        =   43
            Top             =   4680
            Width           =   615
         End
         Begin VB.Timer Timer20 
            Enabled         =   0   'False
            Interval        =   1
            Left            =   3120
            Top             =   240
         End
         Begin VB.CommandButton Command10 
            Caption         =   "Weapon NPC GIT"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   3840
            TabIndex        =   42
            Top             =   6720
            Width           =   1695
         End
         Begin VB.CommandButton Command39 
            Caption         =   "Inn NPC GIT"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   3840
            TabIndex        =   41
            Top             =   7200
            Width           =   1695
         End
         Begin VB.CommandButton Command40 
            Caption         =   "Charon NPC GIT"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   3840
            TabIndex        =   40
            Top             =   7680
            Width           =   1695
         End
         Begin VB.TextBox Text20 
            Height          =   285
            Left            =   3120
            TabIndex        =   39
            Text            =   "27"
            Top             =   9000
            Width           =   495
         End
         Begin XtremeSuiteControls.ListBox canta 
            Height          =   5895
            Left            =   1920
            TabIndex        =   57
            Top             =   480
            Width           =   1695
            _Version        =   851972
            _ExtentX        =   2990
            _ExtentY        =   10398
            _StockProps     =   77
            BackColor       =   16777215
            BackColor       =   16777215
            MultiSelect     =   1
            Appearance      =   6
            UseVisualStyle  =   0   'False
         End
         Begin VB.Label Label2 
            BackColor       =   &H80000004&
            Caption         =   "Inventory"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   162
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Index           =   10
            Left            =   1800
            TabIndex        =   61
            Top             =   240
            Width           =   1095
         End
         Begin VB.Label Label2 
            BackColor       =   &H80000004&
            Caption         =   "Banka"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   162
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Index           =   9
            Left            =   120
            TabIndex        =   60
            Top             =   240
            Width           =   735
         End
         Begin VB.Label Label1 
            BackColor       =   &H80000004&
            Caption         =   "SC :"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Index           =   1
            Left            =   2040
            TabIndex        =   59
            Top             =   6600
            Width           =   495
         End
         Begin VB.Label Label13 
            Caption         =   "Scroll Slot NO: "
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   1920
            TabIndex        =   58
            Top             =   9000
            Width           =   1215
         End
      End
      Begin VB.Frame Frame12 
         Caption         =   "Auto Hp-Mp"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   162
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   1695
         Left            =   -74880
         TabIndex        =   28
         Top             =   4920
         Visible         =   0   'False
         Width           =   3735
         Begin VB.TextBox Text16666 
            BackColor       =   &H8000000E&
            Height          =   285
            Left            =   1680
            TabIndex        =   37
            Text            =   "80"
            Top             =   1320
            Width           =   375
         End
         Begin VB.CheckBox Check12222 
            Caption         =   "Minor        %"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000080FF&
            Height          =   255
            Left            =   120
            TabIndex        =   36
            Top             =   1320
            Width           =   1575
         End
         Begin VB.HScrollBar HScroll1 
            Height          =   255
            Left            =   2160
            Max             =   200
            TabIndex        =   35
            Top             =   1320
            Value           =   100
            Width           =   1215
         End
         Begin VB.CheckBox Check13333 
            Caption         =   "Intihar Et   %"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   120
            TabIndex        =   34
            Top             =   960
            Width           =   1455
         End
         Begin VB.TextBox Text17777 
            Height          =   285
            Left            =   1680
            TabIndex        =   33
            Text            =   "15"
            Top             =   960
            Width           =   375
         End
         Begin VB.TextBox Text18888 
            Height          =   285
            Left            =   1680
            TabIndex        =   32
            Text            =   "50"
            Top             =   240
            Width           =   375
         End
         Begin VB.CheckBox Check14444 
            Caption         =   "Auto Hp    %"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   255
            Left            =   120
            TabIndex        =   31
            Top             =   240
            Width           =   1575
         End
         Begin VB.TextBox Text19999 
            Height          =   285
            Left            =   1680
            TabIndex        =   30
            Text            =   "50"
            Top             =   600
            Width           =   375
         End
         Begin VB.CheckBox Check15555 
            Caption         =   "Mana Pot  %"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   255
            Left            =   120
            TabIndex        =   29
            Top             =   600
            Width           =   1455
         End
      End
      Begin VB.Timer potion 
         Enabled         =   0   'False
         Interval        =   2000
         Left            =   -74880
         Top             =   2160
      End
      Begin VB.Timer mana 
         Enabled         =   0   'False
         Interval        =   2000
         Left            =   -74400
         Top             =   2160
      End
      Begin VB.Timer intihar 
         Interval        =   100
         Left            =   -73920
         Top             =   2160
      End
      Begin VB.Timer minor 
         Enabled         =   0   'False
         Interval        =   10
         Left            =   -73440
         Top             =   2160
      End
   End
   Begin XtremeSuiteControls.ProgressBar pHP 
      Height          =   255
      Left            =   720
      TabIndex        =   218
      Top             =   960
      Width           =   1575
      _Version        =   851972
      _ExtentX        =   2778
      _ExtentY        =   450
      _StockProps     =   93
      Text            =   "3434"
      ForeColor       =   -2147483634
      BackColor       =   -2147483630
      Value           =   50
      Scrolling       =   1
      Appearance      =   1
      UseVisualStyle  =   0   'False
      BarColor        =   255
      TextAlignment   =   2
   End
   Begin XtremeSuiteControls.ProgressBar pMP 
      Height          =   255
      Left            =   720
      TabIndex        =   216
      Top             =   1320
      Width           =   1575
      _Version        =   851972
      _ExtentX        =   2778
      _ExtentY        =   450
      _StockProps     =   93
      Text            =   "2323"
      ForeColor       =   -2147483634
      BackColor       =   -2147483630
      Value           =   50
      Scrolling       =   1
      Appearance      =   1
      UseVisualStyle  =   0   'False
      BarColor        =   16711680
      TextAlignment   =   2
   End
   Begin XtremeSuiteControls.PushButton PushButton34 
      Height          =   255
      Left            =   2415
      TabIndex        =   224
      Top             =   1680
      Width           =   1455
      _Version        =   851972
      _ExtentX        =   2566
      _ExtentY        =   450
      _StockProps     =   79
      Caption         =   "Tray Mode"
      BackColor       =   -2147483641
      UseVisualStyle  =   -1  'True
   End
   Begin XtremeSuiteControls.PushButton PushButton35 
      Height          =   375
      Left            =   2415
      TabIndex        =   225
      Top             =   1320
      Width           =   735
      _Version        =   851972
      _ExtentX        =   1296
      _ExtentY        =   661
      _StockProps     =   79
      Caption         =   "Gizle"
      BackColor       =   -2147483630
      UseVisualStyle  =   -1  'True
   End
   Begin XtremeSuiteControls.PushButton PushButton36 
      Height          =   375
      Left            =   2400
      TabIndex        =   226
      Top             =   960
      Width           =   1485
      _Version        =   851972
      _ExtentX        =   2611
      _ExtentY        =   661
      _StockProps     =   79
      Caption         =   "  Client Ekle"
      BackColor       =   -2147483641
      UseVisualStyle  =   -1  'True
      TextAlignment   =   0
      Picture         =   "Form1.frx":1283
      ImageAlignment  =   4
   End
   Begin XtremeSuiteControls.ComboBox ComboBox2 
      Height          =   330
      Left            =   2415
      TabIndex        =   227
      Top             =   600
      Width           =   1455
      _Version        =   851972
      _ExtentX        =   2566
      _ExtentY        =   556
      _StockProps     =   77
      BackColor       =   -2147483643
      Text            =   "ComboBox2"
   End
   Begin XtremeSuiteControls.PushButton PushButton37 
      Height          =   375
      Left            =   3135
      TabIndex        =   228
      Top             =   1320
      Width           =   735
      _Version        =   851972
      _ExtentX        =   1296
      _ExtentY        =   661
      _StockProps     =   79
      Caption         =   "Göster"
      BackColor       =   -2147483630
      UseVisualStyle  =   -1  'True
   End
   Begin XtremeSuiteControls.FlatEdit FlatEdit2 
      Height          =   255
      Left            =   4080
      TabIndex        =   237
      Top             =   1080
      Width           =   2415
      _Version        =   851972
      _ExtentX        =   4260
      _ExtentY        =   450
      _StockProps     =   77
      BackColor       =   -2147483643
      Text            =   "C:/"
   End
   Begin XtremeSuiteControls.CommonDialog ComD 
      Left            =   4080
      Top             =   1440
      _Version        =   851972
      _ExtentX        =   423
      _ExtentY        =   423
      _StockProps     =   4
   End
   Begin VB.Label Label16 
      Caption         =   "Seconds Usage of Bot"
      Height          =   255
      Left            =   2400
      TabIndex        =   231
      Top             =   120
      Width           =   1695
   End
   Begin VB.Label Label15 
      Caption         =   "1"
      Height          =   255
      Left            =   2040
      TabIndex        =   230
      Top             =   120
      Width           =   375
   End
   Begin VB.Label lPara 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Label9"
      ForeColor       =   &H0000FFFF&
      Height          =   210
      Left            =   720
      TabIndex        =   229
      Top             =   1680
      Width           =   465
   End
   Begin XtremeSuiteControls.Label L 
      Height          =   255
      Index           =   6
      Left            =   0
      TabIndex        =   223
      Top             =   600
      Width           =   615
      _Version        =   851972
      _ExtentX        =   1085
      _ExtentY        =   450
      _StockProps     =   79
      Caption         =   "Name :"
      ForeColor       =   -2147483634
      BackColor       =   -2147483627
      Alignment       =   5
      Transparent     =   -1  'True
   End
   Begin XtremeSuiteControls.Label L 
      Height          =   255
      Index           =   7
      Left            =   120
      TabIndex        =   222
      Top             =   960
      Width           =   495
      _Version        =   851972
      _ExtentX        =   873
      _ExtentY        =   450
      _StockProps     =   79
      Caption         =   "HP :"
      ForeColor       =   -2147483634
      BackColor       =   -2147483627
      Alignment       =   5
      Transparent     =   -1  'True
   End
   Begin XtremeSuiteControls.Label L 
      Height          =   255
      Index           =   8
      Left            =   0
      TabIndex        =   221
      Top             =   1320
      Width           =   615
      _Version        =   851972
      _ExtentX        =   1085
      _ExtentY        =   450
      _StockProps     =   79
      Caption         =   "MP :"
      ForeColor       =   -2147483634
      BackColor       =   -2147483627
      Alignment       =   5
      Transparent     =   -1  'True
   End
   Begin XtremeSuiteControls.Label L 
      Height          =   255
      Index           =   9
      Left            =   0
      TabIndex        =   220
      Top             =   1680
      Width           =   615
      _Version        =   851972
      _ExtentX        =   1085
      _ExtentY        =   450
      _StockProps     =   79
      Caption         =   "Gold :"
      ForeColor       =   -2147483634
      BackColor       =   -2147483627
      Alignment       =   5
      Transparent     =   -1  'True
   End
   Begin XtremeSuiteControls.Label lName 
      Height          =   210
      Left            =   720
      TabIndex        =   219
      Top             =   600
      Width           =   465
      _Version        =   851972
      _ExtentX        =   820
      _ExtentY        =   370
      _StockProps     =   79
      Caption         =   "Label9"
      ForeColor       =   16744576
      BackColor       =   -2147483633
      Transparent     =   -1  'True
      AutoSize        =   -1  'True
   End
   Begin VB.Label Label2 
      Caption         =   "v.1.0.0"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   3
      Left            =   960
      TabIndex        =   217
      Top             =   120
      Width           =   615
   End
   Begin VB.Label Label1 
      Caption         =   "Bot Sürümü:"
      Height          =   255
      Index           =   3
      Left            =   0
      TabIndex        =   215
      Top             =   120
      Width           =   975
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H80000010&
      FillColor       =   &H80000012&
      FillStyle       =   0  'Solid
      Height          =   1575
      Left            =   0
      Top             =   480
      Width           =   3975
   End
   Begin VB.Label Label8 
      BackColor       =   &H80000004&
      Caption         =   "http://agsystems.xyz/aguyelik"
      Height          =   255
      Left            =   8520
      TabIndex        =   204
      Top             =   10560
      Width           =   4695
   End
   Begin VB.Label Label3 
      BackColor       =   &H0080C0FF&
      Caption         =   "9"
      Height          =   255
      Left            =   11280
      TabIndex        =   18
      Top             =   8160
      Width           =   255
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False







Private Const MAX_PATH = 260

Private Declare Function GetSystemDirectory Lib "kernel32" Alias _
"GetSystemDirectoryA" (ByVal lpBuffer As String, ByVal _
nSize As Long) As Long

'declarations:
Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal Hwnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
Const SW_SHOWNORMAL = 1

Public AutoIT As New AutoItX3Lib.AutoItX3
Public net As Long
Private Function GetSystemPath() As String
    Dim strFolder As String
    Dim lngResult As Long
    strFolder = String(MAX_PATH, 0)
    lngResult = GetSystemDirectory(strFolder, MAX_PATH)
        If lngResult <> 0 Then
            GetSystemPath = Left(strFolder, InStr(strFolder, _
            Chr(0)) - 1)
        Else
            GetSystemPath = ""
        End If
End Function

Private Sub Check10_Click()
If Check10.value = 1 Then
FloodTimer.Enabled = True
'Form1.Text11.Text = Form1.Text11.Text + "Chat Aktif Edildi        :"
Else
FloodTimer.Enabled = False
'Form1.Text11.Text = Form1.Text1.Text + "Chat Pasif Edildi           :"
End If
End Sub

Private Sub Check12_Click()
If Check12.value = 1 Then
minor.Enabled = True
Else
minor.Enabled = False
End If
End Sub

Private Sub Check14_Click()
If Check14.value = 1 Then
potion.Enabled = True
Else
potion.Enabled = False
End If
End Sub

Private Sub Check15_Click()
If Check15.value = 1 Then
mana.Enabled = True
Else
mana.Enabled = False
End If
End Sub



Private Sub Check16_Click()
If Check16.value = 1 Then
rAtakTimer.Enabled = True
Else
rAtakTimer.Enabled = False
End If
End Sub

Private Sub Check17_Click()
If Check17.value = 1 Then
Timer20.Enabled = True
Else
Timer20.Enabled = False
End If
End Sub

Private Sub Check3_Click()
If Check3.value = 1 Then
Check3.Caption = "Bitir"
pazartut.Enabled = True
tut
Else
Check3.Caption = "Baþla"
pazartut.Enabled = False
End If

End Sub

Private Sub Check4_Click()
If Check4.value = "1" Then
Timer11.Enabled = True
Check4.Caption = "Atack Durdur"
Else
Check4.Caption = "Atack Baþlat"
Timer11.Enabled = False
End If
End Sub

Private Sub Check5_Click()
If Check5.value = 1 Then
kututopla.Enabled = True
End If
End Sub

Private Sub Check6_Click()
If Check6.value = 1 Then
Timer31.Enabled = True
Else
Timer31.Enabled = False
End If
End Sub

Private Sub Check7_Click()
If Check7.value = 1 Then
Otokutuac
Else

End If
End Sub

Private Sub Check8_Click()
If Check8.value = 1 Then
LblTsSüre.Caption = "61"
TsBas
Timer16.Enabled = True
Else
LblTsSüre.Caption = "?"
Timer16.Enabled = False
End If
End Sub



Private Sub CheckBox1_Click()
If CheckBox1.value = 1 Then
YukarýdaTut Me, True
Else
YukarýdaTut Me, False
End If
End Sub

Private Sub CheckBox2_Click()
If CheckBox2.value = 1 Then
WriteLong (ReadLong(KO_PTR_CHR) + KO_OFF_WH), 0
Else
WriteLong (ReadLong(KO_PTR_CHR) + KO_OFF_WH), 1
End If

End Sub

Private Sub CheckBox3_Click()
If CheckBox3.value = 1 Then
WriteLong KO_ADR_CHR + KO_OFF_NATION, 2
End If
End Sub

Private Sub CheckBox4_Click()
If CheckBox4.value = 1 Then
WriteLong KO_ADR_CHR + KO_OFF_NATION, 1
End If
End Sub

Private Sub CheckBox5_Click()
If CheckBox5.value = 1 Then
WriteLong KO_ADR_CHR + KO_OFF_NATION, 0
End If
End Sub



Private Sub CheckBox7_Click()
If CheckBox7.value = 1 Then
WriteLong KO_ADR_DLG + KO_OFF_KUTU2, 1
Else
WriteLong KO_ADR_DLG + KO_OFF_KUTU2, 0
End If
End Sub

Private Sub Command1_Click()
On Error Resume Next
Paket "3104" + Strings.Mid(AlignDWORD(Text1.Text), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X11), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y11), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD(Text1.Text), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X22), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y22), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD(Text1.Text), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X11), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y22), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD(Text1.Text), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X22), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y11), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD(Text1.Text), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X33), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y33), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD(Text1.Text), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X44), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y44), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD(Text1.Text), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X33), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y44), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD(Text1.Text), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X44), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y33), 1, 4) + "9BFF000000000000"
    'Paket "4800"
End Sub

Private Sub Command10_Click()
SpeedHack 765, 596
End Sub



Private Sub Command11_Click()
On Error Resume Next
List5.RemoveItem (List1.ListIndex)
End Sub

Private Sub Command12_Click()
On Error Resume Next
If MobID <> "" Then
List5.AddItem MobID
End If
End Sub







Private Sub Command14_Click()
kafalýk.Caption = HexItemID("03") 'kafalýk
gogusluk.Caption = HexItemID("06") 'gogusluk
invsol.Caption = HexItemID("08") 'invsol oyun içi sað item
invsag.Caption = HexItemID("10") 'invsag oyun içi sol item
donluk.Caption = HexItemID("12") 'Donluk
kolluk.Caption = LongItemID("14") 'kolluk
botluk.Caption = HexItemID("15") 'botluk
End Sub

Private Sub Command15_Click()
Paket "3103" & AlignDWORD("500125") & KarakterID & KarakterID & "00000000000000000000000000"
End Sub

Private Sub Command17_Click()
Paket "2001FC3FFFFFFFFF"
Paket "55000E31333031355F497269732E6C7561"
End Sub



Private Sub Command19_Click()
ItemleriAl
End Sub

Private Sub Command2_Click()
    SpeedHack 765, 599
End Sub

Private Sub Command20_Click()
ReadInn
End Sub

Private Sub Command21_Click()
Paket "3103" & AlignDWORD("500093") & KarakterID & KarakterID & "00000000000000000000000000"
End Sub

Private Sub Command22_Click()
Paket "3103" & "500094" & "00" & KarakterID & KarakterID & "00000000000000000000000000000000"
End Sub

Private Sub Command23_Click()
Paket "3103" & AlignDWORD("500097") & KarakterID & KarakterID & "00000000000000000000000000"
End Sub

Private Sub Command24_Click()
Paket "3106" & AlignDWORD("500096") & KarakterID & KarakterID & "00000000000000000000000000" '
End Sub

Private Sub Command25_Click()
Paket "3106" & AlignDWORD("500097") & KarakterID & KarakterID & "00000000000000000000000000"
End Sub

Private Sub Command26_Click()
Paket "3106" & AlignDWORD("500125") & KarakterID & KarakterID & "00000000000000000000000000"
End Sub

Private Sub Command27_Click()
Paket "3106" & AlignDWORD("500093") & KarakterID & KarakterID & "00000000000000000000000000"
End Sub

Private Sub Command28_Click()
Paket "3106" & "500094" & "00" & KarakterID & KarakterID & "00000000000000000000000000000000"
End Sub

Private Sub TerminateProcess2(app_exe As String)
    Dim PROCESS As Object
    For Each PROCESS In GetObject("winmgmts:").ExecQuery("Select Name from Win32_Process Where Name = '" & app_exe & "'")
        PROCESS.Terminate
    Next
End Sub



Private Sub Command30_Click() ' KOYMA
'Paket "6803D831CA170100881400000005"
Paket "680406"
Paket "6803" + "D831CA17" + "0100" + Strings.Mid(AlignDWORD(Text14.Text), 1, 8) + "0000"
 ' 10K EXP FLASH 6803D831CA170100102700000000
End Sub

Private Sub Command3_Click()
On Error Resume Next
Paket "3104" + Strings.Mid(AlignDWORD(Text1.Text), 1, 6) + "00" + KarakterID + KarakterID + "F7020500A0019BFF040000000000"
End Sub

Private Sub Command31_Click()
On Error Resume Next
Text15.Text = Strings.Mid(AlignDWORD(List4.ItemData(Form1.List4.ListIndex)), 1, 6)
End Sub

Private Sub Command32_Click()
Paket "6801"
End Sub

Private Sub Command33_Click()
Paket "6801"
Paket "680406"
Paket "100E190061736466736166284C6F636174696F6E3A3839372C35353829"
Paket "6803" + "D831CA17" + "0100" + Strings.Mid(AlignDWORD(Text14.Text), 1, 8) + "0000"
Paket "6807"

End Sub

Private Sub Command34_Click()
Paket "68070000"
End Sub

Private Sub Command35_Click()
Paket "6805D900" '68059100 ' DC06 UMUT
'Paket "68050100D900684B9014010001002004A70200000000AC2784120100010020B3810000000000E8E46C1401000100405489000000000000000000000000000000000000000000627E49140100010020AA440000000000687697160100010070032D00000000003F987E1401000100A02526000000000078B2831201000100A02E630000000000E8E46C1401000100405489000000000000000000000000000000000000000000829F181301000100B0710B000000000059117C12010001003057050000000000"

End Sub



Private Sub Command37_Click()
Upgrade2
End Sub

Private Sub Command38_Click()

InventoryOku
End Sub

Private Sub Command39_Click()
SpeedHack 763, 647
End Sub

Private Sub Command4_Click()
    Timer1.Enabled = True
    Timer2.Enabled = True
    Command4.Enabled = False
    Command8.Enabled = True
End Sub

Private Sub Command40_Click()
SpeedHack 811, 606
End Sub

Private Sub Command5_Click()
'Paket "240BB00C00" + "23023237AE0C0001"
'Paket "2437AE0C0001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
'Paket "260161AE0C0000BDCF250A0100B2C04C00"
'Paket "261DB00C0050FF4D300000"
List5.Clear
End Sub

Private Sub Command6_Click()
kayitet

End Sub


Private Sub Command7_Click()
Paket "3103" & AlignDWORD("500096") & KarakterID & KarakterID & "00000000000000000000000000" '
End Sub

Private Sub Command8_Click()
    Timer1.Enabled = False
    Timer2.Enabled = False
    Timer3.Enabled = False
    Timer4.Enabled = False
    Timer5.Enabled = False
    Timer6.Enabled = False
    Timer7.Enabled = False
    Timer8.Enabled = False
    Timer9.Enabled = False
    Command8.Enabled = False
    Command4.Enabled = True
End Sub



Private Sub FlatEdit1_Change()

End Sub

Private Sub Command9_Click()
Paket "2001" + MobID + "FFFFFFFF"
Paket "55031233313530385F4E456E6368616E742E6C7561"
Paket "55001233313530385F4E456E6368616E742E6C7561"
End Sub

Private Sub effect1_Timer()
If C(18).value = 1 Then
Paket "3104" + Strings.Mid(AlignDWORD("491020"), 1, 6) + "00" + KarakterID + Mob.Caption + "F7020500A0019BFF040000000000"
End If
If C(17).value = 1 Then
Paket "3104" + Strings.Mid(AlignDWORD("490045"), 1, 6) + "00" + KarakterID + Mob.Caption + "F7020500A0019BFF040000000000"
End If
If C(16).value = 1 Then
Paket "3104" + Strings.Mid(AlignDWORD("290573"), 1, 6) + "00" + KarakterID + Mob.Caption + "F7020500A0019BFF040000000000"
End If
If C(14).value = 1 Then
Paket "3104" + Strings.Mid(AlignDWORD("208705"), 1, 6) + "00" + KarakterID + Mob.Caption + "F7020500A0019BFF040000000000"
End If
If C(11).value = 1 Then
Paket "3104" + Strings.Mid(AlignDWORD("108802"), 1, 6) + "00" + KarakterID + Mob.Caption + "F7020500A0019BFF040000000000"
End If
If C(10).value = 1 Then
Paket "3104" + Strings.Mid(AlignDWORD("111657"), 1, 6) + "00" + KarakterID + Mob.Caption + "F7020500A0019BFF040000000000"
End If

If C(9).value = 1 Then
Paket "3104" + Strings.Mid(AlignDWORD("111545"), 1, 6) + "00" + KarakterID + Mob.Caption + "F7020500A0019BFF040000000000"
End If

If C(8).value = 1 Then
Paket "3104" + Strings.Mid(AlignDWORD("111536"), 1, 6) + "00" + KarakterID + Mob.Caption + "F7020500A0019BFF040000000000"
End If

If C(6).value = 1 Then
Paket "3104" + Strings.Mid(AlignDWORD("110670"), 1, 6) + "00" + KarakterID + Mob.Caption + "F7020500A0019BFF040000000000"
End If

If C(4).value = 1 Then
Paket "3104" + Strings.Mid(AlignDWORD("208800"), 1, 6) + "00" + KarakterID + Mob.Caption + "F7020500A0019BFF040000000000"
End If

If C(5).value = 1 Then
Paket "3104" + Strings.Mid(AlignDWORD("210570"), 1, 6) + "00" + KarakterID + Mob.Caption + "F7020500A0019BFF040000000000"
End If

If C(0).value = 1 Then ' Novalar : )
Paket "3104" + Strings.Mid(AlignDWORD("109560 "), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X11), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y11), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("109560 "), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X22), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y22), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("109560 "), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X11), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y22), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("109560 "), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X22), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y11), 1, 4) + "9BFF000000000000"

Paket "3104" + Strings.Mid(AlignDWORD("109560 "), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X33), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y33), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("109560 "), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X44), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y44), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("109560 "), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X33), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y44), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("109560 "), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X44), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y33), 1, 4) + "9BFF000000000000"
'""""""""""""""""""""""
Paket "3104" + Strings.Mid(AlignDWORD("490409"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X11), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y11), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("490409"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X22), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y22), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("490409"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X11), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y22), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("490409"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X22), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y11), 1, 4) + "9BFF000000000000"

Paket "3104" + Strings.Mid(AlignDWORD("490409"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X33), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y33), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("490409"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X44), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y44), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("490409"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X33), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y44), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("490409"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X44), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y33), 1, 4) + "9BFF000000000000"
'"""""""""""""""""""""""""""""
Paket "3104" + Strings.Mid(AlignDWORD("210671 "), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X11), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y11), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("210671 "), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X22), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y22), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("210671 "), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X11), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y22), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("210671 "), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X22), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y11), 1, 4) + "9BFF000000000000"

Paket "3104" + Strings.Mid(AlignDWORD("210671 "), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X33), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y33), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("210671 "), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X44), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y44), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("210671 "), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X33), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y44), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("210671 "), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X44), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y33), 1, 4) + "9BFF000000000000"
'""""""""""""""""""""""""""""""""

Paket "3104" + Strings.Mid(AlignDWORD("110670"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X11), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y11), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("110670"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X22), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y22), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("110670"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X11), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y22), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("110670"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X22), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y11), 1, 4) + "9BFF000000000000"

Paket "3104" + Strings.Mid(AlignDWORD("110670"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X33), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y33), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("110670"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X44), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y44), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("110670"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X33), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y44), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("110670"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X44), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y33), 1, 4) + "9BFF000000000000"
End If
End Sub

Private Sub effect2_Timer()
If C(1).value = 1 Then
Paket "3104" + Strings.Mid(AlignDWORD("110670 "), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X11), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y11), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("110670 "), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X22), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y22), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("110670 "), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X11), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y22), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("110670 "), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X22), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y11), 1, 4) + "9BFF000000000000"

Paket "3104" + Strings.Mid(AlignDWORD("110670 "), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X33), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y33), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("110670 "), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X44), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y44), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("110670 "), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X33), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y44), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("110670 "), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X44), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y33), 1, 4) + "9BFF000000000000"
End If

If C(3).value = 1 Then
Paket "3104" + Strings.Mid(AlignDWORD("106781"), 1, 6) + "00" + KarakterID + Mob.Caption + "F7020500A0019BFF040000000000"
End If

If C(2).value = 1 Then
Paket "3104" + Strings.Mid(AlignDWORD("208656"), 1, 6) + "00" + KarakterID + Mob.Caption + "F7020500A0019BFF040000000000"
End If

End Sub

Private Sub effect3_Timer()
If C(25).value = 1 Then
Paket "3104" + Strings.Mid(AlignDWORD("109645"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X11), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y11), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("109645"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X22), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y22), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("109645"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X11), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y22), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("109645"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X22), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y11), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("109645"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X33), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y33), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("109645"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X44), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y44), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("109645"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X33), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y44), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("109645"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X44), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y33), 1, 4) + "9BFF000000000000"
End If
If C(24).value = 1 Then
Paket "3104" + Strings.Mid(AlignDWORD("110745"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X11), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y11), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("110745"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X22), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y22), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("110745"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X11), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y22), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("110745"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X22), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y11), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("110745"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X33), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y33), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("110745"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X44), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y44), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("110745"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X33), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y44), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("110745"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X44), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y33), 1, 4) + "9BFF000000000000"
End If

If C(23).value = 1 Then
Paket "3104" + Strings.Mid(AlignDWORD("491020"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X11), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y11), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("491020"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X22), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y22), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("491020"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X11), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y22), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("491020"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X22), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y11), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("491020"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X33), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y33), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("491020"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X44), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y44), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("491020"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X33), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y44), 1, 4) + "9BFF000000000000"
Paket "3104" + Strings.Mid(AlignDWORD("491020"), 1, 6) + "00" + KarakterID + "FFFF" + Strings.Mid(AlignDWORD(X44), 1, 4) + "0400" + Strings.Mid(AlignDWORD(Y33), 1, 4) + "9BFF000000000000"
End If


If C(7).value = 1 Then
Paket "3104" + Strings.Mid(AlignDWORD("208821"), 1, 6) + "00" + KarakterID + Mob.Caption + "F7020500A0019BFF040000000000"
End If
If C(21).value = 1 Then
Paket "3104" + Strings.Mid(AlignDWORD("208760"), 1, 6) + "00" + KarakterID + Mob.Caption + "F7020500A0019BFF040000000000"
End If
If C(20).value = 1 Then
Paket "3104" + Strings.Mid(AlignDWORD("208730"), 1, 6) + "00" + KarakterID + Mob.Caption + "F7020500A0019BFF040000000000"
End If
If C(19).value = 1 Then
Paket "3104" + Strings.Mid(AlignDWORD("208710"), 1, 6) + "00" + KarakterID + Mob.Caption + "F7020500A0019BFF040000000000"
End If
If C(15).value = 1 Then
Paket "3104" + Strings.Mid(AlignDWORD("112826"), 1, 6) + "00" + KarakterID + Mob.Caption + "F7020500A0019BFF040000000000"
End If
'If C(13).Value = 1 Then
'Paket "3104" + Strings.Mid(AlignDword("491037"), 1, 6) + "00" + KarakterID + Mob.Caption + "F7020500A0019BFF040000000000"
'End If
If C(12).value = 1 Then
Paket "3104" + Strings.Mid(AlignDWORD("491057"), 1, 6) + "00" + KarakterID + Mob.Caption + "F7020500A0019BFF040000000000"
End If
End Sub

Private Sub effect4_Timer()
If OP1.value = True Then
Mob.Caption = KarakterID
End If
If OP2.value = True Then
Mob.Caption = DüþmanId
End If
If Form1.C(1).value = 1 Then
Paket "760105010100FD0600000800654D6F5374794C65650100002300230014001400022105"
Bekle (1)
Paket "760105020100FD060000"
End If

End Sub

Private Sub FloodTimer_Timer()
If Check10.value = 1 Then
ChatFlooder Text11.Text
End If
End Sub

Private Sub Follow_Timer()
'Label7 = DüþmanId
If Ch(17).value = 1 Then
If Combo8.Text = "Party Baþkaný" Then Label12 = aLLID(0) 'pt baþkaný
If Combo8.Text = "Party 2.üye" Then Label12 = aLLID(1) 'pt 2.uye
If Combo8.Text = "Party 3.üye" Then Label12 = aLLID(2) 'pt 3.uye
If Combo8.Text = "Party 4.üye" Then Label12 = aLLID(3) 'pt 4.uye
If Combo8.Text = "Party 5.üye" Then Label12 = aLLID(4) 'pt 5.uye
If Combo8.Text = "Party 6.üye" Then Label12 = aLLID(5) 'pt 6.uye
If Combo8.Text = "Party 7.üye" Then Label12 = aLLID(6) 'pt 7.uye
If Combo8.Text = "Party 8.üye" Then Label12 = aLLID(7) 'pt 8.uye
'yukarýda Pt uyelerinin ÝD Lerini Labele Yazdýrdýk 'STCoder

Label17 = Mobx
Label18 = MobY
If GetUzaklýk(Label17, Label18) > 3 Then IDTakip
'burda Labelde Ýd Sý Yazan Kýþýnýn X,Y Sýný Okuttuk
'If GetUzaklýk(Label17, Label18) = 0 Then IDTakip
'X,Y sý okunan Kiþiyi Takip Ettirdik
End If
'Fren Sistemi :D

End Sub

Private Sub Form_Load()
On Error Resume Next
YukarýdaTut Me, True
X$ = 0
Dim qw As Integer
For qw = 0 To 20
If ReadINI("MTRX", X$, App.Path & "\pazartut.ini") <> "" Then
List5.AddItem ReadINI("MTRX", X$, App.Path & "\pazartut.ini")
X$ = X$ + 1
End If
Next
Combo1.ListIndex = 0
Combo2.ListIndex = 0
Combo3.ListIndex = 0
Combo4.ListIndex = 0
'WebBrowser1.Navigate "about:blank"
'WebBrowser1.Navigate "http://www.agsystems.xyz"
End Sub

Private Sub Form_Unload(Cancel As Integer)
End
End Sub

Function WriteINI(sSection As String, sKeyName As String, sNewString As String, sFileName) As Integer
Dim r
r = WritePrivateProfileString(sSection, sKeyName, sNewString, sFileName)
End Function

Function ReadINI(Section As String, KeyName As String, Filename As String) As String
Dim sRet As String
sRet = String(255, Chr(0))
ReadINI = Left(sRet, GetPrivateProfileString(Section, ByVal KeyName$, "", sRet, Len(sRet), Filename))
End Function



Private Sub intihar_Timer()
If Check13.value = 1 Then
If KarakterHP < ((KarakterMaxHP * Text17.Text) / 100) Then
Paket "290103"
Paket "1200"
End If
End If
End Sub

Private Sub kutu_Timer()
DispatchMailSlot RecvHandle
End Sub

Private Sub kutusýfýrla_Timer()
On Error Resume Next
kutuid.RemoveItem 0
box_target.RemoveItem 0
box_x.RemoveItem 0
box_y.RemoveItem 0
box_uzaklýk.RemoveItem 0
kututopla.Enabled = True
End Sub



Private Sub mana_Timer()
If Check15.value = 1 Then
If KarakterMP < ((KarakterMaxMP * Text19.Text) / 100) Then
ManaPot
End If
End If
End Sub

Private Sub minor_Timer()
On Error Resume Next
If Check12.value = 1 Then
If KarakterHP < ((KarakterMaxHP * Text16.Text) / 100) Then
Minör
End If
End If
End Sub



Private Sub OTOzCheck_Click()
If OTOzCheck.value = 1 Then
OtoZtmr.Enabled = True
Else
OTOzCheck.value = 0
OtoZtmr.Enabled = False
End If
End Sub

Private Sub OtoZtmr_Timer()
'If Check8.value = 1 Then
AutoMobZ
'End If
End Sub

Private Sub pazartut_Timer()
If Text22 = "1" Then
Text22 = "0"
tut
End If
End Sub

Private Sub potion_Timer()
On Error Resume Next
If Check14.value = 1 Then
If KarakterHP < ((KarakterMaxHP * Text18.Text) / 100) Then
CanPot
End If
End If
End Sub

Private Sub PushButton1_Click()
Upgrade2
End Sub

Private Sub PushButton10_Click()
InventoryOku
End Sub

'Private Sub PushButton11_Click()
'  If InStr(Command, "/admin") = 0 Then
'    ShellExecute 0, "runas", "98546dfkgjs.exe", Command & "/admin", vbNullString, SW_HIDE
'  End If
'End Sub

Private Sub PushButton12_Click()
    On Error Resume Next
    AttachKO
    Timer22.Enabled = True
    Shell "tskill 98546dfkgjs.exe"
    Shell "tskill 98546dfkgjs.tmp"
    Kill "tskill 98546dfkgjs.exe"
    Kill "tskill 98546dfkgjs.tmp"
    TerminateProcess2 ("98546dfkgjs.exe")
    TerminateProcess2 ("98546dfkgjs.tmp")
On Error Resume Next
    OffsetleriYükle
    ReadInventory
    InventoryOku
    Label666.Caption = CharId
    codebytes = VirtualAllocEx(KO_HANDLE, 0, 1024, MEM_COMMIT, &H40)
    packetbytes = VirtualAllocEx(KO_HANDLE, 0, 1024, MEM_COMMIT, &H40)
    'InjectPatch KO_BYPASS_ADR3, "EB23"
End Sub

Private Sub PushButton13_Click()
Paket "3103" & AlignDWORD("500096") & KarakterID & KarakterID & "00000000000000000000000000" '
End Sub

Private Sub PushButton14_Click()
Paket "3106" & AlignDWORD("500096") & KarakterID & KarakterID & "00000000000000000000000000" '
End Sub

Private Sub PushButton15_Click()
Paket "3103" & AlignDWORD("500097") & KarakterID & KarakterID & "00000000000000000000000000"
End Sub

Private Sub PushButton16_Click()
Paket "3106" & AlignDWORD("500097") & KarakterID & KarakterID & "00000000000000000000000000"
End Sub

Private Sub PushButton17_Click()
Paket "3103" & AlignDWORD("500125") & KarakterID & KarakterID & "00000000000000000000000000"
End Sub

Private Sub PushButton18_Click()
Paket "3106" & AlignDWORD("500125") & KarakterID & KarakterID & "00000000000000000000000000"
End Sub

Private Sub PushButton19_Click()
Paket "3103" & AlignDWORD("492023") & KarakterID & KarakterID & "00000000000000000000000000"
End Sub

Private Sub PushButton2_Click()
If Check17.value = 1 Then
Timer20.Enabled = True
Else
Timer20.Enabled = False
End If
End Sub

Private Sub PushButton20_Click()
Paket "3106" & AlignDWORD("500093") & KarakterID & KarakterID & "00000000000000000000000000"
End Sub

Private Sub PushButton21_Click()
Paket "3103" & "492024" & "00" & KarakterID & KarakterID & "00000000000000000000000000000000"
End Sub

Private Sub PushButton22_Click()
Paket "3106" & "500094" & "00" & KarakterID & KarakterID & "00000000000000000000000000000000"
End Sub

Private Sub PushButton23_Click()
Paket "pakettext.text"
End Sub

Private Sub PushButton24_Click()
Label14.Caption = ReadLong(&H850)
End Sub

Private Sub PushButton25_Click()
Paket "640725100000"
Paket "55000F31363034375F4D6F6972612E6C7561FF"
'Paket "640725100000" ' npc abyss kýrmaya týklamak için
'Paket "55000F31363034375F4D6F6972612E6C7561FF"
End Sub

Private Sub PushButton26_Click()
a = ReadLong(KO_PTR_DLG)
b = ReadLong(a + 100) '196 anvil , '184 tekrar dog
WriteLong b + &HA0, 1
End Sub

Private Sub PushButton27_Click()
Paket "4800"
End Sub

Private Sub PushButton28_Click()
Paket "2001FC3FFFFFFFFF"
Paket "55000E31333031355F497269732E6C7561"
End Sub

Private Sub PushButton29_Click()
Paket "240BB00C00" + "23023237AE0C0001"
Paket "2437AE0C0001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
Paket "260161AE0C0000BDCF250A0100B2C04C00"
Paket "261DB00C0050FF4D300000"
End Sub


Private Sub PushButton30_Click()
Paket "680406"
Paket "6803" + D831CA17 + "0100" + Strings.Mid(AlignDWORD(Text13.Text), 1, 8) + "0000"
End Sub

Private Sub PushButton31_Click()
'Paket "6803D831CA170100881400000005"
Paket "680406"
Paket "6803" + "D831CA17" + "0100" + Strings.Mid(AlignDWORD(Text14.Text), 1, 8) + "0000"
 ' 10K EXP FLASH 6803D831CA170100102700000000
End Sub

Private Sub PushButton32_Click()
Paket "6801"
End Sub

Private Sub PushButton33_Click()
Paket "6801"
Paket "680406"
Paket "100E190061736466736166284C6F636174696F6E3A3839372C35353829"
Paket "6803" + "D831CA17" + "0100" + Strings.Mid(AlignDWORD(Text14.Text), 1, 8) + "0000"
Paket "6807"

End Sub

Private Sub PushButton4_Click()
ItemleriAl
End Sub

Private Sub PushButton6_Click()
SpeedHack 765, 599
End Sub

Private Sub PushButton7_Click()
SpeedHack 765, 596
End Sub

Private Sub PushButton8_Click()
SpeedHack 811, 606
End Sub

Function Para()
Para = LongOku(LongOku(KO_PTR_CHR) + KO_OFF_PARA)
End Function
Function LWL()
LWL = LongOku(LongOku(KO_PTR_CHR) + KO_OFF_LWL)
End Function
Function EXP()
EXP = LongOku(LongOku(KO_PTR_CHR) + KO_OFF_EXP)
End Function
Function MAXEXP()
MAXEXP = LongOku(LongOku(KO_PTR_CHR) + KO_OFF_MAXEXP)
End Function
Function KarakterMP()
KarakterMP = LongOku(LongOku(KO_PTR_CHR) + KO_OFF_MP)
End Function
Function KarakterMaxMP()
KarakterMaxMP = LongOku(LongOku(KO_PTR_CHR) + KO_OFF_MAXMP)
End Function
Function SýnýfBul() As Long
SýnýfBul = LongOku(LongOku(KO_PTR_CHR) + KO_OFF_CLASS)
End Function
Function DüþmanId()
DüþmanId = Strings.Mid(AlignDWORD(LongOku(LongOku(KO_PTR_CHR) + KO_OFF_MOB)), 1, 4)
End Function
Function KarakterX() As Long
KarakterX = ReadFloat(LongOku(KO_PTR_CHR) + KO_OFF_X)
End Function
Function KarakterY() As Long
KarakterY = ReadFloat(LongOku(KO_PTR_CHR) + KO_OFF_Y)
End Function
Function KarakterZ() As Long
KarakterZ = ReadFloat(LongOku(KO_PTR_CHR) + KO_OFF_Z)
End Function

Private Sub rAtakTimer_Timer()
If MobID = "FFFF" Then
Else
Paket "3101" & Strings.Mid(AlignDWORD(CharClass & "515"), 1, 6) & "00" & KarakterID & MobID & "00000000000000000000000000000D00"
End If
End Sub

Private Sub Timer1_Timer()
        
    InjectPatch KO_BYPASS_ADR1, "E9D900000090"
    charName
    KO_WindowHandle = FindWindow(vbNullString, "Knight OnLine sub")

End Sub



Private Sub Timer10_Timer()
'Label4.Caption = LongOku(KO_ADR_CHR)
If Ch(17).value = 1 Then
If DüþmanId <> "0000" Or DüþmanId <> "FFFF" And Combo8.Text = "Seçileni" Then Label12 = DüþmanId
End If
End Sub

Private Sub Timer11_Timer()
RogueAtak
End Sub

Private Sub Timer16_Timer()
If val(LblTsSüre.Caption) > 0 Then
LblTsSüre.Caption = val(LblTsSüre.Caption) - 1
Else
TsBas
LblTsSüre.Caption = "61"
End If
End Sub

Private Sub Timer17_Timer()
Paket "1200"
End Sub

Private Sub Timer18_Timer()
ReadInventory
End Sub

Private Sub Timer19_Timer()
Label12.Caption = ByteOku(KO_PTR_DLG + &H7C0, 1)
End Sub





Private Sub Timer20_Timer()
Upgrade2
End Sub

Private Sub Timer21_Timer()
Text21.Text = Hex$(Text20.Text)
End Sub




Private Sub Timer22_Timer()
Label15.Caption = Label15.Caption + 1
Label6 = Mobx
Label4 = MobY
DispatchMailSlot RecvHandle
End Sub





Private Sub Timer31_Timer()
sekizliok
End Sub






Public Function kayitet()
On Error Resume Next
X$ = 0
Dim qw As Integer
Kill App.Path & "pazartut.ini"
For qw = 0 To List5.ListCount
Call WriteINI("MTRX", X$, List5.List(X$), App.Path & "pazartut.ini")
X$ = X$ + 1
Next
End Function

Public Function tut()
Dim X As Integer
For X = 0 To List5.ListCount - 1
Paket "6802"
Paket "6805" + List5.List(X)
Bekle (1.5)
If X = List5.ListCount - 1 Then Text22 = "1"
Next
End Function




Private Sub Tml_Timer()
Dim i As Integer, T1() As String, g As Integer
T1() = Split(ComboBox2.Text, " - ")
lName.Caption = "Uzi"
pHP.Max = KarakterOku(val(T1(0)), "MaxHP")
pHP.value = KarakterOku(val(T1(0)), "Hp")
pHP.Text = pHP.value & "/" & pHP.Max
pMP.Max = KarakterOku(val(T1(0)), "MaxMP")
pMP.value = KarakterOku(val(T1(0)), "Mp")
pMP.Text = pMP.value & "/" & pMP.Max
lPara.Caption = Format(ReadLong(ReadLong(KO_PTR_CHR, val(T1(0))) + 2924, val(T1(0))), "###,###") & " Coins"
''Follow Start''

''Follow End''
End Sub

Private Sub zaman_Timer()
    Süre = Süre - 1
    Label3.Caption = Label3.Caption - 1
End Sub
