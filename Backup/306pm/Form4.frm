VERSION 5.00
Begin VB.Form Form4 
   Caption         =   "Form4"
   ClientHeight    =   3135
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   4680
   LinkTopic       =   "Form4"
   ScaleHeight     =   3135
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame8 
      Caption         =   "Ot-o Ku-tu"
      Height          =   1095
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   2175
      Begin VB.Timer kutusýfýrla 
         Enabled         =   0   'False
         Interval        =   5000
         Left            =   600
         Top             =   240
      End
      Begin VB.ListBox box_z 
         Height          =   255
         Left            =   1560
         TabIndex        =   5
         Top             =   720
         Width           =   495
      End
      Begin VB.ListBox box_target 
         Height          =   255
         Left            =   120
         TabIndex        =   4
         Top             =   720
         Width           =   495
      End
      Begin VB.ListBox box_x 
         Height          =   255
         Left            =   600
         TabIndex        =   3
         Top             =   720
         Width           =   495
      End
      Begin VB.ListBox box_y 
         Height          =   255
         Left            =   1080
         TabIndex        =   2
         Top             =   720
         Width           =   495
      End
      Begin VB.ListBox box_uzaklýk 
         Height          =   255
         Left            =   1080
         TabIndex        =   1
         Top             =   360
         Width           =   495
      End
      Begin VB.Timer kututopla 
         Interval        =   500
         Left            =   120
         Top             =   240
      End
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
