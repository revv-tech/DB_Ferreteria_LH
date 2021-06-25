Imports System.Data
Imports System.Data.SqlClient


Public Class frmBitacora
    Private Sub Bitacora_Click(sender As Object, e As EventArgs) Handles Bitacora.Click

        'Crea instancia de la variable'
        sqlCon = New SqlConnection(conn)


        sqlCon.Open()
        Dim cmd As New SqlCommand("sp_SeleccionarBitacora", sqlCon)
        'Tipo de comando'
        cmd.CommandType = CommandType.StoredProcedure


        'Resultado de lo que se trae de la tabla'
        Dim dt As DataTable = New DataTable()
        'Llena el data table con la informacion que captura el sql adapter con el sp'
        dt.Load(cmd.ExecuteReader())
        Me.ProductosXLocal_dt.DataSource = dt
        sqlCon.Close()

    End Sub
End Class