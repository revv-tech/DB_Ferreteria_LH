Imports System.Data
Imports System.Data.SqlClient



Public Class frmFacturasXLocal1
    Private Sub Local_btn_Click(sender As Object, e As EventArgs) Handles Local_btn.Click
        If (LocalCbx.Text <> "") Then
            'Crea instancia de la variable'
            sqlCon = New SqlConnection(conn)


            sqlCon.Open()
            Dim cmd As New SqlCommand("sp_FacturaXLocal", sqlCon)
            'Tipo de comando'
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.AddWithValue("@LocalID", LocalCbx.SelectedValue)

            'Resultado de lo que se trae de la tabla'
            Dim dt As DataTable = New DataTable()
            'Llena el data table con la informacion que captura el sql adapter con el sp'
            dt.Load(cmd.ExecuteReader())
            Me.ProductosXLocal_dt.DataSource = dt
            sqlCon.Close()


        End If
    End Sub
    Sub llenarComboLocales()

        'Permite conexion a base de datos'
        Dim sqlad As SqlDataAdapter
        'Resultado de lo que se trae de la tabla'
        Dim dt As DataTable
        'Crea instancia de la variable'
        sqlCon = New SqlConnection(conn)

        Using (sqlCon)

            Dim sqlComm As New SqlCommand()
            'se hace la referencia a la conexión con la bd'
            sqlComm.Connection = sqlCon
            'se indica el nombre del stored procedure y el tipo'
            sqlComm.CommandText = "sp_SeleccionarLocales" '
            'Tipo de comando'
            sqlComm.CommandType = CommandType.StoredProcedure
            sqlad = New SqlDataAdapter(sqlComm)
            dt = New DataTable("Datos")
            'Llena el data table con la informacion que captura el sql adapter con el sp'
            sqlad.Fill(dt)
            Me.LocalCbx.DataSource = dt
            'DisplayMember: Lo que se va a mostrar al usuario'
            Me.LocalCbx.DisplayMember = "Nombre"
            'ValueMember: Codigo que va enrrolado'
            Me.LocalCbx.ValueMember = "LocalID"
            Me.LocalCbx.SelectedIndex = -1

        End Using

    End Sub

    Private Sub frmFacturasXLocal1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        llenarComboLocales()
    End Sub
End Class