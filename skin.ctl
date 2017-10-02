VERSION 5.00
Begin VB.UserControl UserControl1 
   ClientHeight    =   5325
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   7005
   ScaleHeight     =   5325
   ScaleWidth      =   7005
   Begin VB.PictureBox shape3 
      AutoSize        =   -1  'True
      BackColor       =   &H80000010&
      BorderStyle     =   0  'None
      Height          =   375
      Left            =   4920
      ScaleHeight     =   375
      ScaleWidth      =   495
      TabIndex        =   4
      Top             =   0
      Width           =   495
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "_"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   240
         TabIndex        =   11
         Top             =   0
         Width           =   120
      End
   End
   Begin VB.PictureBox shape2 
      AutoSize        =   -1  'True
      BackColor       =   &H80000010&
      BorderStyle     =   0  'None
      Height          =   375
      Left            =   5400
      ScaleHeight     =   375
      ScaleWidth      =   495
      TabIndex        =   3
      Top             =   0
      Width           =   495
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "A"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   180
         Left            =   120
         TabIndex        =   10
         Top             =   120
         Width           =   210
      End
   End
   Begin VB.PictureBox shape1 
      AutoSize        =   -1  'True
      BackColor       =   &H80000010&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5760
      ScaleHeight     =   375
      ScaleWidth      =   375
      TabIndex        =   2
      Top             =   0
      Width           =   375
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "x"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   120
         TabIndex        =   9
         Top             =   0
         Width           =   135
      End
   End
   Begin VB.Label lblBotom 
      BackColor       =   &H80000010&
      Height          =   75
      Left            =   0
      TabIndex        =   8
      Top             =   3600
      Width           =   1215
   End
   Begin VB.Label lblSide2 
      BackColor       =   &H80000010&
      Height          =   2655
      Left            =   0
      TabIndex        =   7
      Top             =   0
      Width           =   75
   End
   Begin VB.Label lblSide1 
      BackColor       =   &H80000010&
      Height          =   3975
      Left            =   6360
      TabIndex        =   6
      Top             =   0
      Width           =   75
   End
   Begin VB.Label lblTitle 
      BackColor       =   &H80000010&
      Caption         =   "ASKoxp"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   45
      Width           =   4815
   End
   Begin VB.Label lblTit 
      BackColor       =   &H80000010&
      Height          =   375
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   6375
   End
   Begin VB.Label lblForm 
      BackColor       =   &H00E0E0E0&
      Height          =   615
      Left            =   240
      TabIndex        =   5
      Top             =   720
      Width           =   1455
   End
End
Attribute VB_Name = "UserControl1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'''''''''''''''''''''
'created by yair aichenbaum'
'you can only modify if you keep my name in it'
'it is against the law to modify or change the code without giving credit to the author!'
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'''    '''      ''''''
'''    '''     ''''''''
'''    '''    '''    '''
'''    '''   '''      '''
  '''''     '''        '''
   '''      ''''''''''''''
   '''      ''''''''''''''
   '''      '''        '''
   '''      '''        '''
   '''      '''        '''
   ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
Option Explicit
 
Private Declare Function ReleaseCapture Lib "user32" () As Long
Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
 
Private Const HTCAPTION = 2
Private Const WM_NCLBUTTONDOWN = &HA1
 
Private Const WM_SYSCOMMAND = &H112

Private Const LWA_COLORKEY = &H1
Private Const LWA_ALPHA = &H2
Private Const GWL_EXSTYLE = (-20)
Private Const WS_EX_LAYERED = &H80000

Private Declare Function GetWindowLong Lib "user32" Alias "GetWindowLongA" _
    (ByVal hwnd As Long, ByVal nIndex As Long) As Long
Private Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongA" _
    (ByVal hwnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long
Private Declare Function SetLayeredWindowAttributes Lib "user32" _
    (ByVal hwnd As Long, ByVal crKey As Long, ByVal bAlpha As Byte, ByVal dwFlags As Long) As Long
    
    Private Declare Function ShellExecute _
                            Lib "shell32.dll" _
                            Alias "ShellExecuteA" ( _
                            ByVal hwnd As Long, _
                            ByVal lpOperation As String, _
                            ByVal lpFile As String, _
                            ByVal lpParameters As String, _
                            ByVal lpDirectory As String, _
                            ByVal nShowCmd As Long) _
                            As Long


    Dim lR As Long
    Dim mamin As Integer
    Dim widt As Integer
    Dim heigh As Integer

Private Sub Label1_Click()
Unload UserControl.Parent
shape1.BackColor = &H80000010
shape2.BackColor = &H80000010
shape3.BackColor = &H80000010
End Sub

Private Sub Label2_Click()
If mamin = 0 Then
UserControl.Width = Screen.Width
UserControl.Height = Screen.Height
UserControl.Parent.Width = UserControl.Width
UserControl.Parent.Height = UserControl.Height
UserControl.Parent.Top = UserControl.ScaleTop
UserControl.Parent.Left = UserControl.ScaleLeft
mamin = 1
Else
UserControl.Width = widt
UserControl.Height = heigh
UserControl.Parent.Width = UserControl.Width
UserControl.Parent.Height = UserControl.Height
UserControl.Parent.Top = UserControl.ScaleTop
UserControl.Parent.Left = UserControl.ScaleLeft
mamin = 0
End If
End Sub

Private Sub Label3_Click()
UserControl.Parent.WindowState = 1
End Sub

Private Sub lblForm_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
shape1.BackColor = &H80000010
shape2.BackColor = &H80000010
shape3.BackColor = &H80000010
End Sub

Private Sub lblSide1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
shape1.BackColor = &H80000010
shape2.BackColor = &H80000010
shape3.BackColor = &H80000010
End Sub

Private Sub lblTit_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
'make the form dragable even though there is no frame or border on it.
    ReleaseCapture
    SendMessage UserControl.ContainerHwnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
End Sub

Private Sub lblTitle_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
'make the form dragable even though there is no frame or border on it.
    ReleaseCapture
    SendMessage UserControl.ContainerHwnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
End Sub

Private Sub lblTitle_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
shape1.BackColor = &H80000010
shape2.BackColor = &H80000010
shape3.BackColor = &H80000010
End Sub

Private Sub shape1_Click()
Unload UserControl.Parent
shape1.BackColor = &H80000010
shape2.BackColor = &H80000010
shape3.BackColor = &H80000010
End Sub

Private Sub shape3_Click()
UserControl.Parent.WindowState = 1
End Sub

Private Sub shape3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
shape3.BackColor = &H8000000C
shape1.BackColor = &H80000010
shape2.BackColor = &H80000010
End Sub

Private Sub shape2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
shape2.BackColor = &H8000000C
shape1.BackColor = &H80000010
shape3.BackColor = &H80000010
End Sub

Private Sub shape1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
shape1.BackColor = &H8000000C
shape2.BackColor = &H80000010
shape3.BackColor = &H80000010
End Sub

Private Sub UserControl_Initialize()
UserControl_Resize
mamin = 0
widt = UserControl.ScaleWidth
heigh = UserControl.ScaleHeight
End Sub

Private Sub UserControl_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
shape1.BackColor = &H80000010
shape2.BackColor = &H80000010
shape3.BackColor = &H80000010
End Sub

Private Sub UserControl_Resize()
lblTitle.Width = UserControl.Width
lblTit.Width = UserControl.Width
shape1.Left = UserControl.Width - shape1.Width - 75
shape2.Left = UserControl.Width - shape1.Width - shape2.Width - 75
shape3.Left = UserControl.Width - shape1.Width - shape2.Width - shape3.Width - 75
lblForm.Top = UserControl.ScaleTop
lblForm.Left = UserControl.ScaleLeft
lblForm.Width = UserControl.Width
lblForm.Height = UserControl.ScaleHeight
lblSide1.Height = UserControl.ScaleHeight
lblSide1.Left = UserControl.Width - lblSide1.Width
lblSide1.Height = UserControl.ScaleHeight
lblSide2.Height = UserControl.ScaleHeight
lblBotom.Width = UserControl.Width
lblBotom.Top = UserControl.ScaleHeight - lblBotom.Height
Label1.Top = UserControl.ScaleTop + 1
Label2.Top = UserControl.ScaleTop + 70
Label3.Top = UserControl.ScaleTop + 1
End Sub
'''''''''''''''''''''
'created by yair aichenbaum'
'you can only modify if you keep my name in it'
'it is against the law to modify or change the code without giving credit to the author!'
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'''    '''      ''''''
'''    '''     ''''''''
'''    '''    '''    '''
'''    '''   '''      '''
  '''''     '''        '''
   '''      ''''''''''''''
   '''      ''''''''''''''
   '''      '''        '''
   '''      '''        '''
   '''      '''        '''
   ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
