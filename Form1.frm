VERSION 5.00
Object = "{A8E5842E-102B-4289-9D57-3B3F5B5E15D3}#13.4#0"; "TASARIM.OCX"
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Form1 
   BackColor       =   &H80000004&
   BorderStyle     =   0  'None
   Caption         =   "ASKoxp"
   ClientHeight    =   4815
   ClientLeft      =   15570
   ClientTop       =   5340
   ClientWidth     =   6855
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4815
   ScaleWidth      =   6855
   Begin VB.Frame Frame1 
      Caption         =   "Attack Timers"
      Height          =   4575
      Left            =   2610
      TabIndex        =   189
      Top             =   5040
      Width           =   1365
   End
   Begin VB.ComboBox Combo4 
      Height          =   315
      Left            =   10200
      TabIndex        =   166
      Text            =   "Combo2"
      Top             =   4320
      Width           =   1695
   End
   Begin VB.Timer mobakos 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   8760
      Top             =   3240
   End
   Begin XtremeSuiteControls.GroupBox GroupBox6 
      Height          =   4575
      Left            =   120
      TabIndex        =   167
      Top             =   5040
      Width           =   2415
      _Version        =   851972
      _ExtentX        =   4260
      _ExtentY        =   8070
      _StockProps     =   79
      Caption         =   "Boss Check"
      UseVisualStyle  =   -1  'True
      Begin VB.TextBox txtLid 
         Alignment       =   2  'Center
         Height          =   285
         Left            =   600
         TabIndex        =   168
         Text            =   "30000"
         Top             =   1560
         Width           =   735
      End
      Begin VB.TextBox txtFid 
         Alignment       =   2  'Center
         Height          =   285
         Left            =   600
         TabIndex        =   169
         Text            =   "10000"
         Top             =   1920
         Width           =   735
      End
      Begin VB.TextBox HpText 
         Alignment       =   2  'Center
         Height          =   285
         Left            =   600
         TabIndex        =   170
         Text            =   "50000"
         Top             =   2280
         Width           =   855
      End
      Begin VB.ListBox Hpler 
         Appearance      =   0  'Flat
         Height          =   1785
         Left            =   600
         TabIndex        =   171
         Top             =   2640
         Width           =   1575
      End
      Begin VB.Timer tmrFind2 
         Enabled         =   0   'False
         Interval        =   2000
         Left            =   120
         Top             =   2640
      End
      Begin VB.Timer ara 
         Enabled         =   0   'False
         Interval        =   1000
         Left            =   120
         Top             =   3120
      End
      Begin VB.Timer AlarmCal 
         Enabled         =   0   'False
         Interval        =   2000
         Left            =   120
         Top             =   240
      End
      Begin VB.Timer Alarm 
         Enabled         =   0   'False
         Interval        =   1000
         Left            =   120
         Top             =   720
      End
      Begin VB.Timer Hpleriekle 
         Interval        =   1000
         Left            =   120
         Top             =   1680
      End
      Begin VB.Timer Alarm2 
         Enabled         =   0   'False
         Interval        =   1000
         Left            =   120
         Top             =   1200
      End
      Begin VB.Timer frm5c 
         Interval        =   1000
         Left            =   120
         Top             =   3600
      End
      Begin VB.Timer tmrFind 
         Enabled         =   0   'False
         Interval        =   1
         Left            =   120
         Top             =   2160
      End
      Begin VB.Timer OtoSaatKayýt 
         Enabled         =   0   'False
         Interval        =   1000
         Left            =   120
         Top             =   4080
      End
   End
   Begin VB.CheckBox Check6 
      Appearance      =   0  'Flat
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
      ForeColor       =   &H80000008&
      Height          =   225
      Left            =   8880
      MaskColor       =   &H00C0FFFF&
      TabIndex        =   165
      Top             =   4320
      Width           =   975
   End
   Begin VB.Timer mobazipla 
      Enabled         =   0   'False
      Interval        =   400
      Left            =   8760
      Top             =   2760
   End
   Begin XtremeSuiteControls.GroupBox GroupBox2 
      Height          =   4370
      Left            =   80
      TabIndex        =   3
      Top             =   360
      Width           =   6700
      _Version        =   851972
      _ExtentX        =   11818
      _ExtentY        =   7708
      _StockProps     =   79
      Caption         =   "GroupBox2"
      BackColor       =   -2147483647
      Transparent     =   -1  'True
      Appearance      =   1
      BorderStyle     =   2
      Begin XtremeSuiteControls.TabControl TabControl2 
         Height          =   4380
         Left            =   0
         TabIndex        =   4
         Top             =   0
         Width           =   6735
         _Version        =   851972
         _ExtentX        =   11880
         _ExtentY        =   7726
         _StockProps     =   68
         AllowReorder    =   -1  'True
         Appearance      =   2
         PaintManager.Layout=   1
         PaintManager.BoldSelected=   -1  'True
         PaintManager.HotTracking=   -1  'True
         ItemCount       =   7
         SelectedItem    =   6
         Item(0).Caption =   "Status"
         Item(0).ControlCount=   32
         Item(0).Control(0)=   "pHP"
         Item(0).Control(1)=   "pMP"
         Item(0).Control(2)=   "lName"
         Item(0).Control(3)=   "L(9)"
         Item(0).Control(4)=   "L(8)"
         Item(0).Control(5)=   "L(7)"
         Item(0).Control(6)=   "lPara"
         Item(0).Control(7)=   "PushButton36"
         Item(0).Control(8)=   "Label16"
         Item(0).Control(9)=   "Label15"
         Item(0).Control(10)=   "Label2(3)"
         Item(0).Control(11)=   "Label1(3)"
         Item(0).Control(12)=   "CheckBox1"
         Item(0).Control(13)=   "Label666"
         Item(0).Control(14)=   "L(0)"
         Item(0).Control(15)=   "L(1)"
         Item(0).Control(16)=   "L(2)"
         Item(0).Control(17)=   "L(3)"
         Item(0).Control(18)=   "Label19"
         Item(0).Control(19)=   "Label21"
         Item(0).Control(20)=   "Label23"
         Item(0).Control(21)=   "ProgressBar1"
         Item(0).Control(22)=   "L(4)"
         Item(0).Control(23)=   "L(5)"
         Item(0).Control(24)=   "Label22"
         Item(0).Control(25)=   "L(6)"
         Item(0).Control(26)=   "Picture1"
         Item(0).Control(27)=   "L(10)"
         Item(0).Control(28)=   "Label9"
         Item(0).Control(29)=   "ProgressBar2"
         Item(0).Control(30)=   "L(11)"
         Item(0).Control(31)=   "Image1"
         Item(1).Caption =   "Attack"
         Item(1).Tooltip =   "Attack Options"
         Item(1).ControlCount=   15
         Item(1).Control(0)=   "List3"
         Item(1).Control(1)=   "asaslist"
         Item(1).Control(2)=   "WarList"
         Item(1).Control(3)=   "PriList"
         Item(1).Control(4)=   "PriZaman"
         Item(1).Control(5)=   "Check5"
         Item(1).Control(6)=   "pritimer"
         Item(1).Control(7)=   "FlatEdit1"
         Item(1).Control(8)=   "FlatEdit3"
         Item(1).Control(9)=   "warcheck"
         Item(1).Control(10)=   "OTOzCheck"
         Item(1).Control(11)=   "GroupBox3"
         Item(1).Control(12)=   "Far"
         Item(1).Control(13)=   "Label24"
         Item(1).Control(14)=   "PushButton3"
         Item(2).Caption =   "Others"
         Item(2).ControlCount=   1
         Item(2).Control(0)=   "TabControl1"
         Item(3).Caption =   "Heal"
         Item(3).ControlCount=   1
         Item(3).Control(0)=   "GroupBox1"
         Item(4).Caption =   "Flooder/SC"
         Item(4).ControlCount=   3
         Item(4).Control(0)=   "GroupBox5"
         Item(4).Control(1)=   "GroupBox10"
         Item(4).Control(2)=   "GroupBox11"
         Item(5).Caption =   "Quests"
         Item(5).ControlCount=   6
         Item(5).Control(0)=   "questlist"
         Item(5).Control(1)=   "Label20"
         Item(5).Control(2)=   "qlist"
         Item(5).Control(3)=   "PushButton11"
         Item(5).Control(4)=   "PushButton12"
         Item(5).Control(5)=   "PushButton34"
         Item(6).Caption =   "Mob Search"
         Item(6).ControlCount=   13
         Item(6).Control(0)=   "lstMap"
         Item(6).Control(1)=   "lstMobName"
         Item(6).Control(2)=   "txtMobName"
         Item(6).Control(3)=   "MobSearch(1)"
         Item(6).Control(4)=   "MobSearch(2)"
         Item(6).Control(5)=   "MobSearch(3)"
         Item(6).Control(6)=   "MobBox(0)"
         Item(6).Control(7)=   "MobBox(1)"
         Item(6).Control(8)=   "MobBox(2)"
         Item(6).Control(9)=   "MobSearch(0)"
         Item(6).Control(10)=   "MobSearchBut"
         Item(6).Control(11)=   "lwMob"
         Item(6).Control(12)=   "cmdCommand1"
         Begin VB.CommandButton cmdCommand1 
            Caption         =   "Command1"
            Height          =   360
            Left            =   2520
            TabIndex        =   193
            Top             =   1200
            Width           =   990
         End
         Begin VB.ListBox lstMap 
            Appearance      =   0  'Flat
            Height          =   1980
            ItemData        =   "Form1.frx":0000
            Left            =   120
            List            =   "Form1.frx":0002
            TabIndex        =   192
            Top             =   480
            Width           =   1695
         End
         Begin XtremeSuiteControls.PushButton PushButton3 
            Height          =   375
            Left            =   -66040
            TabIndex        =   118
            Top             =   1800
            Visible         =   0   'False
            Width           =   975
            _Version        =   851972
            _ExtentX        =   1720
            _ExtentY        =   661
            _StockProps     =   79
            Caption         =   "Get L"
            UseVisualStyle  =   -1  'True
         End
         Begin XtremeSuiteControls.CheckBox MobBox 
            Height          =   255
            Index           =   0
            Left            =   1920
            TabIndex        =   83
            Top             =   480
            Width           =   1215
            _Version        =   851972
            _ExtentX        =   2143
            _ExtentY        =   450
            _StockProps     =   79
            Caption         =   "AutoSearch"
            UseVisualStyle  =   -1  'True
         End
         Begin XtremeSuiteControls.PushButton MobSearchBut 
            Height          =   495
            Left            =   5040
            TabIndex        =   112
            Top             =   1920
            Width           =   1455
            _Version        =   851972
            _ExtentX        =   2566
            _ExtentY        =   873
            _StockProps     =   79
            Caption         =   "Search the list"
            UseVisualStyle  =   -1  'True
         End
         Begin XtremeSuiteControls.PushButton MobSearch 
            Height          =   495
            Index           =   3
            Left            =   5040
            TabIndex        =   96
            Top             =   960
            Width           =   1455
            _Version        =   851972
            _ExtentX        =   2566
            _ExtentY        =   873
            _StockProps     =   79
            Caption         =   "Get X, Y"
            UseVisualStyle  =   -1  'True
         End
         Begin XtremeSuiteControls.PushButton MobSearch 
            Height          =   495
            Index           =   2
            Left            =   5040
            TabIndex        =   85
            Top             =   480
            Width           =   1455
            _Version        =   851972
            _ExtentX        =   2566
            _ExtentY        =   873
            _StockProps     =   79
            Caption         =   "Clear"
            UseVisualStyle  =   -1  'True
         End
         Begin VB.TextBox txtMobName 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            Height          =   405
            Left            =   1920
            TabIndex        =   113
            Top             =   2040
            Width           =   1455
         End
         Begin VB.ListBox lstMobName 
            Appearance      =   0  'Flat
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
            Height          =   1980
            ItemData        =   "Form1.frx":0004
            Left            =   3480
            List            =   "Form1.frx":0006
            TabIndex        =   89
            Top             =   480
            Width           =   1455
         End
         Begin VB.CheckBox warcheck 
            Appearance      =   0  'Flat
            BackColor       =   &H8000000B&
            Caption         =   "R"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   162
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   435
            Left            =   -66040
            MaskColor       =   &H00C0FFFF&
            Style           =   1  'Graphical
            TabIndex        =   133
            Top             =   2760
            UseMaskColor    =   -1  'True
            Visible         =   0   'False
            Width           =   975
         End
         Begin XtremeSuiteControls.GroupBox GroupBox3 
            Height          =   2760
            Left            =   -69880
            TabIndex        =   71
            Top             =   360
            Visible         =   0   'False
            Width           =   2175
            _Version        =   851972
            _ExtentX        =   3836
            _ExtentY        =   4868
            _StockProps     =   79
            Caption         =   "Settings"
            UseVisualStyle  =   -1  'True
            Begin XtremeSuiteControls.PushButton PushButton35 
               Height          =   375
               Left            =   120
               TabIndex        =   78
               Top             =   2280
               Width           =   1095
               _Version        =   851972
               _ExtentX        =   1931
               _ExtentY        =   661
               _StockProps     =   79
               Caption         =   "Mob List"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.CheckBox CheckBox9 
               Height          =   255
               Left            =   120
               TabIndex        =   77
               Top             =   1440
               Width           =   1935
               _Version        =   851972
               _ExtentX        =   3413
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "Wait monster die"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Appearance      =   3
            End
            Begin XtremeSuiteControls.ProgressBar mobPB 
               Height          =   255
               Left            =   120
               TabIndex        =   73
               Top             =   360
               Width           =   1900
               _Version        =   851972
               _ExtentX        =   3351
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
            Begin XtremeSuiteControls.CheckBox CheckBox8 
               Height          =   255
               Left            =   120
               TabIndex        =   74
               Top             =   720
               Width           =   975
               _Version        =   851972
               _ExtentX        =   1720
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "Follow"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Appearance      =   5
            End
            Begin XtremeSuiteControls.CheckBox MobFollow 
               Height          =   255
               Left            =   120
               TabIndex        =   76
               Top             =   1200
               Width           =   1215
               _Version        =   851972
               _ExtentX        =   2143
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "Mob Follow"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Appearance      =   2
            End
            Begin XtremeSuiteControls.CheckBox CheckAuto 
               Height          =   255
               Left            =   120
               TabIndex        =   75
               Top             =   960
               Width           =   1335
               _Version        =   851972
               _ExtentX        =   2355
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "Mob Jump"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Appearance      =   3
            End
            Begin XtremeSuiteControls.Label L 
               Height          =   255
               Index           =   12
               Left            =   840
               TabIndex        =   72
               Top             =   120
               Width           =   615
               _Version        =   851972
               _ExtentX        =   1085
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "MobHP :"
               ForeColor       =   -2147483627
               BackColor       =   -2147483627
               Alignment       =   5
               Transparent     =   -1  'True
            End
         End
         Begin XtremeSuiteControls.PushButton PushButton34 
            Height          =   495
            Left            =   -65440
            TabIndex        =   143
            Top             =   3600
            Visible         =   0   'False
            Width           =   1335
            _Version        =   851972
            _ExtentX        =   2355
            _ExtentY        =   873
            _StockProps     =   79
            Caption         =   "Clear"
            UseVisualStyle  =   -1  'True
         End
         Begin XtremeSuiteControls.PushButton PushButton12 
            Height          =   495
            Left            =   -66760
            TabIndex        =   142
            Top             =   3600
            Visible         =   0   'False
            Width           =   1335
            _Version        =   851972
            _ExtentX        =   2355
            _ExtentY        =   873
            _StockProps     =   79
            Caption         =   "Finish"
            UseVisualStyle  =   -1  'True
         End
         Begin XtremeSuiteControls.PushButton PushButton11 
            Height          =   495
            Left            =   -67960
            TabIndex        =   141
            Top             =   3600
            Visible         =   0   'False
            Width           =   1215
            _Version        =   851972
            _ExtentX        =   2143
            _ExtentY        =   873
            _StockProps     =   79
            Caption         =   "Recieve"
            UseVisualStyle  =   -1  'True
         End
         Begin ComctlLib.ListView qlist 
            Height          =   2535
            Left            =   -67960
            TabIndex        =   135
            Top             =   960
            Visible         =   0   'False
            Width           =   4455
            _ExtentX        =   7858
            _ExtentY        =   4471
            View            =   3
            SortOrder       =   -1  'True
            Sorted          =   -1  'True
            LabelWrap       =   -1  'True
            HideSelection   =   -1  'True
            _Version        =   327682
            ForeColor       =   -2147483640
            BackColor       =   -2147483643
            BorderStyle     =   1
            Appearance      =   0
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Tahoma"
               Size            =   7.5
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            NumItems        =   3
            BeginProperty ColumnHeader(1) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
               Key             =   ""
               Object.Tag             =   ""
               Text            =   "LVL"
               Object.Width           =   353
            EndProperty
            BeginProperty ColumnHeader(2) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
               SubItemIndex    =   1
               Key             =   ""
               Object.Tag             =   ""
               Text            =   "Info"
               Object.Width           =   1764
            EndProperty
            BeginProperty ColumnHeader(3) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
               SubItemIndex    =   2
               Key             =   ""
               Object.Tag             =   "Reward"
               Text            =   "Reward"
               Object.Width           =   4410
            EndProperty
         End
         Begin VB.ListBox questlist 
            Appearance      =   0  'Flat
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   6.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000007&
            Height          =   3150
            IntegralHeight  =   0   'False
            ItemData        =   "Form1.frx":0008
            Left            =   -69880
            List            =   "Form1.frx":002A
            TabIndex        =   140
            Top             =   960
            Visible         =   0   'False
            Width           =   1815
         End
         Begin VB.CheckBox OTOzCheck 
            Appearance      =   0  'Flat
            BackColor       =   &H8000000B&
            Caption         =   "Auto Z"
            ForeColor       =   &H80000008&
            Height          =   435
            Left            =   -66040
            Style           =   1  'Graphical
            TabIndex        =   134
            Top             =   2280
            Visible         =   0   'False
            Width           =   975
         End
         Begin VB.CheckBox Check5 
            Appearance      =   0  'Flat
            BackColor       =   &H80000005&
            Caption         =   "Start"
            DisabledPicture =   "Form1.frx":00F0
            DownPicture     =   "Form1.frx":2632
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   1095
            Left            =   -69880
            MaskColor       =   &H8000000D&
            Picture         =   "Form1.frx":3474
            Style           =   1  'Graphical
            TabIndex        =   137
            Top             =   3240
            Visible         =   0   'False
            Width           =   6495
         End
         Begin VB.Timer Timer6 
            Interval        =   250
            Left            =   6120
            Top             =   120
         End
         Begin VB.PictureBox Picture1 
            Appearance      =   0  'Flat
            BackColor       =   &H000000FF&
            FillStyle       =   0  'Solid
            ForeColor       =   &H80000008&
            Height          =   375
            Left            =   -65200
            ScaleHeight     =   345
            ScaleWidth      =   345
            TabIndex        =   148
            Top             =   3960
            Visible         =   0   'False
            Width           =   375
         End
         Begin VB.ListBox PriZaman 
            Appearance      =   0  'Flat
            BackColor       =   &H80000000&
            Height          =   1155
            ItemData        =   "Form1.frx":49A9
            Left            =   -67600
            List            =   "Form1.frx":49BC
            Style           =   1  'Checkbox
            TabIndex        =   81
            Top             =   360
            Visible         =   0   'False
            Width           =   1455
         End
         Begin VB.ListBox PriList 
            Appearance      =   0  'Flat
            BackColor       =   &H80000003&
            Height          =   2760
            ItemData        =   "Form1.frx":49FF
            Left            =   -64960
            List            =   "Form1.frx":4A5D
            TabIndex        =   122
            Top             =   360
            Visible         =   0   'False
            Width           =   1575
         End
         Begin VB.ListBox WarList 
            Appearance      =   0  'Flat
            BackColor       =   &H80000003&
            Height          =   2760
            ItemData        =   "Form1.frx":4AE1
            Left            =   -64960
            List            =   "Form1.frx":4B63
            MultiSelect     =   1  'Simple
            TabIndex        =   119
            Top             =   360
            Visible         =   0   'False
            Width           =   1575
         End
         Begin VB.ListBox asaslist 
            Appearance      =   0  'Flat
            BackColor       =   &H80000003&
            Height          =   2760
            ItemData        =   "Form1.frx":4C34
            Left            =   -64960
            List            =   "Form1.frx":4C98
            TabIndex        =   121
            Top             =   360
            Visible         =   0   'False
            Width           =   1575
         End
         Begin VB.ListBox List3 
            Appearance      =   0  'Flat
            BackColor       =   &H80000003&
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   2760
            ItemData        =   "Form1.frx":4D37
            Left            =   -67600
            List            =   "Form1.frx":4D6E
            MultiSelect     =   1  'Simple
            TabIndex        =   120
            Top             =   360
            Visible         =   0   'False
            Width           =   1475
         End
         Begin XtremeSuiteControls.TabControl TabControl1 
            Height          =   4155
            Left            =   -70000
            TabIndex        =   5
            Top             =   240
            Visible         =   0   'False
            Width           =   6720
            _Version        =   851972
            _ExtentX        =   11862
            _ExtentY        =   7320
            _StockProps     =   68
            Appearance      =   2
            PaintManager.Position=   2
            PaintManager.BoldSelected=   -1  'True
            PaintManager.HotTracking=   -1  'True
            ItemCount       =   3
            SelectedItem    =   1
            Item(0).Caption =   "Main"
            Item(0).ControlCount=   14
            Item(0).Control(0)=   "CheckBox2"
            Item(0).Control(1)=   "Check7"
            Item(0).Control(2)=   "GroupBox8"
            Item(0).Control(3)=   "GroupBox4"
            Item(0).Control(4)=   "GroupBox7"
            Item(0).Control(5)=   "CheckBox5"
            Item(0).Control(6)=   "CheckBox4"
            Item(0).Control(7)=   "CheckBox3"
            Item(0).Control(8)=   "CheckBox6"
            Item(0).Control(9)=   "txtSh"
            Item(0).Control(10)=   "Check9"
            Item(0).Control(11)=   "otokutuche"
            Item(0).Control(12)=   "List6"
            Item(0).Control(13)=   "freescs"
            Item(1).Caption =   "Upgrade"
            Item(1).ControlCount=   9
            Item(1).Control(0)=   "canta"
            Item(1).Control(1)=   "Combo1"
            Item(1).Control(2)=   "Label1(1)"
            Item(1).Control(3)=   "PushButton10"
            Item(1).Control(4)=   "PushButton2"
            Item(1).Control(5)=   "PushButton1"
            Item(1).Control(6)=   "Text20"
            Item(1).Control(7)=   "Label13"
            Item(1).Control(8)=   "Text21"
            Item(2).Caption =   "Merchant"
            Item(2).ControlCount=   1
            Item(2).Control(0)=   "Frame9"
            Begin VB.ListBox List6 
               Appearance      =   0  'Flat
               Height          =   1395
               Left            =   -69880
               TabIndex        =   46
               Top             =   2040
               Visible         =   0   'False
               Width           =   1335
            End
            Begin XtremeSuiteControls.CheckBox freescs 
               Height          =   255
               Left            =   -69880
               TabIndex        =   40
               Top             =   1560
               Visible         =   0   'False
               Width           =   975
               _Version        =   851972
               _ExtentX        =   1720
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "Free Scs"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   -1  'True
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Appearance      =   5
            End
            Begin XtremeSuiteControls.CheckBox otokutuche 
               Height          =   255
               Left            =   -69880
               TabIndex        =   42
               Top             =   1800
               Visible         =   0   'False
               Width           =   1095
               _Version        =   851972
               _ExtentX        =   1931
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "RecvHook"
               Appearance      =   3
            End
            Begin VB.Frame Frame9 
               Caption         =   "Merchant Bug"
               Height          =   2415
               Left            =   -69880
               TabIndex        =   6
               Top             =   120
               Visible         =   0   'False
               Width           =   3495
               Begin VB.CommandButton Command35 
                  Caption         =   "Command35"
                  Height          =   255
                  Left            =   3120
                  TabIndex        =   11
                  Top             =   960
                  Width           =   255
               End
               Begin VB.CommandButton Command34 
                  Caption         =   "Command34"
                  Height          =   255
                  Left            =   2880
                  TabIndex        =   10
                  Top             =   960
                  Width           =   255
               End
               Begin VB.Timer Timer18 
                  Interval        =   9000
                  Left            =   1080
                  Top             =   1800
               End
               Begin VB.TextBox Text15 
                  Height          =   315
                  Left            =   1680
                  TabIndex        =   8
                  Top             =   240
                  Width           =   1455
               End
               Begin VB.CommandButton Command31 
                  Caption         =   "Ekle"
                  Height          =   195
                  Left            =   2880
                  TabIndex        =   13
                  Top             =   1200
                  Width           =   495
               End
               Begin VB.TextBox Text14 
                  Height          =   315
                  Left            =   1680
                  TabIndex        =   14
                  Text            =   "2000000"
                  Top             =   1560
                  Width           =   855
               End
               Begin VB.TextBox Text13 
                  Height          =   315
                  Left            =   1680
                  TabIndex        =   16
                  Text            =   "50000000"
                  Top             =   1920
                  Width           =   855
               End
               Begin XtremeSuiteControls.PushButton PushButton33 
                  Height          =   375
                  Left            =   1680
                  TabIndex        =   9
                  Top             =   630
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
                  TabIndex        =   12
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
                  Left            =   2610
                  TabIndex        =   15
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
                  Left            =   2610
                  TabIndex        =   17
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
                  Left            =   75
                  TabIndex        =   7
                  Top             =   240
                  Width           =   1530
                  _Version        =   851972
                  _ExtentX        =   2566
                  _ExtentY        =   3625
                  _StockProps     =   77
                  BackColor       =   -2147483643
               End
            End
            Begin VB.CheckBox Check9 
               Caption         =   "Check9"
               Height          =   255
               Left            =   -68440
               TabIndex        =   28
               Top             =   1320
               Visible         =   0   'False
               Width           =   255
            End
            Begin VB.TextBox txtSh 
               Alignment       =   2  'Center
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   162
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   285
               Left            =   -68800
               TabIndex        =   39
               Text            =   "40"
               Top             =   1320
               Visible         =   0   'False
               Width           =   375
            End
            Begin VB.Timer Timer20 
               Enabled         =   0   'False
               Interval        =   1
               Left            =   5640
               Top             =   2280
            End
            Begin VB.TextBox Text21 
               Appearance      =   0  'Flat
               Height          =   285
               Left            =   3240
               TabIndex        =   45
               Top             =   2760
               Width           =   495
            End
            Begin VB.TextBox Text20 
               Appearance      =   0  'Flat
               Height          =   285
               Left            =   3240
               TabIndex        =   44
               Text            =   "27"
               Top             =   2520
               Width           =   495
            End
            Begin VB.ComboBox Combo1 
               BackColor       =   &H80000004&
               Height          =   315
               ItemData        =   "Form1.frx":4E4E
               Left            =   2280
               List            =   "Form1.frx":4E5E
               Style           =   2  'Dropdown List
               TabIndex        =   19
               Top             =   120
               Width           =   1215
            End
            Begin VB.CheckBox Check7 
               Appearance      =   0  'Flat
               BackColor       =   &H80000004&
               Caption         =   "AutoLoot"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000008&
               Height          =   255
               Left            =   -69880
               TabIndex        =   22
               Top             =   360
               Visible         =   0   'False
               Width           =   1335
            End
            Begin XtremeSuiteControls.CheckBox CheckBox6 
               Height          =   255
               Left            =   -69880
               TabIndex        =   27
               Top             =   1320
               Visible         =   0   'False
               Width           =   1095
               _Version        =   851972
               _ExtentX        =   1931
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "SH(Shift)"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Appearance      =   5
            End
            Begin XtremeSuiteControls.CheckBox CheckBox2 
               Height          =   255
               Left            =   -69880
               TabIndex        =   20
               Top             =   120
               Visible         =   0   'False
               Width           =   1215
               _Version        =   851972
               _ExtentX        =   2143
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "Wall Hack"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Appearance      =   5
            End
            Begin XtremeSuiteControls.GroupBox GroupBox8 
               Height          =   1455
               Left            =   -65920
               TabIndex        =   33
               Top             =   120
               Visible         =   0   'False
               Width           =   2415
               _Version        =   851972
               _ExtentX        =   4260
               _ExtentY        =   2566
               _StockProps     =   79
               Caption         =   "Karakter Takibi"
               BackColor       =   -2147483633
               UseVisualStyle  =   -1  'True
               Begin VB.Timer SpeedHack 
                  Enabled         =   0   'False
                  Interval        =   100
                  Left            =   0
                  Top             =   1320
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
                  ItemData        =   "Form1.frx":4E9F
                  Left            =   120
                  List            =   "Form1.frx":4EBE
                  TabIndex        =   34
                  Text            =   $"Form1.frx":4F36
                  Top             =   240
                  Width           =   1455
               End
               Begin VB.Timer Follow 
                  Interval        =   200
                  Left            =   2160
                  Top             =   840
               End
               Begin VB.Timer Timer10 
                  Interval        =   100
                  Left            =   2160
                  Top             =   1200
               End
               Begin XtremeSuiteControls.RadioButton RadioButton1 
                  Height          =   255
                  Left            =   120
                  TabIndex        =   36
                  Top             =   840
                  Width           =   2055
                  _Version        =   851972
                  _ExtentX        =   3625
                  _ExtentY        =   450
                  _StockProps     =   79
                  Caption         =   "Follow the party leader"
                  BackColor       =   -2147483633
                  UseVisualStyle  =   -1  'True
                  Value           =   -1  'True
               End
               Begin XtremeSuiteControls.CheckBox Ch 
                  Height          =   255
                  Index           =   17
                  Left            =   120
                  TabIndex        =   35
                  Top             =   600
                  Width           =   975
                  _Version        =   851972
                  _ExtentX        =   1720
                  _ExtentY        =   450
                  _StockProps     =   79
                  Caption         =   "Follow"
                  BackColor       =   -2147483633
                  UseVisualStyle  =   -1  'True
               End
               Begin XtremeSuiteControls.RadioButton RadioButton2 
                  Height          =   255
                  Left            =   120
                  TabIndex        =   37
                  Top             =   1080
                  Width           =   2055
                  _Version        =   851972
                  _ExtentX        =   3625
                  _ExtentY        =   450
                  _StockProps     =   79
                  Caption         =   "Follow the ID you choose"
                  BackColor       =   -2147483633
                  UseVisualStyle  =   -1  'True
               End
            End
            Begin XtremeSuiteControls.GroupBox GroupBox4 
               Height          =   1335
               Left            =   -67240
               TabIndex        =   29
               Top             =   120
               Visible         =   0   'False
               Width           =   1215
               _Version        =   851972
               _ExtentX        =   2143
               _ExtentY        =   2355
               _StockProps     =   79
               Caption         =   "Transformation"
               UseVisualStyle  =   -1  'True
               Begin VB.ComboBox Combo5 
                  Height          =   315
                  ItemData        =   "Form1.frx":4F44
                  Left            =   120
                  List            =   "Form1.frx":4F81
                  TabIndex        =   30
                  Text            =   "Combo5"
                  Top             =   360
                  Width           =   975
               End
               Begin XtremeSuiteControls.CheckBox Check8 
                  Height          =   255
                  Left            =   120
                  TabIndex        =   31
                  Top             =   720
                  Width           =   855
                  _Version        =   851972
                  _ExtentX        =   1508
                  _ExtentY        =   450
                  _StockProps     =   79
                  Caption         =   "TransS"
                  Appearance      =   1
               End
               Begin VB.Label LblTsSüre 
                  Caption         =   "Time"
                  Height          =   255
                  Left            =   120
                  TabIndex        =   32
                  Top             =   960
                  Width           =   375
               End
            End
            Begin XtremeSuiteControls.GroupBox GroupBox7 
               Height          =   1935
               Left            =   -65920
               TabIndex        =   47
               Top             =   1680
               Visible         =   0   'False
               Width           =   2415
               _Version        =   851972
               _ExtentX        =   4260
               _ExtentY        =   3413
               _StockProps     =   79
               Caption         =   "Paket Sender"
               UseVisualStyle  =   -1  'True
               Begin XtremeSuiteControls.FlatEdit pakettext 
                  Height          =   375
                  Left            =   120
                  TabIndex        =   48
                  Top             =   360
                  Width           =   1215
                  _Version        =   851972
                  _ExtentX        =   2143
                  _ExtentY        =   661
                  _StockProps     =   77
                  BackColor       =   -2147483643
                  Text            =   "Paket Code"
                  Appearance      =   1
                  UseVisualStyle  =   0   'False
               End
               Begin XtremeSuiteControls.PushButton PushButton24 
                  Height          =   375
                  Left            =   120
                  TabIndex        =   51
                  Top             =   1320
                  Width           =   855
                  _Version        =   851972
                  _ExtentX        =   1508
                  _ExtentY        =   661
                  _StockProps     =   79
                  Caption         =   "Oku"
                  UseVisualStyle  =   -1  'True
               End
               Begin XtremeSuiteControls.PushButton PushButton23 
                  Height          =   375
                  Left            =   120
                  TabIndex        =   50
                  Top             =   960
                  Width           =   855
                  _Version        =   851972
                  _ExtentX        =   1508
                  _ExtentY        =   661
                  _StockProps     =   79
                  Caption         =   "Gönder"
                  UseVisualStyle  =   -1  'True
               End
               Begin XtremeSuiteControls.Label Label14 
                  Height          =   255
                  Left            =   1200
                  TabIndex        =   49
                  Top             =   360
                  Width           =   975
                  _Version        =   851972
                  _ExtentX        =   1720
                  _ExtentY        =   450
                  _StockProps     =   79
                  Caption         =   "       Paket Inf"
               End
            End
            Begin XtremeSuiteControls.CheckBox CheckBox5 
               Height          =   255
               Left            =   -69880
               TabIndex        =   26
               Top             =   1080
               Visible         =   0   'False
               Width           =   1095
               _Version        =   851972
               _ExtentX        =   1931
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "Be Enemy"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Appearance      =   5
            End
            Begin XtremeSuiteControls.CheckBox CheckBox4 
               Height          =   255
               Left            =   -69880
               TabIndex        =   25
               Top             =   840
               Visible         =   0   'False
               Width           =   1095
               _Version        =   851972
               _ExtentX        =   1931
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "Be Karus"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Appearance      =   5
            End
            Begin XtremeSuiteControls.CheckBox CheckBox3 
               Height          =   255
               Left            =   -69880
               TabIndex        =   24
               Top             =   600
               Visible         =   0   'False
               Width           =   1215
               _Version        =   851972
               _ExtentX        =   2143
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "Be Human "
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Appearance      =   5
            End
            Begin XtremeSuiteControls.ListBox canta 
               Height          =   3375
               Left            =   120
               TabIndex        =   18
               Top             =   120
               Width           =   1695
               _Version        =   851972
               _ExtentX        =   2990
               _ExtentY        =   5953
               _StockProps     =   77
               BackColor       =   16777215
               BackColor       =   16777215
               MultiSelect     =   1
               Appearance      =   6
               UseVisualStyle  =   0   'False
            End
            Begin XtremeSuiteControls.PushButton PushButton10 
               Height          =   375
               Left            =   2040
               TabIndex        =   23
               Top             =   600
               Width           =   1695
               _Version        =   851972
               _ExtentX        =   2990
               _ExtentY        =   661
               _StockProps     =   79
               Caption         =   "Yenile"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.PushButton PushButton2 
               Height          =   735
               Left            =   2040
               TabIndex        =   41
               Top             =   1680
               Width           =   1695
               _Version        =   851972
               _ExtentX        =   2990
               _ExtentY        =   1296
               _StockProps     =   79
               Caption         =   "Hizli Upgrade"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.PushButton PushButton1 
               Height          =   735
               Left            =   2040
               TabIndex        =   38
               Top             =   960
               Width           =   1695
               _Version        =   851972
               _ExtentX        =   2990
               _ExtentY        =   1296
               _StockProps     =   79
               Caption         =   "Upgrade"
               UseVisualStyle  =   -1  'True
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
               Left            =   2040
               TabIndex        =   43
               Top             =   2520
               Width           =   1215
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
               Height          =   250
               Index           =   1
               Left            =   1920
               TabIndex        =   21
               Top             =   155
               Width           =   495
            End
         End
         Begin XtremeSuiteControls.GroupBox GroupBox10 
            Height          =   1455
            Left            =   -69880
            TabIndex        =   52
            Top             =   360
            Visible         =   0   'False
            Width           =   3135
            _Version        =   851972
            _ExtentX        =   5530
            _ExtentY        =   2566
            _StockProps     =   79
            Caption         =   "Flooder"
            UseVisualStyle  =   -1  'True
            Begin VB.Timer FloodTimer 
               Enabled         =   0   'False
               Interval        =   1000
               Left            =   2640
               Top             =   1080
            End
            Begin VB.CheckBox Check10 
               BackColor       =   &H8000000B&
               Caption         =   "Flood"
               Height          =   495
               Left            =   2280
               Style           =   1  'Graphical
               TabIndex        =   56
               Top             =   240
               Width           =   735
            End
            Begin VB.TextBox Text12 
               Appearance      =   0  'Flat
               Height          =   285
               Left            =   1320
               TabIndex        =   55
               Text            =   "1000"
               Top             =   360
               Width           =   855
            End
            Begin VB.ComboBox ComboUmut 
               Height          =   315
               ItemData        =   "Form1.frx":505F
               Left            =   120
               List            =   "Form1.frx":5075
               TabIndex        =   54
               Text            =   "Normal"
               Top             =   360
               Width           =   1095
            End
            Begin VB.TextBox Text11 
               Appearance      =   0  'Flat
               Height          =   615
               Left            =   120
               TabIndex        =   57
               Text            =   "Text11"
               Top             =   720
               Width           =   2895
            End
            Begin VB.Label Label10 
               Caption         =   "Speed"
               Height          =   255
               Left            =   1440
               TabIndex        =   53
               Top             =   120
               Width           =   735
            End
         End
         Begin XtremeSuiteControls.ProgressBar pHP 
            Height          =   255
            Left            =   -69280
            TabIndex        =   87
            Top             =   840
            Visible         =   0   'False
            Width           =   1455
            _Version        =   851972
            _ExtentX        =   2566
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
            Left            =   -69280
            TabIndex        =   93
            Top             =   1200
            Visible         =   0   'False
            Width           =   1455
            _Version        =   851972
            _ExtentX        =   2566
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
         Begin XtremeSuiteControls.PushButton PushButton36 
            Height          =   375
            Left            =   -64840
            TabIndex        =   149
            Top             =   3960
            Visible         =   0   'False
            Width           =   1485
            _Version        =   851972
            _ExtentX        =   2619
            _ExtentY        =   661
            _StockProps     =   79
            Caption         =   "  Baglan"
            BackColor       =   -2147483637
            TextAlignment   =   0
            Appearance      =   4
            Picture         =   "Form1.frx":50A5
            ImageAlignment  =   4
         End
         Begin XtremeSuiteControls.CheckBox CheckBox1 
            Height          =   255
            Left            =   -65200
            TabIndex        =   139
            Top             =   3720
            Visible         =   0   'False
            Width           =   975
            _Version        =   851972
            _ExtentX        =   1720
            _ExtentY        =   450
            _StockProps     =   79
            Caption         =   "On Top"
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Appearance      =   2
         End
         Begin XtremeSuiteControls.GroupBox GroupBox1 
            Height          =   3855
            Left            =   -69880
            TabIndex        =   58
            Top             =   360
            Visible         =   0   'False
            Width           =   3735
            _Version        =   851972
            _ExtentX        =   6588
            _ExtentY        =   6800
            _StockProps     =   79
            Caption         =   "Auto Healing"
            UseVisualStyle  =   -1  'True
            Begin VB.ComboBox Combo7 
               Height          =   315
               ItemData        =   "Form1.frx":53F7
               Left            =   1800
               List            =   "Form1.frx":540A
               TabIndex        =   64
               Text            =   "1920"
               Top             =   600
               Width           =   1695
            End
            Begin VB.ComboBox Combo6 
               Appearance      =   0  'Flat
               Height          =   315
               ItemData        =   "Form1.frx":5427
               Left            =   1800
               List            =   "Form1.frx":543A
               TabIndex        =   61
               Text            =   "720"
               Top             =   240
               Width           =   1695
            End
            Begin XtremeSuiteControls.Slider Slider2 
               Height          =   255
               Left            =   1920
               TabIndex        =   69
               Top             =   1320
               Width           =   1455
               _Version        =   851972
               _ExtentX        =   2566
               _ExtentY        =   450
               _StockProps     =   64
            End
            Begin XtremeSuiteControls.FlatEdit Text16 
               Height          =   255
               Left            =   1200
               TabIndex        =   68
               Top             =   1320
               Width           =   495
               _Version        =   851972
               _ExtentX        =   873
               _ExtentY        =   450
               _StockProps     =   77
               BackColor       =   -2147483643
               Text            =   "80"
               Appearance      =   1
               UseVisualStyle  =   0   'False
            End
            Begin XtremeSuiteControls.FlatEdit Text17 
               Height          =   255
               Left            =   1200
               TabIndex        =   66
               Top             =   960
               Width           =   495
               _Version        =   851972
               _ExtentX        =   873
               _ExtentY        =   450
               _StockProps     =   77
               BackColor       =   -2147483643
               Text            =   "15"
               Appearance      =   1
               UseVisualStyle  =   0   'False
            End
            Begin XtremeSuiteControls.FlatEdit Text19 
               Height          =   255
               Left            =   1200
               TabIndex        =   63
               Top             =   600
               Width           =   495
               _Version        =   851972
               _ExtentX        =   873
               _ExtentY        =   450
               _StockProps     =   77
               BackColor       =   -2147483643
               Text            =   "50"
               Appearance      =   1
               UseVisualStyle  =   0   'False
            End
            Begin XtremeSuiteControls.FlatEdit Text18 
               Height          =   255
               Left            =   1200
               TabIndex        =   60
               Top             =   240
               Width           =   495
               _Version        =   851972
               _ExtentX        =   873
               _ExtentY        =   450
               _StockProps     =   77
               BackColor       =   -2147483643
               Text            =   "50"
               Appearance      =   1
               UseVisualStyle  =   0   'False
            End
            Begin XtremeSuiteControls.CheckBox Check12 
               Height          =   255
               Left            =   120
               TabIndex        =   67
               Top             =   1320
               Width           =   1215
               _Version        =   851972
               _ExtentX        =   2143
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "Minor"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Appearance      =   1
            End
            Begin XtremeSuiteControls.CheckBox Check13 
               Height          =   255
               Left            =   120
               TabIndex        =   65
               Top             =   960
               Width           =   1215
               _Version        =   851972
               _ExtentX        =   2143
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "Suicide"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Appearance      =   1
            End
            Begin XtremeSuiteControls.CheckBox Check15 
               Height          =   255
               Left            =   120
               TabIndex        =   62
               Top             =   600
               Width           =   1215
               _Version        =   851972
               _ExtentX        =   2143
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "Mana"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Appearance      =   1
            End
            Begin XtremeSuiteControls.CheckBox Check14 
               Height          =   255
               Left            =   120
               TabIndex        =   59
               Top             =   240
               Width           =   1335
               _Version        =   851972
               _ExtentX        =   2355
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "Healing"
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Appearance      =   1
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
               TabIndex        =   70
               Top             =   1320
               Width           =   135
            End
         End
         Begin XtremeSuiteControls.GroupBox GroupBox5 
            Height          =   1455
            Left            =   -66640
            TabIndex        =   128
            Top             =   360
            Visible         =   0   'False
            Width           =   1455
            _Version        =   851972
            _ExtentX        =   2566
            _ExtentY        =   2566
            _StockProps     =   79
            Caption         =   "SCs'"
            UseVisualStyle  =   -1  'True
            Begin XtremeSuiteControls.PushButton PushButton19 
               Height          =   375
               Left            =   120
               TabIndex        =   131
               Top             =   960
               Width           =   1215
               _Version        =   851972
               _ExtentX        =   2143
               _ExtentY        =   661
               _StockProps     =   79
               Caption         =   "NP SC"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.PushButton PushButton16 
               Height          =   375
               Left            =   120
               TabIndex        =   130
               Top             =   600
               Width           =   1215
               _Version        =   851972
               _ExtentX        =   2143
               _ExtentY        =   661
               _StockProps     =   79
               Caption         =   "Defence Iptal"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.PushButton PushButton15 
               Height          =   375
               Left            =   120
               TabIndex        =   129
               Top             =   240
               Width           =   1215
               _Version        =   851972
               _ExtentX        =   2143
               _ExtentY        =   661
               _StockProps     =   79
               Caption         =   "Defence SC"
               UseVisualStyle  =   -1  'True
            End
         End
         Begin XtremeSuiteControls.GroupBox GroupBox11 
            Height          =   2295
            Left            =   -69880
            TabIndex        =   104
            Top             =   1920
            Visible         =   0   'False
            Width           =   3135
            _Version        =   851972
            _ExtentX        =   5530
            _ExtentY        =   4048
            _StockProps     =   79
            Caption         =   "Test Buttons"
            UseVisualStyle  =   -1  'True
            Begin XtremeSuiteControls.PushButton PushButton29 
               Height          =   375
               Left            =   1200
               TabIndex        =   107
               Top             =   720
               Width           =   1095
               _Version        =   851972
               _ExtentX        =   1931
               _ExtentY        =   661
               _StockProps     =   79
               Caption         =   "Abyss Kýr"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.PushButton PushButton28 
               Height          =   375
               Left            =   120
               TabIndex        =   106
               Top             =   720
               Width           =   1095
               _Version        =   851972
               _ExtentX        =   1931
               _ExtentY        =   661
               _StockProps     =   79
               Caption         =   "FT'ye Gir"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.PushButton PushButton27 
               Height          =   375
               Left            =   120
               TabIndex        =   105
               Top             =   360
               Width           =   1095
               _Version        =   851972
               _ExtentX        =   1931
               _ExtentY        =   661
               _StockProps     =   79
               Caption         =   "Town At"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.PushButton PushButton25 
               Height          =   375
               Left            =   1200
               TabIndex        =   108
               Top             =   360
               Width           =   1095
               _Version        =   851972
               _ExtentX        =   1931
               _ExtentY        =   661
               _StockProps     =   79
               Caption         =   "Abyss Open"
               UseVisualStyle  =   -1  'True
            End
         End
         Begin XtremeSuiteControls.ProgressBar ProgressBar1 
            Height          =   255
            Left            =   -69280
            TabIndex        =   98
            Top             =   1560
            Visible         =   0   'False
            Width           =   1455
            _Version        =   851972
            _ExtentX        =   2566
            _ExtentY        =   450
            _StockProps     =   93
            Text            =   "2323"
            ForeColor       =   -2147483634
            BackColor       =   -2147483630
            Value           =   50
            Scrolling       =   1
            Appearance      =   1
            UseVisualStyle  =   0   'False
            BarColor        =   192
            TextAlignment   =   2
         End
         Begin XtremeSuiteControls.CheckBox pritimer 
            Height          =   255
            Left            =   -66040
            TabIndex        =   102
            Top             =   1440
            Visible         =   0   'False
            Width           =   855
            _Version        =   851972
            _ExtentX        =   1508
            _ExtentY        =   450
            _StockProps     =   79
            Caption         =   "+ Skills"
            Appearance      =   2
         End
         Begin XtremeSuiteControls.FlatEdit FlatEdit3 
            Height          =   255
            Left            =   -66040
            TabIndex        =   115
            Top             =   1080
            Visible         =   0   'False
            Width           =   975
            _Version        =   851972
            _ExtentX        =   1720
            _ExtentY        =   450
            _StockProps     =   77
            BackColor       =   -2147483643
            Text            =   "50"
            Alignment       =   2
            Appearance      =   2
            UseVisualStyle  =   0   'False
         End
         Begin XtremeSuiteControls.FlatEdit FlatEdit1 
            Height          =   255
            Left            =   -66040
            TabIndex        =   111
            Top             =   600
            Visible         =   0   'False
            Width           =   975
            _Version        =   851972
            _ExtentX        =   1720
            _ExtentY        =   450
            _StockProps     =   77
            BackColor       =   -2147483643
            Text            =   "1250"
            Alignment       =   2
            Appearance      =   2
            UseVisualStyle  =   0   'False
         End
         Begin XtremeSuiteControls.ProgressBar ProgressBar2 
            Height          =   255
            Left            =   -66880
            TabIndex        =   90
            Top             =   840
            Visible         =   0   'False
            Width           =   1455
            _Version        =   851972
            _ExtentX        =   2566
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
         Begin XtremeSuiteControls.PushButton MobSearch 
            Height          =   375
            Index           =   1
            Left            =   2520
            TabIndex        =   100
            Top             =   1560
            Width           =   855
            _Version        =   851972
            _ExtentX        =   1508
            _ExtentY        =   661
            _StockProps     =   79
            Caption         =   "Add"
            UseVisualStyle  =   -1  'True
         End
         Begin XtremeSuiteControls.PushButton MobSearch 
            Height          =   1695
            Index           =   0
            Left            =   120
            TabIndex        =   123
            Top             =   2520
            Width           =   1695
            _Version        =   851972
            _ExtentX        =   2990
            _ExtentY        =   2990
            _StockProps     =   79
            Caption         =   "Search the map!"
            UseVisualStyle  =   -1  'True
         End
         Begin XtremeSuiteControls.CheckBox MobBox 
            Height          =   255
            Index           =   1
            Left            =   1920
            TabIndex        =   84
            Top             =   720
            Width           =   1335
            _Version        =   851972
            _ExtentX        =   2355
            _ExtentY        =   450
            _StockProps     =   79
            Caption         =   "CheckBox10"
            UseVisualStyle  =   -1  'True
         End
         Begin XtremeSuiteControls.CheckBox MobBox 
            Height          =   255
            Index           =   2
            Left            =   1920
            TabIndex        =   91
            Top             =   960
            Width           =   1455
            _Version        =   851972
            _ExtentX        =   2566
            _ExtentY        =   450
            _StockProps     =   79
            Caption         =   "CheckBox10"
            UseVisualStyle  =   -1  'True
         End
         Begin MSComctlLib.ListView lwMob 
            Height          =   1695
            Left            =   1920
            TabIndex        =   191
            Top             =   2520
            Width           =   4605
            _ExtentX        =   8123
            _ExtentY        =   2990
            View            =   3
            LabelEdit       =   1
            MultiSelect     =   -1  'True
            LabelWrap       =   0   'False
            HideSelection   =   -1  'True
            FullRowSelect   =   -1  'True
            GridLines       =   -1  'True
            TextBackground  =   -1  'True
            _Version        =   393217
            ForeColor       =   -2147483640
            BackColor       =   -2147483643
            BorderStyle     =   1
            Appearance      =   0
            NumItems        =   5
            BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Text            =   "ID"
               Object.Width           =   970
            EndProperty
            BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   1
               Text            =   "Name"
               Object.Width           =   2469
            EndProperty
            BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   2
               Text            =   "HP"
               Object.Width           =   1940
            EndProperty
            BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   3
               Text            =   "X"
               Object.Width           =   954
            EndProperty
            BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   4
               Text            =   "Y"
               Object.Width           =   954
            EndProperty
         End
         Begin VB.Image Image1 
            Height          =   735
            Left            =   -68200
            Top             =   2880
            Visible         =   0   'False
            Width           =   1455
         End
         Begin XtremeSuiteControls.Label Label24 
            Height          =   255
            Left            =   -65800
            TabIndex        =   110
            Top             =   360
            Visible         =   0   'False
            Width           =   615
            _Version        =   851972
            _ExtentX        =   1085
            _ExtentY        =   450
            _StockProps     =   79
            Caption         =   "Speed :"
         End
         Begin XtremeSuiteControls.Label Far 
            Height          =   255
            Left            =   -65800
            TabIndex        =   114
            Top             =   840
            Visible         =   0   'False
            Width           =   615
            _Version        =   851972
            _ExtentX        =   1085
            _ExtentY        =   450
            _StockProps     =   79
            Caption         =   "Range : "
         End
         Begin XtremeSuiteControls.Label L 
            Height          =   255
            Index           =   11
            Left            =   -67600
            TabIndex        =   88
            Top             =   840
            Visible         =   0   'False
            Width           =   615
            _Version        =   851972
            _ExtentX        =   1085
            _ExtentY        =   450
            _StockProps     =   79
            Caption         =   "MobHP :"
            ForeColor       =   -2147483627
            BackColor       =   -2147483627
            Alignment       =   5
            Transparent     =   -1  'True
         End
         Begin VB.Label Label20 
            AutoSize        =   -1  'True
            Caption         =   "Moradon"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   11.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   -69880
            TabIndex        =   82
            Top             =   444
            Visible         =   0   'False
            Width           =   885
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Y"
            ForeColor       =   &H000080FF&
            Height          =   195
            Left            =   -69280
            TabIndex        =   138
            Top             =   3360
            Visible         =   0   'False
            Width           =   105
         End
         Begin XtremeSuiteControls.Label L 
            Height          =   255
            Index           =   10
            Left            =   -69880
            TabIndex        =   136
            Top             =   3360
            Visible         =   0   'False
            Width           =   495
            _Version        =   851972
            _ExtentX        =   873
            _ExtentY        =   450
            _StockProps     =   79
            Caption         =   "Y :"
            ForeColor       =   -2147483627
            BackColor       =   -2147483630
            Alignment       =   5
            Transparent     =   -1  'True
         End
         Begin XtremeSuiteControls.Label L 
            Height          =   195
            Index           =   6
            Left            =   -69880
            TabIndex        =   79
            Top             =   480
            Visible         =   0   'False
            Width           =   510
            _Version        =   851972
            _ExtentX        =   900
            _ExtentY        =   344
            _StockProps     =   79
            Caption         =   "Name :"
            ForeColor       =   -2147483627
            BackColor       =   -2147483627
            Alignment       =   5
            Transparent     =   -1  'True
            AutoSize        =   -1  'True
         End
         Begin VB.Label Label22 
            BorderStyle     =   1  'Fixed Single
            Caption         =   "ID"
            Height          =   255
            Left            =   -66880
            TabIndex        =   101
            Top             =   1560
            Visible         =   0   'False
            Width           =   735
         End
         Begin XtremeSuiteControls.Label L 
            Height          =   255
            Index           =   5
            Left            =   -67600
            TabIndex        =   94
            Top             =   1200
            Visible         =   0   'False
            Width           =   615
            _Version        =   851972
            _ExtentX        =   1085
            _ExtentY        =   450
            _StockProps     =   79
            Caption         =   "MobID :"
            ForeColor       =   -2147483627
            BackColor       =   -2147483627
            Alignment       =   5
            Transparent     =   -1  'True
         End
         Begin XtremeSuiteControls.Label L 
            Height          =   255
            Index           =   4
            Left            =   -67600
            TabIndex        =   99
            Top             =   1560
            Visible         =   0   'False
            Width           =   615
            _Version        =   851972
            _ExtentX        =   1085
            _ExtentY        =   450
            _StockProps     =   79
            Caption         =   "CharID :"
            ForeColor       =   -2147483627
            BackColor       =   -2147483627
            Alignment       =   5
            Transparent     =   -1  'True
         End
         Begin VB.Label Label23 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "X"
            ForeColor       =   &H000080FF&
            Height          =   195
            Left            =   -69280
            TabIndex        =   127
            Top             =   3000
            Visible         =   0   'False
            Width           =   105
         End
         Begin VB.Label Label21 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "CLASS"
            ForeColor       =   &H000080FF&
            Height          =   195
            Left            =   -69280
            TabIndex        =   125
            Top             =   2640
            Visible         =   0   'False
            Width           =   510
         End
         Begin VB.Label Label19 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "ivi"
            ForeColor       =   &H000080FF&
            Height          =   195
            Left            =   -69280
            TabIndex        =   117
            Top             =   2280
            Visible         =   0   'False
            Width           =   150
         End
         Begin XtremeSuiteControls.Label L 
            Height          =   255
            Index           =   3
            Left            =   -69880
            TabIndex        =   126
            Top             =   3000
            Visible         =   0   'False
            Width           =   495
            _Version        =   851972
            _ExtentX        =   873
            _ExtentY        =   450
            _StockProps     =   79
            Caption         =   "X :"
            ForeColor       =   -2147483627
            BackColor       =   -2147483630
            Alignment       =   5
            Transparent     =   -1  'True
         End
         Begin XtremeSuiteControls.Label L 
            Height          =   255
            Index           =   2
            Left            =   -69880
            TabIndex        =   124
            Top             =   2640
            Visible         =   0   'False
            Width           =   495
            _Version        =   851972
            _ExtentX        =   873
            _ExtentY        =   450
            _StockProps     =   79
            Caption         =   "Class :"
            ForeColor       =   -2147483627
            BackColor       =   -2147483630
            Alignment       =   5
            Transparent     =   -1  'True
         End
         Begin XtremeSuiteControls.Label L 
            Height          =   255
            Index           =   1
            Left            =   -69880
            TabIndex        =   97
            Top             =   1560
            Visible         =   0   'False
            Width           =   495
            _Version        =   851972
            _ExtentX        =   873
            _ExtentY        =   450
            _StockProps     =   79
            Caption         =   "Exp :"
            ForeColor       =   -2147483627
            BackColor       =   -2147483630
            Alignment       =   5
            Transparent     =   -1  'True
         End
         Begin XtremeSuiteControls.Label L 
            Height          =   255
            Index           =   0
            Left            =   -69880
            TabIndex        =   116
            Top             =   2280
            Visible         =   0   'False
            Width           =   495
            _Version        =   851972
            _ExtentX        =   873
            _ExtentY        =   450
            _StockProps     =   79
            Caption         =   "Level :"
            ForeColor       =   -2147483627
            BackColor       =   -2147483630
            Alignment       =   5
            Transparent     =   -1  'True
         End
         Begin VB.Label Label666 
            BorderStyle     =   1  'Fixed Single
            Caption         =   "ID"
            Height          =   255
            Left            =   -66880
            TabIndex        =   95
            Top             =   1200
            Visible         =   0   'False
            Width           =   735
         End
         Begin VB.Label Label1 
            Caption         =   "Bot Sürümü:"
            ForeColor       =   &H80000011&
            Height          =   195
            Index           =   3
            Left            =   -69880
            TabIndex        =   144
            Top             =   4080
            Visible         =   0   'False
            Width           =   975
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
            ForeColor       =   &H8000000A&
            Height          =   195
            Index           =   3
            Left            =   -68920
            TabIndex        =   145
            Top             =   4080
            Visible         =   0   'False
            Width           =   615
         End
         Begin VB.Label Label15 
            Caption         =   "1"
            ForeColor       =   &H80000011&
            Height          =   195
            Left            =   -67360
            TabIndex        =   146
            Top             =   4080
            Visible         =   0   'False
            Width           =   375
         End
         Begin VB.Label Label16 
            Caption         =   "Seconds Usage of Bot"
            ForeColor       =   &H80000011&
            Height          =   195
            Left            =   -67000
            TabIndex        =   147
            Top             =   4080
            Visible         =   0   'False
            Width           =   1695
         End
         Begin VB.Label lPara 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Coins"
            ForeColor       =   &H000080FF&
            Height          =   195
            Left            =   -69280
            TabIndex        =   109
            Top             =   1920
            Visible         =   0   'False
            Width           =   390
         End
         Begin XtremeSuiteControls.Label L 
            Height          =   255
            Index           =   7
            Left            =   -69880
            TabIndex        =   86
            Top             =   840
            Visible         =   0   'False
            Width           =   495
            _Version        =   851972
            _ExtentX        =   873
            _ExtentY        =   450
            _StockProps     =   79
            Caption         =   "HP :"
            ForeColor       =   -2147483627
            BackColor       =   -2147483627
            Alignment       =   5
            Transparent     =   -1  'True
         End
         Begin XtremeSuiteControls.Label L 
            Height          =   255
            Index           =   8
            Left            =   -70000
            TabIndex        =   92
            Top             =   1200
            Visible         =   0   'False
            Width           =   615
            _Version        =   851972
            _ExtentX        =   1085
            _ExtentY        =   450
            _StockProps     =   79
            Caption         =   "MP :"
            ForeColor       =   -2147483627
            BackColor       =   -2147483627
            Alignment       =   5
            Transparent     =   -1  'True
         End
         Begin XtremeSuiteControls.Label L 
            Height          =   255
            Index           =   9
            Left            =   -70000
            TabIndex        =   103
            Top             =   1920
            Visible         =   0   'False
            Width           =   615
            _Version        =   851972
            _ExtentX        =   1085
            _ExtentY        =   450
            _StockProps     =   79
            Caption         =   "Gold :"
            ForeColor       =   -2147483627
            BackColor       =   -2147483630
            Alignment       =   5
            Transparent     =   -1  'True
         End
         Begin XtremeSuiteControls.Label lName 
            Height          =   195
            Left            =   -69280
            TabIndex        =   80
            Top             =   480
            Visible         =   0   'False
            Width           =   480
            _Version        =   851972
            _ExtentX        =   847
            _ExtentY        =   344
            _StockProps     =   79
            Caption         =   "Label9"
            ForeColor       =   16744576
            BackColor       =   -2147483633
            Transparent     =   -1  'True
            AutoSize        =   -1  'True
         End
      End
   End
   Begin ASKoxp.UserControl1 UserControl11 
      Height          =   4815
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   6855
      _ExtentX        =   12091
      _ExtentY        =   8493
   End
   Begin VB.TextBox X 
      Height          =   285
      Index           =   0
      Left            =   10200
      TabIndex        =   2
      Text            =   "Y"
      Top             =   120
      Width           =   735
   End
   Begin VB.TextBox X 
      Height          =   285
      Index           =   1
      Left            =   10200
      TabIndex        =   150
      Text            =   "X"
      Top             =   480
      Width           =   735
   End
   Begin VB.Timer pritimes 
      Interval        =   1000
      Left            =   12240
      Top             =   3000
   End
   Begin VB.Timer priattack 
      Enabled         =   0   'False
      Interval        =   900
      Left            =   11880
      Top             =   3000
   End
   Begin VB.Timer Tml 
      Interval        =   100
      Left            =   9240
      Top             =   2760
   End
   Begin VB.Frame outsideboxes 
      Caption         =   "Timers"
      Height          =   2655
      Left            =   6960
      TabIndex        =   1
      Top             =   120
      Width           =   3135
      Begin VB.Timer minor 
         Enabled         =   0   'False
         Interval        =   10
         Left            =   1560
         Top             =   2160
      End
      Begin VB.Timer intihar 
         Interval        =   100
         Left            =   1080
         Top             =   2160
      End
      Begin VB.Timer mana 
         Enabled         =   0   'False
         Interval        =   1000
         Left            =   600
         Top             =   2160
      End
      Begin VB.Timer potion 
         Enabled         =   0   'False
         Interval        =   1000
         Left            =   2040
         Top             =   2160
      End
      Begin VB.Timer Timer23 
         Interval        =   1000
         Left            =   2040
         Top             =   1680
      End
      Begin VB.Timer wartimer 
         Enabled         =   0   'False
         Interval        =   1000
         Left            =   120
         Top             =   2160
      End
      Begin VB.Timer rAtakTimer 
         Enabled         =   0   'False
         Interval        =   850
         Left            =   2520
         Top             =   2160
      End
      Begin VB.Timer OtoZtmr 
         Enabled         =   0   'False
         Interval        =   500
         Left            =   2520
         Top             =   1680
      End
      Begin VB.Timer Timer16 
         Enabled         =   0   'False
         Interval        =   60000
         Left            =   120
         Top             =   1680
      End
      Begin VB.Timer Timer17 
         Interval        =   5000
         Left            =   600
         Top             =   1680
      End
      Begin VB.Timer kututopla 
         Interval        =   100
         Left            =   1560
         Top             =   1200
      End
      Begin VB.Timer Timer1 
         Enabled         =   0   'False
         Interval        =   1
         Left            =   2040
         Top             =   240
      End
      Begin VB.Timer zaman 
         Enabled         =   0   'False
         Interval        =   1000
         Left            =   600
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
      Begin VB.Timer Timer19 
         Interval        =   5
         Left            =   120
         Top             =   1200
      End
      Begin VB.Timer Timer12 
         Enabled         =   0   'False
         Interval        =   222
         Left            =   1080
         Top             =   240
      End
      Begin VB.Timer Timer11 
         Enabled         =   0   'False
         Interval        =   1000
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
         Interval        =   1000
         Left            =   120
         Top             =   720
      End
      Begin VB.Timer Timer31 
         Enabled         =   0   'False
         Interval        =   2000
         Left            =   600
         Top             =   720
      End
      Begin VB.Timer Timer21 
         Interval        =   1000
         Left            =   120
         Top             =   240
      End
   End
   Begin VB.Timer Timer22 
      Interval        =   1000
      Left            =   9720
      Top             =   2760
   End
   Begin VB.ListBox moblist 
      Height          =   450
      Left            =   10200
      TabIndex        =   152
      Top             =   1200
      Width           =   1335
   End
   Begin VB.ListBox kutuid 
      Height          =   255
      ItemData        =   "Form1.frx":5455
      Left            =   10200
      List            =   "Form1.frx":5457
      TabIndex        =   153
      Top             =   1800
      Width           =   735
   End
   Begin VB.ListBox invlist 
      Height          =   255
      Left            =   11040
      TabIndex        =   156
      Top             =   2160
      Width           =   735
   End
   Begin VB.TextBox charad 
      Height          =   285
      Left            =   11040
      TabIndex        =   154
      Text            =   "char ad"
      Top             =   1800
      Width           =   735
   End
   Begin VB.TextBox Text2 
      BackColor       =   &H0080C0FF&
      Height          =   285
      Left            =   26280
      TabIndex        =   190
      Text            =   "500"
      Top             =   6840
      Width           =   495
   End
   Begin VB.TextBox Text5 
      Height          =   285
      Left            =   10200
      TabIndex        =   155
      Text            =   "Text5"
      Top             =   2160
      Width           =   735
   End
   Begin XtremeSuiteControls.ComboBox ComboBox2 
      Height          =   315
      Left            =   19320
      TabIndex        =   151
      Top             =   480
      Width           =   1335
      _Version        =   851972
      _ExtentX        =   2355
      _ExtentY        =   556
      _StockProps     =   77
      BackColor       =   -2147483643
      Text            =   "ComboBox2"
   End
   Begin XtremeSuiteControls.GroupBox GroupBox9 
      Height          =   2055
      Left            =   7080
      TabIndex        =   157
      Top             =   2760
      Width           =   1650
      _Version        =   851972
      _ExtentX        =   2910
      _ExtentY        =   3625
      _StockProps     =   79
      Caption         =   "Infos"
      UseVisualStyle  =   -1  'True
      Begin VB.Label Label18 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Label18"
         Height          =   240
         Left            =   120
         TabIndex        =   164
         Top             =   1680
         Width           =   1335
      End
      Begin VB.Label Label17 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Label17"
         Height          =   240
         Left            =   120
         TabIndex        =   163
         Top             =   1440
         Width           =   1335
      End
      Begin VB.Label Label12 
         AutoSize        =   -1  'True
         BackColor       =   &H00C0FFFF&
         Caption         =   "DusmanID2"
         Height          =   195
         Left            =   600
         TabIndex        =   161
         Top             =   480
         Width           =   840
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackColor       =   &H00C0FFFF&
         Caption         =   "MobY"
         Height          =   195
         Index           =   0
         Left            =   120
         TabIndex        =   160
         Top             =   480
         Width           =   420
      End
      Begin VB.Label Label5 
         BackColor       =   &H00C0FFFF&
         Caption         =   "PT Bilgi"
         Height          =   375
         Index           =   0
         Left            =   120
         TabIndex        =   162
         Top             =   960
         Width           =   1335
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         BackColor       =   &H00C0FFFF&
         Caption         =   "Mobx"
         Height          =   195
         Index           =   0
         Left            =   120
         TabIndex        =   158
         Top             =   240
         Width           =   390
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         BackColor       =   &H00C0FFFF&
         Caption         =   "DusmanID"
         Height          =   195
         Index           =   0
         Left            =   600
         TabIndex        =   159
         Top             =   240
         Width           =   750
      End
   End
   Begin VB.Label Labelboss 
      Alignment       =   2  'Center
      Caption         =   "100"
      Height          =   255
      Index           =   16
      Left            =   960
      TabIndex        =   172
      Top             =   5280
      Width           =   615
   End
   Begin VB.Label Labelboss 
      Alignment       =   2  'Center
      Caption         =   "100"
      Height          =   255
      Index           =   15
      Left            =   1800
      TabIndex        =   186
      Top             =   7200
      Width           =   615
   End
   Begin VB.Label Labelboss 
      Alignment       =   2  'Center
      Caption         =   "100"
      Height          =   255
      Index           =   14
      Left            =   1800
      TabIndex        =   184
      Top             =   6960
      Width           =   615
   End
   Begin VB.Label Labelboss 
      Alignment       =   2  'Center
      Caption         =   "100"
      Height          =   255
      Index           =   13
      Left            =   1800
      TabIndex        =   182
      Top             =   6720
      Width           =   615
   End
   Begin VB.Label Labelboss 
      Alignment       =   2  'Center
      Caption         =   "100"
      Height          =   255
      Index           =   12
      Left            =   1800
      TabIndex        =   180
      Top             =   6480
      Width           =   615
   End
   Begin VB.Label Labelboss 
      Alignment       =   2  'Center
      Caption         =   "100"
      Height          =   255
      Index           =   11
      Left            =   1800
      TabIndex        =   178
      Top             =   6240
      Width           =   615
   End
   Begin VB.Label Labelboss 
      Alignment       =   2  'Center
      Caption         =   "100"
      Height          =   255
      Index           =   10
      Left            =   1800
      TabIndex        =   176
      Top             =   6000
      Width           =   615
   End
   Begin VB.Label Labelboss 
      Alignment       =   2  'Center
      Caption         =   "100"
      Height          =   255
      Index           =   9
      Left            =   1800
      TabIndex        =   175
      Top             =   5760
      Width           =   615
   End
   Begin VB.Label Labelboss 
      Alignment       =   2  'Center
      Caption         =   "100"
      Height          =   255
      Index           =   3
      Left            =   960
      TabIndex        =   179
      Top             =   6360
      Width           =   615
   End
   Begin VB.Label Labelboss 
      Alignment       =   2  'Center
      Caption         =   "100"
      Height          =   255
      Index           =   0
      Left            =   960
      TabIndex        =   173
      Top             =   5520
      Width           =   615
   End
   Begin VB.Label Labelboss 
      Alignment       =   2  'Center
      Caption         =   "100"
      Height          =   255
      Index           =   1
      Left            =   960
      TabIndex        =   174
      Top             =   5760
      Width           =   615
   End
   Begin VB.Label Labelboss 
      Alignment       =   2  'Center
      Caption         =   "100"
      Height          =   255
      Index           =   2
      Left            =   960
      TabIndex        =   177
      Top             =   6120
      Width           =   615
   End
   Begin VB.Label Labelboss 
      Alignment       =   2  'Center
      Caption         =   "100"
      Height          =   255
      Index           =   4
      Left            =   960
      TabIndex        =   181
      Top             =   6600
      Width           =   615
   End
   Begin VB.Label Labelboss 
      Alignment       =   2  'Center
      Caption         =   "100"
      Height          =   255
      Index           =   5
      Left            =   960
      TabIndex        =   183
      Top             =   6840
      Width           =   615
   End
   Begin VB.Label Labelboss 
      Alignment       =   2  'Center
      Caption         =   "100"
      Height          =   255
      Index           =   6
      Left            =   960
      TabIndex        =   185
      Top             =   7200
      Width           =   615
   End
   Begin VB.Label Labelboss 
      Alignment       =   2  'Center
      Caption         =   "100"
      Height          =   255
      Index           =   7
      Left            =   960
      TabIndex        =   187
      Top             =   7560
      Width           =   615
   End
   Begin VB.Label Labelboss 
      Alignment       =   2  'Center
      Caption         =   "100"
      Height          =   255
      Index           =   8
      Left            =   960
      TabIndex        =   188
      Top             =   7920
      Width           =   615
   End
   Begin VB.Label Label3 
      BackColor       =   &H0080C0FF&
      Caption         =   "9"
      Height          =   255
      Index           =   0
      Left            =   26880
      TabIndex        =   132
      Top             =   6840
      Width           =   255
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Dim iID As Long
Dim MobBase As Long
Dim DasKafa As Integer, KelKafa As Integer
Private Const MAX_PATH = 260

Private Declare Function GetSystemDirectory Lib "kernel32" Alias _
"GetSystemDirectoryA" (ByVal lpBuffer As String, ByVal _
nSize As Long) As Long

'declarations:
Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hwnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
Public AutoIT As New AutoItX3Lib.AutoItX3
Public net As Long
Private Function GetSystemPath() As String
    Dim strFolder As String
    Dim lngResult As Long
    strFolder = String$(MAX_PATH, 0)
    lngResult = GetSystemDirectory(strFolder, MAX_PATH)
        If lngResult <> 0 Then
            GetSystemPath = Left$(strFolder, InStr(strFolder, _
            Chr$(0)) - 1)
        Else
            GetSystemPath = ""
        End If
End Function

Private Sub ara_Timer()

On Error Resume Next
Dim L As Integer
    If lstMobName.ListCount > 0 Then
        lwMob.ListItems.Clear
        
        For i = 0 To lstMobName.ListCount - 1
            For L = 0 To lstMap.ListCount - 1
                If InStr(LCase$(lstMap.List(L)), LCase$(lstMobName.List(i))) > 0 Then
                    
                        MobID = lstMap.ItemData(L)
                        MobBase = GetTargetBase(MobID)
                        Paket "1D0100" & Formathex(Hex$(MobID), 4)
                        Paket "22" & Formathex(Hex$(MobID), 4)
                        If ReadStringAuto(MobBase + KO_OFF_NAME) <> "" Then
                            Set lstview = lwMob.ListItems.Add(, , MobID)
                            lstview.ListSubItems.Add , , ReadStringAuto(MobBase + KO_OFF_NAME)
                            lstview.ListSubItems.Add , , ReadLong(MobBase + KO_OFF_HP)
                            lstview.ListSubItems.Add , , ReadFloat(MobBase + KO_OFF_X)
                            lstview.ListSubItems.Add , , ReadFloat(MobBase + KO_OFF_Y)
                        End If
                
                End If
            Next
        Next
    End If
If lwMob.ListItems(1).SubItems(3) > 0 Then: Labelboss(0).Caption = lwMob.ListItems(1).SubItems(3)
If lwMob.ListItems(2).SubItems(3) > 0 Then: Labelboss(1).Caption = lwMob.ListItems(2).SubItems(3)
If lwMob.ListItems(3).SubItems(3) > 0 Then: Labelboss(2).Caption = lwMob.ListItems(3).SubItems(3)
If lwMob.ListItems(4).SubItems(3) > 0 Then: Labelboss(3).Caption = lwMob.ListItems(4).SubItems(3)
If lwMob.ListItems(5).SubItems(3) > 0 Then: Labelboss(4).Caption = lwMob.ListItems(5).SubItems(3)
If lwMob.ListItems(6).SubItems(3) > 0 Then: Labelboss(5).Caption = lwMob.ListItems(6).SubItems(3)
If lwMob.ListItems(7).SubItems(3) > 0 Then: Labelboss(6).Caption = lwMob.ListItems(7).SubItems(3)
If lwMob.ListItems(8).SubItems(3) > 0 Then: Labelboss(7).Caption = lwMob.ListItems(8).SubItems(3)
End Sub

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



Private Sub Check4_Click()
If Check4.value = "1" Then
Timer11.Enabled = True
Check4.Caption = "Stop Attack"
Else
Check4.Caption = "Start Attack"
Timer11.Enabled = False
End If
End Sub

Private Sub Check5_Click()

If Check5.value = "1" Then
Check5.Caption = "Stop"



If CharClass = "Warrior" Then 'warrior
wartimer.Enabled = True
End If



If CharClass = "Rogue" Then
Timer11.Enabled = True
End If

If CharClass = "Priest" Then
priattack.Enabled = True
End If
End If

If Check5.value = "0" Then
Check5.Caption = "Start"
priattack.Enabled = False
Timer11.Enabled = False
wartimer.Enabled = False
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



Private Sub Check9_Click()
If Check9.value = 1 Then
WriteLong KO_ADR_CHR + KO_OFF_SWIFT, "16320"
Else
WriteLong KO_ADR_CHR + KO_OFF_SWIFT, "16256"
End If
End Sub

Private Sub CheckAuto_Click()
GetZMob
zMobX = Mobx
zMobY = MobY
zMobZ = MobZ
If CheckAuto.value = 1 Then
mobazipla.Enabled = True
Else
mobazipla.Enabled = False
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



Private Sub CheckBox6_Click()
If CheckBox6.value = 1 Then
SpeedHack.Enabled = 1
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
'64 WIZ_QUEST

'04 CHECK FUL FILL
'05 QUEST DELETE OP CODE
'06 ACCEPT QUEST OP CODE
'07 COMPLETE QUEST OP CODE

'43 WORM QUEST DECTOhex$ = QUEST_HELPER.tbl sütun 1

'000000 DETAYLAR BÝLÝNMÝYOR

'QUEST_HELPER : 255-0-1-2-3-4
'4 GÖREV ALMA           /WORM 34
'3 GÖREV VERME          /WORM 33
'2                      /
'1 CHECK FULFILL        /WORM 31


Paket "640634000000"                        'Worm QUEST ACCEPT
End Sub

Private Sub Command9_Click()
'Paket "640431000000"                       'WORM QUEST_CHECK
End Sub

Private Sub Command3_Click()
Paket "640742000000"                              'Worm QUEST COMPLETE             'görev verme ekraný aç /worm
Paket "55001031333031335F5061747269632E6C7561FF"  'Worm COMPLETE NPC_SAY           'görevi ver /worm
Paket "55001031333031335F5061747269632E6C7561FF"
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
kafalýk.Caption = hexItemID("03") 'kafalýk
gogusluk.Caption = hexItemID("06") 'gogusluk
invsol.Caption = hexItemID("08") 'invsol oyun içi sað item
invsag.Caption = hexItemID("10") 'invsag oyun içi sol item
donluk.Caption = hexItemID("12") 'Donluk
kolluk.Caption = LongItemID("14") 'kolluk
botluk.Caption = hexItemID("15") 'botluk
End Sub

Private Sub Command15_Click()
Paket "3103" & AlignDWORD("500125") & KarakterID & KarakterID & "00000000000000000000000000"
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
Paket "6803" + "D831CA17" + "0100" + Strings.mID(AlignDWORD(Text14.Text), 1, 8) + "0000"
 ' 10K EXP FLASH 6803D831CA170100102700000000
End Sub



Private Sub cmdCommand1_Click()
AyarlarýOkuHarita
End Sub

Private Sub Command31_Click()
On Error Resume Next
Text15.Text = Strings.mID(AlignDWORD(List4.ItemData(Form1.List4.ListIndex)), 1, 6)
End Sub

Private Sub Command32_Click()
Paket "6801"
End Sub

Private Sub Command33_Click()
Paket "6801"
Paket "680406"
Paket "100E190061736466736166284C6F636174696F6E3A3839372C35353829"
Paket "6803" + "D831CA17" + "0100" + Strings.mID(AlignDWORD(Text14.Text), 1, 8) + "0000"
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


Private Sub Command4_Click()
    Timer1.Enabled = True
    Timer2.Enabled = True
    Command4.Enabled = False
    Command8.Enabled = True
End Sub



Private Sub Command5_Click()
'Paket "240BB00C00" + "23023237AE0C0001"
'Paket "2437AE0C0001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
'Paket "260161AE0C0000BDCF250A0100B2C04C00"
'Paket "261DB00C0050FF4D300000"
List5.Clear
End Sub




Private Sub Command7_Click()
Label24.Caption = MobHpOku
'Paket "3103" & AlignDWORD("500096") & KarakterID & KarakterID & "00000000000000000000000000" '
End Sub

Private Sub Command8_Click()
    Timer1.Enabled = False
    Timer2.Enabled = False
    Timer3.Enabled = False
    Timer4.Enabled = False
    Timer5.Enabled = False
    priattack.Enabled = False
    Timer7.Enabled = False
    Timer8.Enabled = False
    Timer9.Enabled = False
    Command8.Enabled = False
    Command4.Enabled = True
End Sub






Private Sub effect1_Timer()

End Sub

Private Sub effect4_Timer()

End Sub



Private Sub FloodTimer_Timer()
If Check10.value = 1 Then
ChatFlooder Text11.Text
End If
End Sub

Private Sub Follow_Timer()
'Label7 = DüþmanId
If CheckBox8.value = 1 Then
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
End If
End Sub

Private Sub Form_Load()
Call VarPtr("VIRTUALIZER_START")
On Error Resume Next
YukarýdaTut Me, True
Open "c:\windows\xhunter1.sys" For Binary Access Read Write As #1
Lock #1

Combo1.ListIndex = 0
Combo2.ListIndex = 0
Combo3.ListIndex = 0
Combo4.ListIndex = 0
'Quests

'MobSearch
AyarlarýOkuHarita

'WebBrowser1.Navigate "about:blank"
'WebBrowser1.Navigate "http://www.agsystems.xyz"
Manapottime = 1
Canpottime = 1
Call VarPtr("VIRTUALIZER_END")

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
sRet = String$(255, Chr$(0))
ReadINI = Left$(sRet, GetPrivateProfileString(Section, ByVal KeyName$, "", sRet, Len(sRet), Filename))
End Function




Private Sub frm5c_Timer()
If MobBox(0).value = 1 Then
Form1.Caption = "ASKoxp" + "-" + (CharName) + "-" + CharServer + "-" + CharZoneIndex
'End If
'If AlarmCal.Enabled = True Then
' WindowState = vbshow
End If
End Sub

Private Sub HpleriEkle_Timer()
Hpler.Clear
For i = 1 To lwMob.ListItems.COUNT
If val(lwMob.ListItems(i).SubItems(2)) > val(HpText.Text) Then
Hpler.AddItem lwMob.ListItems(i).SubItems(2)
End If
Next i
End Sub

Private Sub intihar_Timer()
If Check13.value = 1 Then
If KarakterHP < ((KarakterMaxHP * Text17.Text) / 100) Then
Paket "290103"
Paket "1200"
End If
End If
End Sub





Private Sub ListView1_BeforeLabelEdit(Cancel As Integer)

End Sub

Private Sub kututopla_Timer()
DispatchMailSlot

End Sub


Private Sub lstMap_DblClick()
lstMobName.AddItem lstMap.Text

End Sub

Private Sub lstMobName_DblClick()
lstMobName.RemoveItem lstMobName.ListIndex
End Sub

Private Sub lwMob_DblClick()
If CharId > "0000" And CharHP > 0 Then: Runner lwMob.SelectedItem.SubItems(3) - 10, lwMob.SelectedItem.SubItems(4)
End Sub

Private Sub mana_Timer()
Canpottime = Canpottime - 1
Manapottime = Manapottime - 1
End Sub

Private Sub minor_Timer()
On Error Resume Next
If Check12.value = 1 Then
If KarakterHP < ((KarakterMaxHP * Text16.Text) / 100) Then
Minör
End If
End If
End Sub



Private Sub MobaZipla_Timer()
On Error Resume Next

mobazipla.Interval = 500
If Form1.Check5.value = 1 And Form1.CheckAuto.value = 1 Then

If KordinatArasýFark(zMobX, zMobY, CharX, CharY) > 300 Then Exit Sub
If KordinatArasýFark(zMobX, zMobY, KarakterX, KarakterY) <= Form1.FlatEdit3.Text Then
Takipsh Mobx, MobY 'Kordinatyürü
ElseIf KordinatArasýFark(SlotX, SlotY, CharX, CharY) >= Form1.FlatEdit3.Text Then
Takipsh Mobx, MobY 'Kordinatyürü
End If

End If
End Sub

Private Sub mobakos_Timer()
On Error Resume Next

If Check5.value = 1 And MobFollow.value = 1 Then

If KordinatArasýFark(zMobX, zMobY, CharX, CharY) > 200 Then Exit Sub
If KordinatArasýFark(zMobX, zMobY, Form1.X(1).Text, Form1.X(0).Text) <= Form1.FlatEdit3.Text Then
KordinatYürü2 Mobx, MobY 'Kordinatyürü
ElseIf KordinatArasýFark(SlotX, SlotY, Form1.X(1).Text, Form1.X(0).Text) >= Form1.FlatEdit3.Text Then
KordinatYürü2 Form1.X(1).Text, Form1.X(0).Text 'Kordinatyürü
End If

End If
End Sub




Private Sub MobBox_Click(MobClick As Integer)
Select Case MobClick

Case 0

If MobBox(0).value = 1 Then
ara.Enabled = True
OtoSaatKayýt.Enabled = True
Else
ara.Enabled = False
OtoSaatKayýt.Enabled = False
End If


End Select
End Sub

Private Sub MobFollow_Click()
GetZMob

If MobFollow.value = 1 Then
mobakos.Enabled = True
Else
mobakos.Enabled = False
End If
End Sub

Private Sub MobSearch_Click(Tus As Integer)
Select Case Tus
    
    Case 0
    
    iID = val(txtFid.Text)
    MobSearch(0).Enabled = False
    lstMap.Clear
    tmrFind.Enabled = True
    
    Case 1

    If txtMobName.Text <> "" Then
        lstMobName.AddItem txtMobName.Text
        txtMobName.Text = ""
        txtMobName.SetFocus
    End If
    
    Case 2
    
      lstMobName.Clear
    
    Case 3

Labelboss(0).Caption = Labelboss(16).Caption
Labelboss(1).Caption = Labelboss(9).Caption
Labelboss(2).Caption = Labelboss(10).Caption
Labelboss(3).Caption = Labelboss(11).Caption
Labelboss(4).Caption = Labelboss(12).Caption
Labelboss(5).Caption = Labelboss(13).Caption
Labelboss(6).Caption = Labelboss(14).Caption
Labelboss(7).Caption = Labelboss(15).Caption
    
   
    
        
    End Select
End Sub

Private Sub MobSearchBut_Click()
Dim L As Long
Dim MobID As Long

If lstMobName.ListCount > 0 Then
        lwMob.ListItems.Clear
        
        For i = 0 To lstMobName.ListCount - 1
            For L = 0 To lstMap.ListCount - 1
                If InStr(LCase$(lstMap.List(L)), LCase$(lstMobName.List(i))) > 0 Then
                    
                        MobID = lstMap.ItemData(L)
                        MobBase = GetTargetBase(MobID)
                        Paket "1D0100" & Formathex(Hex$(MobID), 4)
                        Paket "22" & Formathex(Hex$(MobID), 4)
                        If ReadStringAuto(MobBase + KO_OFF_NAME) <> "" Then
                            Set lstview = lwMob.ListItems.Add(, , MobID)
                            lstview.ListSubItems.Add , , ReadStringAuto(MobBase + KO_OFF_NAME)
                            lstview.ListSubItems.Add , , ReadLong(MobBase + KO_OFF_HP)
                            lstview.ListSubItems.Add , , ReadFloat(MobBase + KO_OFF_X)
                            lstview.ListSubItems.Add , , ReadFloat(MobBase + KO_OFF_Y)
                        End If
                    
                End If
            Next
        Next
    End If
End Sub

Private Sub OtoSaatKayýt_Timer()
On Error Resume Next
DasKafa = DasKafa + 1

For i = 1 To lwMob.ListItems.COUNT
If lwMob.ListItems(i).SubItems(2) > HpText.Text And DasKafa = "1" Then
If Labelboss(16).Caption + "2" < lwMob.ListItems(1).SubItems(3) Or Labelboss(16).Caption - "2" > lwMob.ListItems(1).SubItems(3) Or _
Labelboss(9).Caption + "2" < lwMob.ListItems(2).SubItems(3) Or Labelboss(9).Caption - "2" > lwMob.ListItems(2).SubItems(3) Or _
Labelboss(10) + "2" < lwMob.ListItems(3).SubItems(3) Or Labelboss(10).Caption - "2" > lwMob.ListItems(3).SubItems(3) Or _
Labelboss(11) + "2" < lwMob.ListItems(4).SubItems(3) Or Labelboss(11).Caption - "2" > lwMob.ListItems(4).SubItems(3) Or _
Labelboss(12) + "2" < lwMob.ListItems(5).SubItems(3) Or Labelboss(12).Caption - "2" > lwMob.ListItems(5).SubItems(3) Or _
Labelboss(13) + "2" < lwMob.ListItems(6).SubItems(3) Or Labelboss(13).Caption - "2" > lwMob.ListItems(6).SubItems(3) Or _
Labelboss(14) + "2" < lwMob.ListItems(7).SubItems(3) Or Labelboss(14).Caption - "2" > lwMob.ListItems(7).SubItems(3) Or _
Labelboss(15) + "2" < lwMob.ListItems(8).SubItems(3) Or Labelboss(15).Caption - "2" > lwMob.ListItems(8).SubItems(3) Then
Open App.Path & "\RadarLog.txt" For Append As #1
    Print #1, CharServer & " - " & CharZoneIndex & " - " & lwMob.ListItems(i).SubItems(1) & " - HP : " & lwMob.ListItems(i).SubItems(2) & " - Saat > " & Left$(Time, 5) & " & Tarih > " & Date
Close #1
End If
End If
If DasKafa >= "60" Then
DasKafa = "0"
End If
Next
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

End Sub



Private Sub potion_Timer()
On Error Resume Next
If Check14.value = 1 Then
If CharHP < ((CharMaxHP * Form1.Text18.Text) / 100) Then
CanPot
End If
End If


'####MANA POT#####
If Check15.value = 1 Then
If CharMP < ((CharMaxMP * Form1.Text19.Text) / 100) Then
ManaPot
End If
End If
End Sub

Private Sub priattack_Timer()

PriestAtakVur
End Sub

Private Sub pritimes_Timer()
On Error Resume Next
If Form1.pritimer.value = 1 Then
If Form1.Label21.Caption = "211" Or "111" Or "212" Or "112" And CharId > "0000" Then
If Form1.PriZaman.Selected(0) = True And CharMP >= "10" = True Then
Strength
End If
If Form1.PriZaman.Selected(1) = True Then
PriestKitap
End If
If Form1.PriZaman.Selected(2) = True And CharMP >= "80" = True Then
Blasting
End If
If Form1.PriZaman.Selected(3) = True And CharMP >= "80" = True Then
Wildness
End If
If Form1.PriZaman.Selected(4) = True And CharMP >= "80" = True Then
Eruption
End If
End If


End If
End Sub

Private Sub PushButton1_Click()
Upgrade2
End Sub

Private Sub PushButton10_Click()
InventoryOku
End Sub

Private Sub PushButton11_Click()


'64 WIZ_QUEST

'04 CHECK FUL FILL
'05 QUEST DELETE OP CODE
'06 ACCEPT QUEST OP CODE
'07 COMPLETE QUEST OP CODE

'43 WORM QUEST DECTOhex$ = QUEST_HELPER.tbl sütun 1

'000000 DETAYLAR BÝLÝNMÝYOR

'QUEST_HELPER : 255-0-1-2-3-4
'4 GÖREV ALMA           /WORM 34
'3 GÖREV VERME          /WORM 33
'2                      /
'1 CHECK FULFILL        /WORM 31

If questlist.Selected(0) Then
Paket "640634000000"
End If
If questlist.Selected(1) Then
Paket "64063F000000"
End If
If questlist.Selected(2) Then
Paket "6406FE0C0000"
End If
If questlist.Selected(3) Then
Paket "6406080D0000"
End If
If questlist.Selected(4) Then
Paket "6407120D0000"
End If
If questlist.Selected(5) Then
Paket "64071C0D0000"
End If
If questlist.Selected(6) Then
Paket "6407260D0000"
End If
If questlist.Selected(7) Then
Paket "64072C0D0000"
End If
End Sub

Private Sub PushButton12_Click()

'MobID = MobID
If questlist.Selected(0) Then
'Paket "640742000000"
Paket "2001BE57FFFFFFFF"
Paket "640732000000" 'Worm QUEST COMPLETE             'görev verme ekraný aç /worm
Paket "55001031333031335F5061747269632E6C7561FF"  'Worm COMPLETE NPC_SAY           'görevi ver /worm
Paket "55001031343433325F436865696E612E6C7561FF"
End If
If questlist.Selected(1) Then
Paket "2001BE57FFFFFFFF"

Paket "640742000000" 'Worm QUEST COMPLETE             'görev verme ekraný aç /worm
Paket "55001031333031335F5061747269632E6C7561FF"  'Worm COMPLETE NPC_SAY           'görevi ver /worm
End If

If questlist.Selected(2) Then
Paket "2001BE57FFFFFFFF"
Paket "6407FD0C0000" ' Kekoon QUEST COMPLETE             'görev verme ekraný aç /worm
Paket "55001031333031335F5061747269632E6C756102"  'Worm COMPLETE NPC_SAY           'görevi ver /worm
End If

If questlist.Selected(3) Then 'bulcan
Paket "2001BE57FFFFFFFF"
Paket "6407070D0000"
Paket "55001031333031335F5061747269632E6C756101"
End If
If questlist.Selected(4) Then 'wildbulcan
Paket "2001BE57FFFFFFFF"
Paket "6407110D0000"
Paket "55001031333031335F5061747269632E6C756101"
End If
If questlist.Selected(5) Then 'kecoon warrior
Paket "2001BE57FFFFFFFF"
Paket "64071B0D0000"
Paket "55001031333031335F5061747269632E6C756102"
End If
If questlist.Selected(6) Then 'gavolt
Paket "2001BE57FFFFFFFF"
Paket "6407250D0000"
Paket "55001031333031335F5061747269632E6C756101"
End If
If questlist.Selected(7) Then 'bulture
Paket "2001BE57FFFFFFFF"
Paket "64072F0D0000"
Paket "55001031333031335F5061747269632E6C756102"
End If


'Paket "210111150300" & NpcIDFinder("Hesta")
End Sub

'Private Sub PushButton11_Click()
'  If InStr(Command, "/admin") = 0 Then
'    ShellExecute 0, "runas", "98546dfkgjs.exe", Command & "/admin", vbNullString, SW_HIDE
'  End If
'End Sub



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
Paket "2001" & MobID & "FFFFFFFF" 'Beleþ Buf AL
Paket "55031233313530385F4E456E6368616E742E6C7561"
Paket "55001233313530385F4E456E6368616E742E6C7561"
'Paket "640725100000" ' npc abyss kýrmaya týklamak için
'Paket "55000F31363034375F4D6F6972612E6C7561FF"
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




Private Sub PushButton3_Click()
GetZMob

X(1).Text = CharX
X(0).Text = CharY
End Sub

Private Sub PushButton30_Click()
Paket "680406"
Paket "6803" + D831CA17 + "0100" + Strings.mID(AlignDWORD(Text13.Text), 1, 8) + "0000"
End Sub

Private Sub PushButton31_Click()
'Paket "6803D831CA170100881400000005"
Paket "680406"
Paket "6803" + "D831CA17" + "0100" + Strings.mID(AlignDWORD(Text14.Text), 1, 8) + "0000"
 ' 10K EXP FLASH 6803D831CA170100102700000000
End Sub

Private Sub PushButton32_Click()
Paket "6801"
End Sub

Private Sub PushButton33_Click()
Paket "6801"
Paket "680406"
Paket "100E190061736466736166284C6F636174696F6E3A3839372C35353829"
Paket "6803" + "D831CA17" + "0100" + Strings.mID(AlignDWORD(Text14.Text), 1, 8) + "0000"
Paket "6807"

End Sub

Private Sub PushButton34_Click()
qlist.ListItems.Clear
End Sub

Private Sub PushButton35_Click()
MobListe.Show
End Sub

Private Sub PushButton36_Click()
    On Error Resume Next
    AttachKO
    Timer22.Enabled = True
    'MobSearch
    tmrFind.Enabled = True
    iID = val(txtFid.Text)
    MobSearch(0).Enabled = False
    'Offset
    OffsetleriYükle
    Picture1.BackColor = &HFF00&
    InventoryOku
    codebytes = VirtualAllocEx(KO_HANDLE, 0, 1024, MEM_COMMIT, &H40)
    packetbytes = VirtualAllocEx(KO_HANDLE, 0, 1024, MEM_COMMIT, &H40)
    
'InjectPatch KO_BYPASS_ADR3, "EB23"
' Shell "tskill 98546dfkgjs.exe"
' Shell "tskill 98546dfkgjs.tmp"
  ' Kill "xhunter1.sys"
 '  Kill "tskill xhunter1.sys"
   ' TerminateProcess2 ("98546dfkgjs.exe")
   ' TerminateProcess2 ("98546dfkgjs.tmp")
End Sub





Function Para()
Para = ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_PARA)
End Function
Function LWL()
LWL = ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_LWL)
End Function
Function EXP()
EXP = ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_EXP)
End Function
Function MAXEXP()
MAXEXP = ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_MAXEXP)
End Function
Function KarakterMP()
KarakterMP = ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_MP)
End Function
Function KarakterMaxMP()
KarakterMaxMP = ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_MAXMP)
End Function
Function SýnýfBul() As Long
SýnýfBul = ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_CLASS)
End Function
Function DüþmanId()
DüþmanId = Strings.mID(AlignDWORD(ReadLong(ReadLong(KO_PTR_CHR) + KO_OFF_MOB)), 1, 4)
End Function
Function KarakterX() As Long
KarakterX = ReadFloat(ReadLong(KO_PTR_CHR) + KO_OFF_X)
End Function
Function KarakterY() As Long
KarakterY = ReadFloat(ReadLong(KO_PTR_CHR) + KO_OFF_Y)
End Function
Function KarakterZ() As Long
KarakterZ = ReadFloat(ReadLong(KO_PTR_CHR) + KO_OFF_Z)
End Function





Private Sub questlist_Click()
Dim li As ListItem


If questlist.Selected(0) Then
With qlist
qlist.ListItems.Clear
Set li = .ListItems.Add(, , "   1")
li.SubItems(1) = "Hunt 5 worms"
li.SubItems(2) = "50 XP, 2000Coin, 10Holy Water, 5Potion of spirit"

End With
End If

If questlist.Selected(1) Then
qlist.ListItems.Clear
Set li = qlist.ListItems.Add(, , "   1")
li.SubItems(1) = "Hunt 5 bandicoot"
li.SubItems(2) = "375 XP, 2.700Coin"
End If

If questlist.Selected(2) Then
qlist.ListItems.Clear
Set li = qlist.ListItems.Add(, , "   1")
li.SubItems(1) = "Hunt 5 kekoon"
li.SubItems(2) = "1875 XP, 2.000Coin, +5 Ring"
End If

If questlist.Selected(3) Then
qlist.ListItems.Clear
Set li = qlist.ListItems.Add(, , "   3")
li.SubItems(1) = "Hunt 5 bulcan"
li.SubItems(2) = "3500 XP, 2.000Coin, +5 Armor"
End If
End Sub

Private Sub rAtakTimer_Timer()
If MobID = "FFFF" Then
Else
Paket "3101" & Strings.mID(AlignDWORD(CharClass & "515"), 1, 6) & "00" & KarakterID & MobID & "00000000000000000000000000000D00"
End If
End Sub



Private Sub SpeedHack_Timer()

If GetAsyncKeyState(vbKeyG) Then
Runner MouseX, MouseY
End If
End Sub

Private Sub Text24_Change()

End Sub

Private Sub Text9_Change()

End Sub

Private Sub Timer1_Timer()
        
   ' InjectPatch KO_BYPASS_ADR1, "E9D900000090"
    CharName
    KO_WindowHandle = FindWindow(vbNullString, "Knight OnLine sub")

End Sub



Private Sub Timer10_Timer()
'Label4.Caption = readlong(KO_ADR_CHR)
  Call VarPtr("CODEREPLACE_START")
If Ch(17).value = 1 Then
If DüþmanId <> "0000" Or DüþmanId <> "FFFF" And Combo8.Text = "Seçileni" Then Label12 = DüþmanId
      Call VarPtr("CODEREPLACE_END")


End If
End Sub

Private Sub Timer11_Timer()
RogueAtak
AsasAtak
End Sub

Private Sub Timer14_Timer()
If freescs.value = 1 Then
Paket "3103" + Strings.mID(AlignDWORD(500095), 1, 8) + CharId + CharId ' Drop Sc
Paket "3103" + Strings.mID(AlignDWORD(500271), 1, 8) + CharId + CharId ' Atack Sc
Paket "3103" + Strings.mID(AlignDWORD(492023), 1, 8) + CharId + CharId ' Sinek Sc
Paket "3103" + Strings.mID(AlignDWORD(492024), 1, 8) + CharId + CharId ' Sýkýntýlý Sc
Paket "3103" + Strings.mID(AlignDWORD(500096), 1, 8) + CharId + CharId ' Sýkýntýlý Sc 2
End If
End Sub

Private Sub Timer15_Timer()

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

Private Sub Timer19_Timer()
Label12.Caption = ByteOku(KO_PTR_DLG + &H7C0, 1)
End Sub





Private Sub Timer2_Timer()

End Sub

Private Sub Timer20_Timer()
Upgrade2
End Sub

Private Sub Timer21_Timer()
Text21.Text = Hex$(Text20.Text)
'Label24.Caption = MobHpOku
End Sub




Private Sub Timer22_Timer()
Label15.Caption = Label15.Caption + 1
Label6(0) = Mobx
Label4(0) = MobY
Label666.Caption = MobID
Label22.Caption = CharId
'DispatchMailSlot RecvHandle
End Sub





Private Sub Timer23_Timer()
On Error Resume Next
AlanVurdum = False
Canpottime = Canpottime - 1
Manapottime = Manapottime - 1
BloodingTime = BloodingTime - 1
ManglingTime = ManglingTime - 1
MultipleShorkTime = MultipleShorkTime - 1
SeverTime = SeverTime - 1
LegCuttingTime = LegCuttingTime - 1
ShearTime = ShearTime - 1
HashTime = HashTime - 1
PiercingTime = PiercingTime - 1
CrashTime = CrashTime - 1
SlashTime = SlashTime - 1
Flash = Flash - 1
Shiver = Shiver - 1
Flame = Flame - 1
ColdWave = ColdWave - 1
Spark = Spark - 1
Blaze = Blaze - 1
FireBall = FireBall - 1
FireSpear = FireSpear - 1
FireBlast = FireBlast - 1
HellFire = HellFire - 1
PillarofFire = PillarofFire - 1
FireThorn = FireThorn - 1
FireImpact = FireImpact - 1
Incineration = Incineration - 1
VampiricFire = VampiricFire - 1
Igzination = Igzination - 1
Chill = Chill - 1
IceArrow = IceArrow - 1
IceOrb = IceOrb - 1
IceBlast = IceBlast - 1
Frostbite = Frostbite - 1
IceComet = IceComet - 1
IceImpact = IceImpact - 1
Prismatic = Prismatic - 1
FreezingDistance = FreezingDistance - 1
CounterSpell = CounterSpell - 1
Lightning = Lightning - 1
Thunder = Thunder - 1
ThunderBlast = ThunderBlast - 1
Discharge = Discharge - 1
StaticOrb = StaticOrb - 1
StaticThorn = StaticThorn - 1
ThunderImpact = ThunderImpact - 1
StunCloud = StunCloud - 1
 MinorTime = MinorTime - 1
 StabTime = StabTime - 1
 Stab2Time = Stab2Time - 1
 JabTime = JabTime - 1
 BloodTime = BloodTime - 1
 PierceTime = PierceTime - 1
 ShockTime = ShockTime - 1
 IllusionTime = IllusionTime - 1
 ThrustTime = ThrustTime - 1
 CutTime = CutTime - 1
 VampiricTime = VampiricTime - 1
 SpikeTime = SpikeTime - 1
 BloodyTime = BloodyTime - 1
 BlindingTime = BlindingTime - 1
 BeastTime = BeastTime - 1
 CriticalTime = CriticalTime - 1
 ArrowShowerTime = ArrowShowerTime - 1
 PowerShotTime = PowerShotTime - 1
 BlindingStrafeTime = BlindingStrafeTime - 1
 BlowArrowTime = BlowArrowTime - 1
 LightingShotTime = LightingShotTime - 1
 IceShotTime = IceShotTime - 1
 CounterStrikeTime = CounterStrikeTime - 1
 ViperTime = ViperTime - 1
'Priest Atak
If Form1.PriList.ListCount > 0 Then
If Form1.PriList.Selected(0) = True Then
pStrokeTime = pStrokeTime - 1
Else
pStrokeTime = 1
End If
If Form1.PriList.Selected(13) = True Then
JudgmentTime = JudgmentTime - 1
Else
JudgmentTime = 1
End If
If Form1.PriList.Selected(14) = True Then
HelisTime = HelisTime - 1
Else
HelisTime = 1
End If
If Form1.PriList.Selected(3) = True Then
RuinTime = RuinTime - 1
Else
RuinTime = 1
End If
If Form1.PriList.Selected(4) = True Then
HellishTime = HellishTime - 1
Else
HellishTime = 1
End If
If Form1.PriList.Selected(7) = True Then
HarshTime = HarshTime - 1
Else
HarshTime = 1
End If
If Form1.PriList.Selected(8) = True Then
CollapseTime = CollapseTime - 1
Else
CollapseTime = 5
End If
If Form1.PriList.Selected(11) = True Then
RavingTime = RavingTime - 1
Else
RavingTime = 1
End If
If Form1.PriList.Selected(12) = True Then
HadesTime = HadesTime - 1
Else
HadesTime = 1
End If
End If

End Sub

Private Sub Timer3_Timer()

End Sub

Private Sub Timer31_Timer()
sekizliok
End Sub



Private Sub Timer6_Timer()
On Error Resume Next



  ' Kill "xhunter1.sys"
  ' Kill "tskill xhunter1.sys"
   
If CharClass = "Priest" Then 'priest
Form1.PriList.Visible = True
Form1.PriZaman.Visible = True
Form1.WarList.Visible = False
Form1.List3.Visible = False
Form1.asaslist.Visible = False
End If

If CharClass = "Warrior" Then 'warrior
Form1.WarList.Visible = True
Form1.PriList.Visible = False
Form1.PriZaman.Visible = False
Form1.List3.Visible = False
Form1.asaslist.Visible = False
End If

If CharClass = "Rogue" Then ' rogue
Form1.List3.Visible = True
Form1.asaslist.Visible = True
Form1.WarList.Visible = False
Form1.PriList.Visible = False
Form1.PriZaman.Visible = False
End If

wartimer.Interval = FlatEdit1.Text

End Sub

Private Sub Tml_Timer()
Dim i As Integer, T1() As String, g As Integer
T1() = Split(ComboBox2.Text, " - ")
lName.Caption = CharName2
pHP.Max = KarakterOku(val(T1(0)), "MaxHP")
pHP.value = KarakterOku(val(T1(0)), "Hp")
pHP.Text = pHP.value & "/" & pHP.Max
pMP.Max = KarakterOku(val(T1(0)), "MaxMP")
pMP.value = KarakterOku(val(T1(0)), "Mp")
pMP.Text = pMP.value & "/" & pMP.Max

lPara.Caption = Format$(ReadLong(ReadLong(KO_PTR_CHR, val(T1(0))) + 2924, val(T1(0))), "###,###") & " Coins"
Label19.Caption = ReadLong(KO_ADR_CHR + KO_OFF_LVL)
ProgressBar1.Max = ReadLong(KO_ADR_CHR + KO_OFF_MAXEXP) 'Exp
ProgressBar1.value = ReadLong(KO_ADR_CHR + KO_OFF_EXP)  'Exp
ProgressBar1.Text = ProgressBar1.value & "/" & ProgressBar1.Max 'Exp
ProgressBar2.Max = MobHpOkuMax
ProgressBar2.value = MobHpOku
ProgressBar2.Text = ProgressBar2.value & "/" & ProgressBar2.Max
mobPB.Max = MobHpOkuMax
mobPB.value = MobHpOku
mobPB.Text = mobPB.value & "/" & mobPB.Max

'Label20.Caption = ReadLong(KO_ADR_CHR + KO_OFF_EXP)
Label21.Caption = SýnýfBul
Label23.Caption = CharX 'ReadFloat(KO_ADR_CHR + KO_OFF_X)
Label9.Caption = CharY 'ReadFloat(KO_ADR_CHR + KO_OFF_Y)
''Follow Start''

''Follow End''
End Sub

Private Sub tmrFind_Timer()
Dim Base As Long, mID As Long, targetName As String, i As Long
    tmrFind2.Enabled = True
    For i = 0 To 5
        Paket "1D0100" & Formathex(Hex$(iID + i), 4)
        MobSearch(0).Caption = iID + i & "/" & val(txtLid.Text)
        'Pause 0.001
    Next
    If iID >= val(txtLid.Text) Then
        tmrFind.Enabled = False
        MobSearch(0).Enabled = True
        MobSearch(0).Caption = "Searching"
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

Private Sub wartimer_Timer()
WarriorAtakVur
End Sub

Private Sub zaman_Timer()
    Süre = Süre - 1
End Sub
