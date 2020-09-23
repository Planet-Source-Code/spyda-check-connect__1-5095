VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form Connect 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Connection test"
   ClientHeight    =   1995
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   2970
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "Connect.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   1995
   ScaleWidth      =   2970
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Quit"
      Height          =   375
      Left            =   120
      TabIndex        =   2
      Top             =   1440
      Width           =   2775
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   120
      Top             =   840
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.TextBox Text1 
      Alignment       =   2  'Center
      BackColor       =   &H80000000&
      BorderStyle     =   0  'None
      Height          =   285
      Left            =   120
      TabIndex        =   1
      Top             =   960
      Width           =   2775
   End
   Begin VB.Label Label1 
      Caption         =   "The easiest way of checking if you're connected to the internet, so stupid I laughed :P"
      Height          =   735
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   2895
   End
End
Attribute VB_Name = "Connect"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Unload Me
End
End Sub

Private Sub Form_Load()
Left = (Screen.Width - Width) \ 2
Top = (Screen.Height - Height) \ 2
If Winsock1.LocalIP = "127.0.0.1" Then
Text1.Text = "Not connected"
Else
Text1.Text = "Connected"
End If
End Sub
