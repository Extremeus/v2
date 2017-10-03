VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "ieframe.dll"
Object = "{A8E5842E-102B-4289-9D57-3B3F5B5E15D3}#13.4#0"; "TASARIM.OCX"
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Begin VB.Form Form1 
   BackColor       =   &H80000004&
   BorderStyle     =   0  'None
   Caption         =   "ASKoxp"
   ClientHeight    =   4905
   ClientLeft      =   19005
   ClientTop       =   1620
   ClientWidth     =   6945
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4905
   ScaleWidth      =   6945
   Begin XtremeSuiteControls.GroupBox GroupBox2 
      Height          =   4290
      Left            =   120
      TabIndex        =   9
      Top             =   400
      Width           =   6615
      _Version        =   851972
      _ExtentX        =   11668
      _ExtentY        =   7567
      _StockProps     =   79
      Caption         =   "GroupBox2"
      BackColor       =   -2147483647
      Transparent     =   -1  'True
      Appearance      =   1
      BorderStyle     =   2
      Begin XtremeSuiteControls.TabControl TabControl2 
         Height          =   4290
         Left            =   0
         TabIndex        =   10
         Top             =   0
         Width           =   6615
         _Version        =   851972
         _ExtentX        =   11668
         _ExtentY        =   7567
         _StockProps     =   68
         AllowReorder    =   -1  'True
         Appearance      =   2
         PaintManager.Layout=   1
         PaintManager.BoldSelected=   -1  'True
         PaintManager.HotTracking=   -1  'True
         ItemCount       =   6
         Item(0).Caption =   "Status"
         Item(0).ControlCount=   38
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
         Item(0).Control(27)=   "Command1"
         Item(0).Control(28)=   "Command3"
         Item(0).Control(29)=   "Command9"
         Item(0).Control(30)=   "Line1"
         Item(0).Control(31)=   "Line2"
         Item(0).Control(32)=   "Line3"
         Item(0).Control(33)=   "Line4"
         Item(0).Control(34)=   "Line5"
         Item(0).Control(35)=   "Line6"
         Item(0).Control(36)=   "L(10)"
         Item(0).Control(37)=   "Label9"
         Item(1).Caption =   "Attack"
         Item(1).Tooltip =   "Attack Options"
         Item(1).ControlCount=   13
         Item(1).Control(0)=   "List3"
         Item(1).Control(1)=   "asaslist"
         Item(1).Control(2)=   "WarList"
         Item(1).Control(3)=   "PriList"
         Item(1).Control(4)=   "PriZaman"
         Item(1).Control(5)=   "Check5"
         Item(1).Control(6)=   "pritimer"
         Item(1).Control(7)=   "FlatEdit1"
         Item(1).Control(8)=   "FlatEdit3"
         Item(1).Control(9)=   "Text25"
         Item(1).Control(10)=   "warcheck"
         Item(1).Control(11)=   "OTOzCheck"
         Item(1).Control(12)=   "CheckBox8"
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
         Begin XtremeSuiteControls.PushButton PushButton34 
            Height          =   495
            Left            =   -65440
            TabIndex        =   211
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
            TabIndex        =   210
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
            TabIndex        =   209
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
            TabIndex        =   208
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
            ItemData        =   "Form1.frx":0000
            Left            =   -69880
            List            =   "Form1.frx":0016
            TabIndex        =   207
            Top             =   960
            Visible         =   0   'False
            Width           =   1815
         End
         Begin VB.CommandButton Command9 
            Caption         =   "Görev Check"
            Height          =   495
            Left            =   3960
            TabIndex        =   203
            Top             =   2040
            Width           =   1095
         End
         Begin VB.CommandButton Command3 
            Caption         =   "Görev VER"
            Height          =   450
            Left            =   2760
            TabIndex        =   122
            Top             =   2640
            Width           =   1110
         End
         Begin VB.CommandButton Command1 
            Caption         =   "Görev AL"
            Height          =   495
            Left            =   2760
            TabIndex        =   103
            Top             =   2040
            Width           =   1095
         End
         Begin XtremeSuiteControls.CheckBox CheckBox8 
            Height          =   255
            Left            =   -66760
            TabIndex        =   115
            Top             =   2640
            Visible         =   0   'False
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
            Appearance      =   1
         End
         Begin VB.CheckBox OTOzCheck 
            Appearance      =   0  'Flat
            BackColor       =   &H80000004&
            Caption         =   "Auto"
            ForeColor       =   &H80000008&
            Height          =   315
            Left            =   -64840
            Style           =   1  'Graphical
            TabIndex        =   123
            Top             =   3000
            Visible         =   0   'False
            Width           =   1335
         End
         Begin VB.CheckBox warcheck 
            Appearance      =   0  'Flat
            BackColor       =   &H80000004&
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
            Height          =   225
            Left            =   -66760
            MaskColor       =   &H00C0FFFF&
            TabIndex        =   119
            Top             =   3000
            Visible         =   0   'False
            Width           =   1935
         End
         Begin VB.TextBox Text25 
            Height          =   300
            Left            =   -66670
            TabIndex        =   80
            Text            =   "Text25"
            Top             =   360
            Visible         =   0   'False
            Width           =   1575
         End
         Begin VB.CheckBox Check5 
            Appearance      =   0  'Flat
            BackColor       =   &H80000005&
            Caption         =   "Start"
            DisabledPicture =   "Form1.frx":0077
            DownPicture     =   "Form1.frx":25B9
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
            Height          =   750
            Left            =   -68200
            MaskColor       =   &H8000000D&
            Picture         =   "Form1.frx":33FB
            Style           =   1  'Graphical
            TabIndex        =   124
            Top             =   3360
            Visible         =   0   'False
            Width           =   4695
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
            Left            =   4560
            ScaleHeight     =   345
            ScaleWidth      =   345
            TabIndex        =   11
            Top             =   120
            Width           =   375
         End
         Begin VB.ListBox PriZaman 
            Appearance      =   0  'Flat
            BackColor       =   &H80000000&
            Height          =   2055
            ItemData        =   "Form1.frx":423D
            Left            =   -68200
            List            =   "Form1.frx":4250
            Style           =   1  'Checkbox
            TabIndex        =   79
            Top             =   360
            Visible         =   0   'False
            Width           =   1455
         End
         Begin VB.ListBox PriList 
            Appearance      =   0  'Flat
            BackColor       =   &H80000003&
            Height          =   3735
            ItemData        =   "Form1.frx":4293
            Left            =   -69880
            List            =   "Form1.frx":42F1
            TabIndex        =   78
            Top             =   360
            Visible         =   0   'False
            Width           =   1575
         End
         Begin VB.ListBox WarList 
            Appearance      =   0  'Flat
            BackColor       =   &H80000003&
            Height          =   3735
            ItemData        =   "Form1.frx":4375
            Left            =   -69880
            List            =   "Form1.frx":43F7
            MultiSelect     =   1  'Simple
            TabIndex        =   76
            Top             =   360
            Visible         =   0   'False
            Width           =   1575
         End
         Begin VB.ListBox asaslist 
            Appearance      =   0  'Flat
            BackColor       =   &H80000003&
            Height          =   2565
            ItemData        =   "Form1.frx":44C8
            Left            =   -65080
            List            =   "Form1.frx":452C
            TabIndex        =   82
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
            Height          =   3810
            ItemData        =   "Form1.frx":45CB
            Left            =   -69880
            List            =   "Form1.frx":45F3
            MultiSelect     =   1  'Simple
            TabIndex        =   77
            Top             =   360
            Visible         =   0   'False
            Width           =   1575
         End
         Begin XtremeSuiteControls.TabControl TabControl1 
            Height          =   4005
            Left            =   -70000
            TabIndex        =   13
            Top             =   270
            Visible         =   0   'False
            Width           =   6615
            _Version        =   851972
            _ExtentX        =   11668
            _ExtentY        =   7064
            _StockProps     =   68
            Appearance      =   2
            PaintManager.Position=   2
            PaintManager.BoldSelected=   -1  'True
            PaintManager.HotTracking=   -1  'True
            ItemCount       =   3
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
            Item(0).Control(12)=   "bannoticech"
            Item(0).Control(13)=   "List6"
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
               Height          =   1035
               Left            =   2040
               TabIndex        =   214
               Top             =   240
               Width           =   1575
            End
            Begin XtremeSuiteControls.CheckBox bannoticech 
               Height          =   375
               Left            =   120
               TabIndex        =   213
               Top             =   1920
               Width           =   975
               _Version        =   851972
               _ExtentX        =   1720
               _ExtentY        =   661
               _StockProps     =   79
               Caption         =   "CheckBox9"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.CheckBox otokutuche 
               Height          =   255
               Left            =   120
               TabIndex        =   212
               Top             =   1680
               Width           =   975
               _Version        =   851972
               _ExtentX        =   1720
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "otokutuche"
               UseVisualStyle  =   -1  'True
            End
            Begin VB.Frame Frame9 
               Caption         =   "Merchant Bug"
               Height          =   2415
               Left            =   -69880
               TabIndex        =   15
               Top             =   120
               Visible         =   0   'False
               Width           =   3495
               Begin VB.CommandButton Command35 
                  Caption         =   "Command35"
                  Height          =   255
                  Left            =   3120
                  TabIndex        =   20
                  Top             =   960
                  Width           =   255
               End
               Begin VB.CommandButton Command34 
                  Caption         =   "Command34"
                  Height          =   255
                  Left            =   2880
                  TabIndex        =   19
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
                  TabIndex        =   17
                  Top             =   240
                  Width           =   1455
               End
               Begin VB.CommandButton Command31 
                  Caption         =   "Ekle"
                  Height          =   195
                  Left            =   2880
                  TabIndex        =   22
                  Top             =   1200
                  Width           =   495
               End
               Begin VB.TextBox Text14 
                  Height          =   315
                  Left            =   1680
                  TabIndex        =   23
                  Text            =   "2000000"
                  Top             =   1560
                  Width           =   855
               End
               Begin VB.TextBox Text13 
                  Height          =   315
                  Left            =   1680
                  TabIndex        =   25
                  Text            =   "50000000"
                  Top             =   1920
                  Width           =   855
               End
               Begin XtremeSuiteControls.PushButton PushButton33 
                  Height          =   375
                  Left            =   1680
                  TabIndex        =   18
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
                  TabIndex        =   21
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
                  TabIndex        =   24
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
                  TabIndex        =   26
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
                  TabIndex        =   16
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
               Left            =   1680
               TabIndex        =   38
               Top             =   1320
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
               Left            =   1200
               TabIndex        =   37
               Text            =   "40"
               Top             =   1320
               Width           =   375
            End
            Begin VB.Timer Timer20 
               Enabled         =   0   'False
               Interval        =   1
               Left            =   4320
               Top             =   2760
            End
            Begin VB.TextBox Text21 
               Appearance      =   0  'Flat
               Height          =   285
               Left            =   -66760
               TabIndex        =   47
               Top             =   2760
               Visible         =   0   'False
               Width           =   495
            End
            Begin VB.TextBox Text20 
               Appearance      =   0  'Flat
               Height          =   285
               Left            =   -66760
               TabIndex        =   46
               Text            =   "27"
               Top             =   2520
               Visible         =   0   'False
               Width           =   495
            End
            Begin VB.ComboBox Combo1 
               BackColor       =   &H80000004&
               Height          =   315
               ItemData        =   "Form1.frx":4696
               Left            =   -67720
               List            =   "Form1.frx":46A6
               Style           =   2  'Dropdown List
               TabIndex        =   27
               Top             =   120
               Visible         =   0   'False
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
               Left            =   120
               TabIndex        =   30
               Top             =   360
               Width           =   1335
            End
            Begin XtremeSuiteControls.CheckBox CheckBox6 
               Height          =   255
               Left            =   120
               TabIndex        =   36
               Top             =   1320
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
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.CheckBox CheckBox2 
               Height          =   255
               Left            =   120
               TabIndex        =   28
               Top             =   120
               Width           =   855
               _Version        =   851972
               _ExtentX        =   1508
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "WH"
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
            Begin XtremeSuiteControls.GroupBox GroupBox8 
               Height          =   1575
               Left            =   4080
               TabIndex        =   39
               Top             =   120
               Width           =   2415
               _Version        =   851972
               _ExtentX        =   4260
               _ExtentY        =   2778
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
                  ItemData        =   "Form1.frx":46E7
                  Left            =   120
                  List            =   "Form1.frx":4706
                  TabIndex        =   40
                  Text            =   $"Form1.frx":477E
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
                  TabIndex        =   42
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
                  TabIndex        =   41
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
                  TabIndex        =   43
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
               Height          =   735
               Left            =   1560
               TabIndex        =   48
               Top             =   2760
               Width           =   2415
               _Version        =   851972
               _ExtentX        =   4260
               _ExtentY        =   1296
               _StockProps     =   79
               Caption         =   "Transformation"
               UseVisualStyle  =   -1  'True
               Begin VB.ComboBox Combo5 
                  Height          =   315
                  ItemData        =   "Form1.frx":478C
                  Left            =   1440
                  List            =   "Form1.frx":47C9
                  TabIndex        =   51
                  Text            =   "Combo5"
                  Top             =   240
                  Width           =   855
               End
               Begin XtremeSuiteControls.CheckBox Check8 
                  Height          =   255
                  Left            =   120
                  TabIndex        =   49
                  Top             =   277
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
                  Left            =   960
                  TabIndex        =   50
                  Top             =   300
                  Width           =   375
               End
            End
            Begin XtremeSuiteControls.GroupBox GroupBox7 
               Height          =   1455
               Left            =   4080
               TabIndex        =   52
               Top             =   2040
               Width           =   2415
               _Version        =   851972
               _ExtentX        =   4260
               _ExtentY        =   2566
               _StockProps     =   79
               Caption         =   "Paket Sender"
               UseVisualStyle  =   -1  'True
               Begin XtremeSuiteControls.FlatEdit pakettext 
                  Height          =   375
                  Left            =   120
                  TabIndex        =   53
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
                  Left            =   1080
                  TabIndex        =   56
                  Top             =   840
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
                  TabIndex        =   55
                  Top             =   840
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
                  TabIndex        =   54
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
               Left            =   120
               TabIndex        =   35
               Top             =   1080
               Width           =   1095
               _Version        =   851972
               _ExtentX        =   1931
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "Enemy"
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
            Begin XtremeSuiteControls.CheckBox CheckBox4 
               Height          =   255
               Left            =   120
               TabIndex        =   33
               Top             =   840
               Width           =   1095
               _Version        =   851972
               _ExtentX        =   1931
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "Karus"
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
            Begin XtremeSuiteControls.CheckBox CheckBox3 
               Height          =   255
               Left            =   120
               TabIndex        =   32
               Top             =   600
               Width           =   1215
               _Version        =   851972
               _ExtentX        =   2143
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "Human "
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
            Begin XtremeSuiteControls.ListBox canta 
               Height          =   3375
               Left            =   -69880
               TabIndex        =   14
               Top             =   120
               Visible         =   0   'False
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
               Left            =   -67960
               TabIndex        =   31
               Top             =   600
               Visible         =   0   'False
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
               Left            =   -67960
               TabIndex        =   44
               Top             =   1680
               Visible         =   0   'False
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
               Left            =   -67960
               TabIndex        =   34
               Top             =   960
               Visible         =   0   'False
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
               Left            =   -67960
               TabIndex        =   45
               Top             =   2520
               Visible         =   0   'False
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
               Left            =   -68080
               TabIndex        =   29
               Top             =   155
               Visible         =   0   'False
               Width           =   495
            End
         End
         Begin XtremeSuiteControls.GroupBox GroupBox10 
            Height          =   1455
            Left            =   -69880
            TabIndex        =   70
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
               TabIndex        =   74
               Top             =   240
               Width           =   735
            End
            Begin VB.TextBox Text12 
               Appearance      =   0  'Flat
               Height          =   285
               Left            =   1320
               TabIndex        =   73
               Text            =   "1000"
               Top             =   360
               Width           =   855
            End
            Begin VB.ComboBox ComboUmut 
               Height          =   315
               ItemData        =   "Form1.frx":48A7
               Left            =   120
               List            =   "Form1.frx":48BD
               TabIndex        =   72
               Text            =   "Normal"
               Top             =   360
               Width           =   1095
            End
            Begin VB.TextBox Text11 
               Appearance      =   0  'Flat
               Height          =   615
               Left            =   120
               TabIndex        =   75
               Text            =   "Text11"
               Top             =   720
               Width           =   2895
            End
            Begin VB.Label Label10 
               Caption         =   "Speed"
               Height          =   255
               Left            =   1440
               TabIndex        =   71
               Top             =   120
               Width           =   735
            End
         End
         Begin XtremeSuiteControls.ProgressBar pHP 
            Height          =   255
            Left            =   720
            TabIndex        =   98
            Top             =   840
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
            Left            =   720
            TabIndex        =   100
            Top             =   1200
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
            Left            =   5040
            TabIndex        =   12
            Top             =   120
            Width           =   1485
            _Version        =   851972
            _ExtentX        =   2619
            _ExtentY        =   661
            _StockProps     =   79
            Caption         =   "  Baglan"
            BackColor       =   -2147483637
            TextAlignment   =   0
            Appearance      =   4
            Picture         =   "Form1.frx":48ED
            ImageAlignment  =   4
         End
         Begin XtremeSuiteControls.CheckBox CheckBox1 
            Height          =   255
            Left            =   5040
            TabIndex        =   96
            Top             =   480
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
            TabIndex        =   57
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
               ItemData        =   "Form1.frx":4C3F
               Left            =   1800
               List            =   "Form1.frx":4C52
               TabIndex        =   63
               Text            =   "1920"
               Top             =   600
               Width           =   1695
            End
            Begin VB.ComboBox Combo6 
               Appearance      =   0  'Flat
               Height          =   315
               ItemData        =   "Form1.frx":4C6F
               Left            =   1800
               List            =   "Form1.frx":4C82
               TabIndex        =   60
               Text            =   "720"
               Top             =   240
               Width           =   1695
            End
            Begin XtremeSuiteControls.Slider Slider2 
               Height          =   255
               Left            =   1920
               TabIndex        =   68
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
               TabIndex        =   67
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
               TabIndex        =   65
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
               TabIndex        =   62
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
               TabIndex        =   59
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
               TabIndex        =   66
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
               TabIndex        =   64
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
               TabIndex        =   61
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
               TabIndex        =   58
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
               TabIndex        =   69
               Top             =   1320
               Width           =   135
            End
         End
         Begin XtremeSuiteControls.GroupBox GroupBox5 
            Height          =   3735
            Left            =   -64960
            TabIndex        =   83
            Top             =   360
            Visible         =   0   'False
            Width           =   1455
            _Version        =   851972
            _ExtentX        =   2566
            _ExtentY        =   6588
            _StockProps     =   79
            Caption         =   "SCs'"
            UseVisualStyle  =   -1  'True
            Begin XtremeSuiteControls.PushButton PushButton22 
               Height          =   255
               Left            =   120
               TabIndex        =   93
               Top             =   2400
               Width           =   1215
               _Version        =   851972
               _ExtentX        =   2143
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "Coin Iptal"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.PushButton PushButton21 
               Height          =   255
               Left            =   120
               TabIndex        =   92
               Top             =   2160
               Width           =   1215
               _Version        =   851972
               _ExtentX        =   2143
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "Coin SC"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.PushButton PushButton20 
               Height          =   255
               Left            =   120
               TabIndex        =   91
               Top             =   1920
               Width           =   1215
               _Version        =   851972
               _ExtentX        =   2143
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "NP SC Iptal"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.PushButton PushButton19 
               Height          =   255
               Left            =   120
               TabIndex        =   90
               Top             =   1680
               Width           =   1215
               _Version        =   851972
               _ExtentX        =   2143
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "NP SC"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.PushButton PushButton18 
               Height          =   255
               Left            =   120
               TabIndex        =   89
               Top             =   1440
               Width           =   1215
               _Version        =   851972
               _ExtentX        =   2143
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "Pazar Iptal"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.PushButton PushButton17 
               Height          =   255
               Left            =   120
               TabIndex        =   88
               Top             =   1200
               Width           =   1215
               _Version        =   851972
               _ExtentX        =   2143
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "Pazar SC"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.PushButton PushButton16 
               Height          =   255
               Left            =   120
               TabIndex        =   87
               Top             =   960
               Width           =   1215
               _Version        =   851972
               _ExtentX        =   2143
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "Defence Iptal"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.PushButton PushButton15 
               Height          =   255
               Left            =   120
               TabIndex        =   86
               Top             =   720
               Width           =   1215
               _Version        =   851972
               _ExtentX        =   2143
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "Defence SC"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.PushButton PushButton14 
               Height          =   255
               Left            =   120
               TabIndex        =   85
               Top             =   480
               Width           =   1215
               _Version        =   851972
               _ExtentX        =   2143
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "Attack Iptal"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.PushButton PushButton13 
               Height          =   255
               Left            =   120
               TabIndex        =   84
               Top             =   240
               Width           =   1215
               _Version        =   851972
               _ExtentX        =   2143
               _ExtentY        =   450
               _StockProps     =   79
               Caption         =   "Attack SC"
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
               TabIndex        =   108
               Top             =   720
               Width           =   975
               _Version        =   851972
               _ExtentX        =   1720
               _ExtentY        =   661
               _StockProps     =   79
               Caption         =   "Abyss Kýr"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.PushButton PushButton28 
               Height          =   375
               Left            =   120
               TabIndex        =   107
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
            Begin XtremeSuiteControls.PushButton PushButton26 
               Height          =   375
               Left            =   1200
               TabIndex        =   106
               Top             =   360
               Width           =   975
               _Version        =   851972
               _ExtentX        =   1720
               _ExtentY        =   661
               _StockProps     =   79
               Caption         =   "NPC Aç Test"
               UseVisualStyle  =   -1  'True
            End
            Begin XtremeSuiteControls.PushButton PushButton25 
               Height          =   375
               Left            =   120
               TabIndex        =   109
               Top             =   1080
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
            Left            =   720
            TabIndex        =   102
            Top             =   1560
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
            Left            =   -66640
            TabIndex        =   81
            Top             =   360
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
            Height          =   375
            Left            =   -68200
            TabIndex        =   118
            Top             =   2880
            Visible         =   0   'False
            Width           =   1335
            _Version        =   851972
            _ExtentX        =   2355
            _ExtentY        =   661
            _StockProps     =   77
            BackColor       =   -2147483643
            Text            =   "Range"
            Alignment       =   2
            Appearance      =   2
            UseVisualStyle  =   0   'False
         End
         Begin XtremeSuiteControls.FlatEdit FlatEdit1 
            Height          =   375
            Left            =   -68200
            TabIndex        =   114
            Top             =   2520
            Visible         =   0   'False
            Width           =   1335
            _Version        =   851972
            _ExtentX        =   2355
            _ExtentY        =   661
            _StockProps     =   77
            BackColor       =   -2147483643
            Text            =   "1250"
            Alignment       =   2
            Appearance      =   2
            UseVisualStyle  =   0   'False
         End
         Begin VB.Label Label20 
            AutoSize        =   -1  'True
            Caption         =   "Moradon"
            BeginProperty Font 
               Name            =   "Myriad Pro Light"
               Size            =   11.25
               Charset         =   0
               Weight          =   600
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   -69880
            TabIndex        =   206
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
            Left            =   720
            TabIndex        =   205
            Top             =   3360
            Width           =   105
         End
         Begin XtremeSuiteControls.Label L 
            Height          =   255
            Index           =   10
            Left            =   120
            TabIndex        =   204
            Top             =   3360
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
         Begin VB.Line Line6 
            BorderColor     =   &H80000000&
            BorderStyle     =   6  'Inside Solid
            X1              =   0
            X2              =   2160
            Y1              =   3600
            Y2              =   3600
         End
         Begin VB.Line Line5 
            BorderColor     =   &H80000000&
            BorderStyle     =   6  'Inside Solid
            X1              =   0
            X2              =   2160
            Y1              =   720
            Y2              =   720
         End
         Begin VB.Line Line4 
            BorderColor     =   &H80000000&
            BorderStyle     =   6  'Inside Solid
            X1              =   0
            X2              =   2160
            Y1              =   3255
            Y2              =   3255
         End
         Begin VB.Line Line3 
            BorderColor     =   &H80000000&
            BorderStyle     =   6  'Inside Solid
            X1              =   0
            X2              =   2160
            Y1              =   2880
            Y2              =   2880
         End
         Begin VB.Line Line2 
            BorderColor     =   &H80000000&
            BorderStyle     =   6  'Inside Solid
            X1              =   0
            X2              =   2160
            Y1              =   2570
            Y2              =   2570
         End
         Begin VB.Line Line1 
            BorderColor     =   &H80000000&
            BorderStyle     =   6  'Inside Solid
            X1              =   0
            X2              =   2160
            Y1              =   2190
            Y2              =   2190
         End
         Begin XtremeSuiteControls.Label L 
            Height          =   195
            Index           =   6
            Left            =   120
            TabIndex        =   94
            Top             =   480
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
            Left            =   5760
            TabIndex        =   128
            Top             =   3600
            Width           =   735
         End
         Begin XtremeSuiteControls.Label L 
            Height          =   255
            Index           =   5
            Left            =   5040
            TabIndex        =   125
            Top             =   3360
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
            Left            =   5040
            TabIndex        =   127
            Top             =   3600
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
            Left            =   720
            TabIndex        =   121
            Top             =   3000
            Width           =   105
         End
         Begin VB.Label Label21 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "CLASS"
            ForeColor       =   &H000080FF&
            Height          =   195
            Left            =   720
            TabIndex        =   117
            Top             =   2640
            Width           =   510
         End
         Begin VB.Label Label19 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "ivi"
            ForeColor       =   &H000080FF&
            Height          =   195
            Left            =   720
            TabIndex        =   113
            Top             =   2280
            Width           =   150
         End
         Begin XtremeSuiteControls.Label L 
            Height          =   255
            Index           =   3
            Left            =   120
            TabIndex        =   120
            Top             =   3000
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
            Left            =   120
            TabIndex        =   116
            Top             =   2640
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
            Left            =   120
            TabIndex        =   101
            Top             =   1560
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
            Left            =   120
            TabIndex        =   112
            Top             =   2280
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
            Left            =   5760
            TabIndex        =   126
            Top             =   3360
            Width           =   735
         End
         Begin VB.Label Label1 
            Caption         =   "Bot Sürümü:"
            ForeColor       =   &H80000011&
            Height          =   195
            Index           =   3
            Left            =   120
            TabIndex        =   129
            Top             =   3960
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
            Left            =   1080
            TabIndex        =   130
            Top             =   3960
            Width           =   615
         End
         Begin VB.Label Label15 
            Caption         =   "1"
            ForeColor       =   &H80000011&
            Height          =   195
            Left            =   4440
            TabIndex        =   131
            Top             =   3960
            Width           =   375
         End
         Begin VB.Label Label16 
            Caption         =   "Seconds Usage of Bot"
            ForeColor       =   &H80000011&
            Height          =   195
            Left            =   4800
            TabIndex        =   132
            Top             =   3960
            Width           =   1695
         End
         Begin VB.Label lPara 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Coins"
            ForeColor       =   &H000080FF&
            Height          =   195
            Left            =   720
            TabIndex        =   111
            Top             =   1920
            Width           =   390
         End
         Begin XtremeSuiteControls.Label L 
            Height          =   255
            Index           =   7
            Left            =   120
            TabIndex        =   97
            Top             =   840
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
            Left            =   0
            TabIndex        =   99
            Top             =   1200
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
            Left            =   0
            TabIndex        =   110
            Top             =   1920
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
            Left            =   720
            TabIndex        =   95
            Top             =   480
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
   Begin VB.TextBox Text24 
      Height          =   285
      Left            =   15720
      TabIndex        =   192
      Text            =   "Text24"
      Top             =   8160
      Width           =   735
   End
   Begin VB.TextBox Text9 
      Height          =   285
      Left            =   15720
      TabIndex        =   190
      Text            =   "Text9"
      Top             =   7800
      Width           =   735
   End
   Begin VB.Timer pritimes 
      Interval        =   1000
      Left            =   16080
      Top             =   8520
   End
   Begin VB.Timer priattack 
      Enabled         =   0   'False
      Interval        =   900
      Left            =   15720
      Top             =   8520
   End
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
      Left            =   2280
      TabIndex        =   1
      Top             =   6120
      Width           =   2760
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
         Left            =   120
         MaskColor       =   &H00FFFFFF&
         Style           =   1  'Graphical
         TabIndex        =   4
         Top             =   960
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
         Left            =   120
         MaskColor       =   &H00FFFFFF&
         Style           =   1  'Graphical
         TabIndex        =   7
         Top             =   2040
         Width           =   1335
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
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   8
         Top             =   600
         Width           =   1335
      End
      Begin VB.ListBox List5 
         Height          =   1815
         Left            =   1560
         TabIndex        =   2
         Top             =   600
         Width           =   1050
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
         Left            =   120
         MaskColor       =   &H00FFFFFF&
         Style           =   1  'Graphical
         TabIndex        =   6
         Top             =   1680
         Width           =   1335
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
         Left            =   120
         MaskColor       =   &H00FFFFFF&
         Style           =   1  'Graphical
         TabIndex        =   5
         Top             =   1320
         Width           =   1335
      End
      Begin VB.Timer pazartut 
         Left            =   3000
         Top             =   240
      End
      Begin VB.TextBox Text22 
         Height          =   285
         Left            =   1560
         TabIndex        =   3
         Text            =   "Text22"
         Top             =   360
         Width           =   375
      End
   End
   Begin VB.Frame Frame4 
      BackColor       =   &H80000004&
      Caption         =   "Upgrade Bot"
      Height          =   9735
      Left            =   20760
      TabIndex        =   145
      Top             =   360
      Width           =   2055
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
         TabIndex        =   162
         Top             =   7680
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
         TabIndex        =   159
         Top             =   7200
         Width           =   1695
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
         TabIndex        =   157
         Top             =   6720
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
         TabIndex        =   150
         Top             =   4680
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
         TabIndex        =   166
         Top             =   8760
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
         TabIndex        =   149
         Top             =   4320
         UseMaskColor    =   -1  'True
         Width           =   615
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
         TabIndex        =   164
         Top             =   8280
         Width           =   1695
      End
      Begin VB.TextBox Text6 
         Alignment       =   2  'Center
         BackColor       =   &H0080C0FF&
         Height          =   285
         Left            =   360
         TabIndex        =   168
         Text            =   "40"
         Top             =   9000
         Width           =   495
      End
      Begin VB.TextBox Text7 
         Alignment       =   2  'Center
         BackColor       =   &H0080C0FF&
         Height          =   285
         Left            =   720
         TabIndex        =   169
         Text            =   "14"
         Top             =   9000
         Width           =   495
      End
      Begin VB.TextBox Text8 
         Alignment       =   2  'Center
         BackColor       =   &H0080C0FF&
         Height          =   285
         Left            =   120
         TabIndex        =   167
         Text            =   "5"
         Top             =   9000
         Width           =   255
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
         TabIndex        =   155
         Top             =   6120
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
         TabIndex        =   153
         Top             =   5880
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
         TabIndex        =   152
         Top             =   5640
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
         TabIndex        =   151
         Top             =   5400
         Width           =   1695
      End
      Begin VB.ListBox List1 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         Height          =   5880
         Left            =   120
         TabIndex        =   147
         Top             =   480
         Width           =   1695
      End
      Begin VB.ListBox List2 
         BackColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   3960
         TabIndex        =   148
         Top             =   2160
         Width           =   975
      End
      Begin XtremeSuiteControls.PushButton PushButton9 
         Height          =   375
         Left            =   120
         TabIndex        =   165
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
         TabIndex        =   163
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
         TabIndex        =   161
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
         TabIndex        =   160
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
         TabIndex        =   158
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
         TabIndex        =   156
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
         TabIndex        =   154
         Top             =   6360
         Width           =   1695
         _Version        =   851972
         _ExtentX        =   2990
         _ExtentY        =   661
         _StockProps     =   79
         Caption         =   "U2"
         UseVisualStyle  =   -1  'True
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
         TabIndex        =   146
         Top             =   240
         Width           =   735
      End
   End
   Begin VB.Timer Tml 
      Interval        =   100
      Left            =   14640
      Top             =   7680
   End
   Begin VB.Frame Frame8 
      Caption         =   "Timers"
      Height          =   4815
      Left            =   7080
      TabIndex        =   184
      Top             =   0
      Width           =   3135
      Begin VB.Timer minor 
         Enabled         =   0   'False
         Interval        =   10
         Left            =   1680
         Top             =   3840
      End
      Begin VB.Timer intihar 
         Interval        =   100
         Left            =   1200
         Top             =   3840
      End
      Begin VB.Timer mana 
         Enabled         =   0   'False
         Interval        =   1000
         Left            =   720
         Top             =   3840
      End
      Begin VB.Timer potion 
         Enabled         =   0   'False
         Interval        =   1000
         Left            =   2160
         Top             =   3840
      End
      Begin VB.Timer Timer23 
         Interval        =   1000
         Left            =   2640
         Top             =   4320
      End
      Begin VB.Timer wartimer 
         Enabled         =   0   'False
         Interval        =   1000
         Left            =   2640
         Top             =   3840
      End
      Begin VB.Timer rAtakTimer 
         Enabled         =   0   'False
         Interval        =   850
         Left            =   1680
         Top             =   4320
      End
      Begin VB.Timer OtoZtmr 
         Enabled         =   0   'False
         Interval        =   500
         Left            =   2160
         Top             =   4320
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
      Begin VB.Timer loot 
         Interval        =   1
         Left            =   2040
         Top             =   1200
      End
      Begin VB.Timer kututopla 
         Enabled         =   0   'False
         Interval        =   100
         Left            =   1560
         Top             =   1200
      End
      Begin VB.Timer kutusýfýrla 
         Enabled         =   0   'False
         Interval        =   5000
         Left            =   1080
         Top             =   1200
      End
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
         Enabled         =   0   'False
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
         Enabled         =   0   'False
         Interval        =   850
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
         Interval        =   1000
         Left            =   120
         Top             =   240
      End
   End
   Begin VB.Timer Timer22 
      Interval        =   1000
      Left            =   14160
      Top             =   7680
   End
   Begin VB.ListBox moblist 
      Height          =   450
      Left            =   14160
      TabIndex        =   191
      Top             =   8160
      Width           =   1335
   End
   Begin VB.ListBox kutuid 
      Height          =   255
      ItemData        =   "Form1.frx":4C9D
      Left            =   14160
      List            =   "Form1.frx":4C9F
      TabIndex        =   197
      Top             =   8640
      Width           =   735
   End
   Begin VB.ListBox invlist 
      Height          =   255
      Left            =   14880
      TabIndex        =   200
      Top             =   8880
      Width           =   735
   End
   Begin VB.TextBox charad 
      Height          =   285
      Left            =   14880
      TabIndex        =   198
      Text            =   "char ad"
      Top             =   8640
      Width           =   735
   End
   Begin VB.TextBox Text2 
      BackColor       =   &H0080C0FF&
      Height          =   285
      Left            =   26280
      TabIndex        =   188
      Text            =   "500"
      Top             =   6840
      Width           =   495
   End
   Begin VB.CheckBox Check1 
      BackColor       =   &H0080C0FF&
      Caption         =   "SC Tazele Aktif"
      Height          =   255
      Index           =   0
      Left            =   23640
      TabIndex        =   186
      Top             =   6840
      Width           =   1455
   End
   Begin VB.TextBox Text10 
      Height          =   1335
      Left            =   22920
      TabIndex        =   183
      Text            =   "Text10"
      Top             =   4920
      Width           =   3975
   End
   Begin SHDocVwCtl.WebBrowser WebBrowser1 
      Height          =   1575
      Left            =   22920
      TabIndex        =   196
      Top             =   7200
      Width           =   1095
      ExtentX         =   1931
      ExtentY         =   2778
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
      Height          =   255
      Left            =   25080
      Style           =   1  'Graphical
      TabIndex        =   187
      Top             =   6840
      Width           =   1215
   End
   Begin VB.CommandButton Command4 
      BackColor       =   &H0080C0FF&
      Caption         =   "BAÞLAT"
      Enabled         =   0   'False
      Height          =   255
      Left            =   22560
      Style           =   1  'Graphical
      TabIndex        =   185
      Top             =   6840
      Width           =   975
   End
   Begin VB.TextBox Text5 
      Height          =   285
      Left            =   14160
      TabIndex        =   199
      Text            =   "Text5"
      Top             =   8880
      Width           =   735
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00FFC0C0&
      Height          =   615
      Index           =   4
      Left            =   22920
      TabIndex        =   181
      Top             =   2280
      Width           =   3975
      Begin VB.CheckBox Check2 
         BackColor       =   &H00FFC0C0&
         Caption         =   "+6 Da Oyundan Çýkma(Direkt 7 ye At)"
         Height          =   255
         Left            =   120
         TabIndex        =   182
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
      Left            =   22920
      TabIndex        =   179
      Top             =   1680
      Width           =   3975
      Begin VB.ComboBox Combo4 
         BackColor       =   &H0080C0FF&
         Height          =   315
         ItemData        =   "Form1.frx":4CA1
         Left            =   120
         List            =   "Form1.frx":4CCC
         Style           =   2  'Dropdown List
         TabIndex        =   180
         Top             =   240
         Width           =   1935
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00FFC0C0&
      Caption         =   "Oyun Dizin - ID Þifre - Server bilgileri"
      Height          =   1335
      Index           =   0
      Left            =   22920
      TabIndex        =   170
      Top             =   360
      Width           =   3975
      Begin VB.ComboBox Combo3 
         BackColor       =   &H0080C0FF&
         Height          =   315
         ItemData        =   "Form1.frx":4DF5
         Left            =   2280
         List            =   "Form1.frx":4DFF
         Style           =   2  'Dropdown List
         TabIndex        =   178
         Top             =   960
         Width           =   1215
      End
      Begin VB.ComboBox Combo2 
         BackColor       =   &H0080C0FF&
         Height          =   315
         ItemData        =   "Form1.frx":4E09
         Left            =   720
         List            =   "Form1.frx":4E10
         Style           =   2  'Dropdown List
         TabIndex        =   176
         Top             =   960
         Width           =   1575
      End
      Begin VB.TextBox Text4 
         BackColor       =   &H0080C0FF&
         Height          =   285
         Left            =   2400
         TabIndex        =   175
         Top             =   600
         Width           =   1455
      End
      Begin VB.TextBox Text3 
         BackColor       =   &H0080C0FF&
         Height          =   285
         Left            =   840
         TabIndex        =   173
         Top             =   600
         Width           =   1455
      End
      Begin VB.TextBox Text1 
         BackColor       =   &H0080C0FF&
         Height          =   285
         Left            =   120
         TabIndex        =   171
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
         TabIndex        =   177
         Top             =   960
         Width           =   495
      End
      Begin VB.Label Label2 
         BackColor       =   &H00FFC0C0&
         Caption         =   "Þifre"
         Height          =   255
         Index           =   1
         Left            =   1920
         TabIndex        =   174
         Top             =   600
         Width           =   615
      End
      Begin VB.Label Label2 
         BackColor       =   &H00FFC0C0&
         Caption         =   "ID"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   172
         Top             =   600
         Width           =   375
      End
   End
   Begin XtremeSuiteControls.FlatEdit FlatEdit2 
      Height          =   255
      Left            =   14400
      TabIndex        =   201
      Top             =   9360
      Width           =   2415
      _Version        =   851972
      _ExtentX        =   4260
      _ExtentY        =   450
      _StockProps     =   77
      BackColor       =   -2147483643
      Text            =   "C:/"
   End
   Begin XtremeSuiteControls.ComboBox ComboBox2 
      Height          =   315
      Left            =   19320
      TabIndex        =   133
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
      Left            =   10320
      TabIndex        =   137
      Top             =   120
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
         TabIndex        =   144
         Top             =   1680
         Width           =   1335
      End
      Begin VB.Label Label17 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Label17"
         Height          =   240
         Left            =   120
         TabIndex        =   143
         Top             =   1440
         Width           =   1335
      End
      Begin VB.Label Label12 
         AutoSize        =   -1  'True
         BackColor       =   &H00C0FFFF&
         Caption         =   "DusmanID2"
         Height          =   195
         Left            =   600
         TabIndex        =   140
         Top             =   480
         Width           =   840
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackColor       =   &H00C0FFFF&
         Caption         =   "MobY"
         Height          =   195
         Left            =   120
         TabIndex        =   141
         Top             =   480
         Width           =   420
      End
      Begin VB.Label Label5 
         BackColor       =   &H00C0FFFF&
         Caption         =   "PT Bilgi"
         Height          =   375
         Left            =   120
         TabIndex        =   142
         Top             =   960
         Width           =   1335
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         BackColor       =   &H00C0FFFF&
         Caption         =   "Mobx"
         Height          =   195
         Left            =   120
         TabIndex        =   138
         Top             =   240
         Width           =   390
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         BackColor       =   &H00C0FFFF&
         Caption         =   "DusmanID"
         Height          =   195
         Left            =   600
         TabIndex        =   139
         Top             =   240
         Width           =   750
      End
   End
   Begin XtremeSuiteControls.GroupBox GroupBox3 
      Height          =   2175
      Left            =   10320
      TabIndex        =   193
      Top             =   2160
      Width           =   1695
      _Version        =   851972
      _ExtentX        =   2990
      _ExtentY        =   3836
      _StockProps     =   79
      Caption         =   "Genel"
      UseVisualStyle  =   -1  'True
      Begin XtremeSuiteControls.CheckBox CheckBox7 
         Height          =   255
         Left            =   120
         TabIndex        =   195
         Top             =   1680
         Width           =   975
         _Version        =   851972
         _ExtentX        =   1720
         _ExtentY        =   450
         _StockProps     =   79
         Caption         =   "Loot v1"
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
      Begin XtremeSuiteControls.CheckBox CheckAuto 
         Height          =   255
         Left            =   120
         TabIndex        =   194
         Top             =   1440
         Width           =   1095
         _Version        =   851972
         _ExtentX        =   1931
         _ExtentY        =   450
         _StockProps     =   79
         Caption         =   "Loot Hook"
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
   End
   Begin XtremeSuiteControls.TabControl TabControl3 
      Height          =   2655
      Left            =   0
      TabIndex        =   134
      Top             =   6240
      Width           =   2175
      _Version        =   851972
      _ExtentX        =   3836
      _ExtentY        =   4683
      _StockProps     =   68
      Appearance      =   2
      PaintManager.Position=   2
      PaintManager.BoldSelected=   -1  'True
      ItemCount       =   3
      Item(0).Caption =   "Archer"
      Item(0).ControlCount=   2
      Item(0).Control(0)=   "Check6"
      Item(0).Control(1)=   "Check4"
      Item(1).Caption =   "Warrior"
      Item(1).ControlCount=   0
      Item(2).Caption =   "Priest"
      Item(2).ControlCount=   0
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
         Left            =   120
         MaskColor       =   &H00C0FFFF&
         TabIndex        =   136
         Top             =   1200
         Width           =   975
      End
      Begin VB.CheckBox Check4 
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
         Height          =   1065
         Left            =   120
         MaskColor       =   &H00C0FFFF&
         Style           =   1  'Graphical
         TabIndex        =   135
         Top             =   120
         Width           =   1335
      End
   End
   Begin XtremeSuiteControls.CommonDialog ComD 
      Left            =   14040
      Top             =   9360
      _Version        =   851972
      _ExtentX        =   423
      _ExtentY        =   423
      _StockProps     =   4
   End
   Begin VB.Label Label8 
      BackColor       =   &H80000004&
      Caption         =   "http://agsystems.xyz/aguyelik"
      Height          =   255
      Left            =   22680
      TabIndex        =   202
      Top             =   12000
      Width           =   4695
   End
   Begin VB.Label Label3 
      BackColor       =   &H0080C0FF&
      Caption         =   "9"
      Height          =   255
      Left            =   26880
      TabIndex        =   189
      Top             =   6840
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
Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hwnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
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

'43 WORM QUEST DECTOHEX = QUEST_HELPER.tbl sütun 1

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





Private Sub Command19_Click()
ItemleriAl
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
On Error Resume Next
YukarýdaTut Me, True
x$ = 0
Dim qw As Integer
For qw = 0 To 20
If ReadINI("MTRX", x$, App.Path & "\pazartut.ini") <> "" Then
List5.AddItem ReadINI("MTRX", x$, App.Path & "\pazartut.ini")
x$ = x$ + 1
End If
Next
Combo1.ListIndex = 0
Combo2.ListIndex = 0
Combo3.ListIndex = 0
Combo4.ListIndex = 0
'Quests


'WebBrowser1.Navigate "about:blank"
'WebBrowser1.Navigate "http://www.agsystems.xyz"
Manapottime = 1
Canpottime = 1
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



Private Sub GroupBox6_MouseDown(Button As Integer, Shift As Integer, x As Single, Y As Single)

End Sub

Private Sub intihar_Timer()
If Check13.value = 1 Then
If KarakterHP < ((KarakterMaxHP * Text17.Text) / 100) Then
Paket "290103"
Paket "1200"
End If
End If
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




Private Sub ListView1_BeforeLabelEdit(Cancel As Integer)

End Sub

Private Sub kututopla_Timer()
DispatchMailSlot

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
End Sub

Private Sub PushButton12_Click()

If questlist.Selected(0) Then
'Paket "640742000000"
Paket "2001" + MobID + "FFFFFFFF"
Paket "640732000000" 'Worm QUEST COMPLETE             'görev verme ekraný aç /worm
Paket "55001031333031335F5061747269632E6C7561FF"  'Worm COMPLETE NPC_SAY           'görevi ver /worm
Paket "55001031343433325F436865696E612E6C7561FF"
End If
If questlist.Selected(1) Then
Paket "2001" + MobID + "FFFFFFFF"

Paket "640742000000" 'Worm QUEST COMPLETE             'görev verme ekraný aç /worm
Paket "55001031333031335F5061747269632E6C7561FF"  'Worm COMPLETE NPC_SAY           'görevi ver /worm
End If

If questlist.Selected(2) Then
Paket "2001" + CharId + "FFFFFFFF"
Paket "6407FD0C0000" ' Kekoon QUEST COMPLETE             'görev verme ekraný aç /worm
Paket "55001031333031335F5061747269632E6C756102"  'Worm COMPLETE NPC_SAY           'görevi ver /worm
End If

If questlist.Selected(3) Then
Paket "2001" & MobID & "FFFFFFFF" 'Bulcan Ver
Paket "6407070D0000"
Paket "55001031333031335F5061747269632E6C756101"

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

Private Sub PushButton34_Click()
qlist.ListItems.Clear
End Sub

Private Sub PushButton36_Click()
    On Error Resume Next
    AttachKO
    Timer22.Enabled = True
   ' Shell "tskill 98546dfkgjs.exe"
   ' Shell "tskill 98546dfkgjs.tmp"
   ' Kill "tskill 98546dfkgjs.exe"
   ' Kill "tskill 98546dfkgjs.tmp"
   ' TerminateProcess2 ("98546dfkgjs.exe")
   ' TerminateProcess2 ("98546dfkgjs.tmp")
On Error Resume Next
    OffsetleriYükle
    Picture1.BackColor = &HFF00&
    InventoryOku
    Label666.Caption = CharId
    codebytes = VirtualAllocEx(KO_HANDLE, 0, 1024, MEM_COMMIT, &H40)
    packetbytes = VirtualAllocEx(KO_HANDLE, 0, 1024, MEM_COMMIT, &H40)
    'InjectPatch KO_BYPASS_ADR3, "EB23"
End Sub

Private Sub PushButton4_Click()
ItemleriAl
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





Private Sub questlist_Click()
Dim li As ListItem


If questlist.Selected(0) Then
With qlist
qlist.ListItems.Clear
Set li = .ListItems.add(, , "   1")
li.SubItems(1) = "Hunt 5 worms"
li.SubItems(2) = "50 XP, 2000Coin, 10Holy Water, 5Potion of spirit"

End With
End If

If questlist.Selected(1) Then
qlist.ListItems.Clear
Set li = qlist.ListItems.add(, , "   1")
li.SubItems(1) = "Hunt 5 bandicoot"
li.SubItems(2) = "375 XP, 2.700Coin"
End If

If questlist.Selected(2) Then
qlist.ListItems.Clear
Set li = qlist.ListItems.add(, , "   1")
li.SubItems(1) = "Hunt 5 kekoon"
li.SubItems(2) = "1875 XP, 2.000Coin, +5 Ring"
End If

If questlist.Selected(3) Then
qlist.ListItems.Clear
Set li = qlist.ListItems.add(, , "   3")
li.SubItems(1) = "Hunt 5 bulcan"
li.SubItems(2) = "3500 XP, 2.000Coin, +5 Armor"
End If
End Sub

Private Sub rAtakTimer_Timer()
If MobID = "FFFF" Then
Else
Paket "3101" & Strings.Mid(AlignDWORD(CharClass & "515"), 1, 6) & "00" & KarakterID & MobID & "00000000000000000000000000000D00"
End If
End Sub



Private Sub SpeedHack_Timer()

If GetAsyncKeyState(vbKeyG) Then
Runner MouseX, MouseY
End If
End Sub

Private Sub Timer1_Timer()
        
    InjectPatch KO_BYPASS_ADR1, "E9D900000090"
    CharName
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
'AsasAtak
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
Label666.Caption = CharId
Label22.Caption = MobID
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

Private Sub Timer31_Timer()
sekizliok
End Sub






Public Function kayitet()
On Error Resume Next
x$ = 0
Dim qw As Integer
Kill App.Path & "pazartut.ini"
For qw = 0 To List5.ListCount
Call WriteINI("MTRX", x$, List5.List(x$), App.Path & "pazartut.ini")
x$ = x$ + 1
Next
End Function

Public Function tut()
Dim x As Integer
For x = 0 To List5.ListCount - 1
Paket "6802"
Paket "6805" + List5.List(x)
Bekle (1.5)
If x = List5.ListCount - 1 Then Text22 = "1"
Next
End Function




Private Sub Timer6_Timer()
Text25.Text = CharClass

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
lPara.Caption = Format(ReadLong(ReadLong(KO_PTR_CHR, val(T1(0))) + 2924, val(T1(0))), "###,###") & " Coins"
Label19.Caption = ReadLong(KO_ADR_CHR + KO_OFF_LVL)
ProgressBar1.Max = ReadLong(KO_ADR_CHR + KO_OFF_MAXEXP)
ProgressBar1.value = ReadLong(KO_ADR_CHR + KO_OFF_EXP)
ProgressBar1.Text = ProgressBar1.value & "/" & ProgressBar1.Max
'Label20.Caption = ReadLong(KO_ADR_CHR + KO_OFF_EXP)
Label21.Caption = SýnýfBul
Label23.Caption = ReadFloat(KO_ADR_CHR + KO_OFF_X)
Label9.Caption = ReadFloat(KO_ADR_CHR + KO_OFF_Y)
''Follow Start''

''Follow End''
End Sub

Private Sub wartimer_Timer()
WarriorAtakVur
End Sub

Private Sub zaman_Timer()
    Süre = Süre - 1
    Label3.Caption = Label3.Caption - 1
End Sub
