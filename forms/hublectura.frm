VERSION 5.00
Begin VB.Form hublectura 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Hub de lectura"
   ClientHeight    =   9300
   ClientLeft      =   225
   ClientTop       =   870
   ClientWidth     =   15825
   LinkTopic       =   "Form1"
   ScaleHeight     =   9300
   ScaleWidth      =   15825
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      Height          =   405
      Left            =   840
      TabIndex        =   9
      Top             =   600
      Width           =   3135
   End
   Begin VB.CommandButton Command4 
      BackColor       =   &H80000011&
      Caption         =   "Eliminar libro"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   12720
      TabIndex        =   8
      Top             =   2040
      Width           =   1815
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Generos favoritos"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   12720
      TabIndex        =   7
      Top             =   6360
      Width           =   1815
   End
   Begin VB.CommandButton cmdAgregarNuevo 
      Caption         =   "Agregar nuevo"
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
      Left            =   12240
      TabIndex        =   6
      Top             =   480
      Width           =   2415
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Libros descartados"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   12720
      TabIndex        =   5
      Top             =   5280
      Width           =   1815
   End
   Begin VB.CommandButton cmdWishlist 
      Caption         =   "Mi lista de deseos"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   12720
      TabIndex        =   4
      Top             =   4200
      Width           =   1815
   End
   Begin VB.CommandButton cmdLeidos 
      Caption         =   "Libros leidos"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   12720
      TabIndex        =   3
      Top             =   3120
      Width           =   1815
   End
   Begin VB.ListBox listBook 
      Height          =   5520
      Left            =   840
      TabIndex        =   0
      Top             =   1800
      Width           =   11535
   End
   Begin VB.Label Label3 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Buscar"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   840
      TabIndex        =   10
      Top             =   240
      Width           =   3735
   End
   Begin VB.Label Label2 
      BackColor       =   &H00C0FFFF&
      Caption         =   "MegaLibrary"
      BeginProperty Font 
         Name            =   "Yu Gothic"
         Size            =   36
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   5760
      TabIndex        =   2
      Top             =   360
      Width           =   4455
   End
   Begin VB.Label Label1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Catalogo de libros MEGA"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   840
      TabIndex        =   1
      Top             =   1440
      Width           =   3735
   End
   Begin VB.Menu library 
      Caption         =   "Libreria"
      Begin VB.Menu books 
         Caption         =   "Ver mis  libros"
      End
   End
   Begin VB.Menu mybooks 
      Caption         =   "Mis libros"
      Begin VB.Menu readingBook 
         Caption         =   "Libros leidos"
      End
      Begin VB.Menu wishlist 
         Caption         =   "Lista de deseos"
      End
      Begin VB.Menu discardBook 
         Caption         =   "Libros descartados"
      End
      Begin VB.Menu favgenres 
         Caption         =   "Generos favoritos"
      End
   End
   Begin VB.Menu exit 
      Caption         =   "Salir"
      Begin VB.Menu logout 
         Caption         =   "Salir"
      End
   End
End
Attribute VB_Name = "hublectura"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub cmdAgregarNuevo_Click()
    ' Mostrar el formulario
    addBook.Show
End Sub


Private Sub Command4_Click()
    If List1.ListIndex > -1 Then
        ' Código para eliminar el libro de la base de datos
        List1.RemoveItem List1.ListIndex
    End If
    
End Sub
