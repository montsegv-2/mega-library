VERSION 5.00
Begin VB.Form AddBook 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Agregar nuevo libro"
   ClientHeight    =   6840
   ClientLeft      =   7950
   ClientTop       =   2595
   ClientWidth     =   9690
   LinkTopic       =   "Form2"
   ScaleHeight     =   6840
   ScaleWidth      =   9690
   Begin VB.CommandButton cmdVolver 
      Caption         =   "Volver "
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
      Left            =   240
      TabIndex        =   12
      Top             =   360
      Width           =   1935
   End
   Begin VB.CommandButton cmdAgregarLibro 
      Caption         =   "Agregar libro a mi biblioteca"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2760
      TabIndex        =   11
      Top             =   5640
      Width           =   5055
   End
   Begin VB.TextBox textRating 
      Height          =   495
      Left            =   3120
      TabIndex        =   10
      Top             =   4440
      Width           =   1695
   End
   Begin VB.TextBox textDescrip 
      Height          =   495
      Left            =   3120
      TabIndex        =   8
      Top             =   3720
      Width           =   4935
   End
   Begin VB.TextBox textGenero 
      Height          =   495
      Left            =   3120
      TabIndex        =   5
      Top             =   3000
      Width           =   4935
   End
   Begin VB.TextBox textAutor 
      Height          =   495
      Left            =   3120
      TabIndex        =   3
      Top             =   2280
      Width           =   4935
   End
   Begin VB.TextBox textTitulo 
      BeginProperty Font 
         Name            =   "Segoe MDL2 Assets"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3120
      TabIndex        =   1
      Top             =   1560
      Width           =   4935
   End
   Begin VB.Label labelRating 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Rating"
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
      Left            =   1560
      TabIndex        =   9
      Top             =   4560
      Width           =   1575
   End
   Begin VB.Label labelDescrip 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Descripcion"
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
      Left            =   1560
      TabIndex        =   7
      Top             =   3720
      Width           =   1575
   End
   Begin VB.Label Label1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Agregar nuevo libro"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   22.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   2880
      TabIndex        =   6
      Top             =   600
      Width           =   4815
   End
   Begin VB.Label labelGenero 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Genero"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1560
      TabIndex        =   4
      Top             =   3120
      Width           =   1095
   End
   Begin VB.Label labelAutor 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Autor"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1560
      TabIndex        =   2
      Top             =   2400
      Width           =   1095
   End
   Begin VB.Label labelTitulo 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Titulo"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1560
      TabIndex        =   0
      Top             =   1680
      Width           =   1095
   End
End
Attribute VB_Name = "addBook"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdAddBook_Click()
    Dim newBook As New Libro
    newBook.Titulo = textTitulo.Text
    newBook.Autor = textAutor.Text
    newBook.Genero = textGenero.Text
    newBook.Portada = imgPortada.Picture
    

    
End Sub

Private Sub Form_Load()
    With listBook
        .View = lvwReport
            .ColumnHeaders.Add , , "Titulo"
            .ColumnHeaders.Add , , "Autor"
            .ColumnHeaders.Add , , "Genero"
    End With
    
End Sub

