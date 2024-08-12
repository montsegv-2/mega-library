Attribute VB_Name = "dataBase"

Option Explicit

Public Con As ADODB.Connection

Public Sub AbrirConexion()
    On Error GoTo ErrorHandler
    
    Set Con = New ADODB.Connection
    
    Con.Open "Driver={SQL Server}; Server= ; Database= ; User Id= ; Password= ;"
    
    Exit Sub

ErrorHandler:
    MsgBox "Error al abrir la conexión: " & Err.Description
    If Not Con Is Nothing Then
        If Con.State = adStateOpen Then Con.Close
        Set Con = Nothing
    End If
End Sub

Public Sub CerrarConexion()
    If Not Con Is Nothing Then
        If Con.State = adStateOpen Then Con.Close
        Set Con = Nothing
    End If
End Sub