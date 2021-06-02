Imports System.Data
Imports System.Data.SqlClient

Public Class frmProductos

    Dim ep As New Propiedades
    Dim func As New Funciones

    Private Sub frmProductos_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        'Se coloca ahi el metodo para llamarlo cuando el formulario cargue'
        llenarComboCategorias()
        CenterToScreen()
    End Sub

    Private Sub SalirButton_Click(sender As Object, e As EventArgs) Handles SalirButton.Click
        Me.Close()
    End Sub

    Sub llenarComboCategorias()

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
            sqlComm.CommandText = "sp_SeleccionarCategorias" '
            'Tipo de comando'
            sqlComm.CommandType = CommandType.StoredProcedure
            sqlad = New SqlDataAdapter(sqlComm)
            dt = New DataTable("Datos")
            'Llena el data table con la informacion que captura el sql adapter con el sp'
            sqlad.Fill(dt)
            Me.CategoriaCbx.DataSource = dt
            'DisplayMember: Lo que se va a mostrar al usuario'
            Me.CategoriaCbx.DisplayMember = "NombreCategoria"
            'ValueMember: Codigo que va enrrolado'
            Me.CategoriaCbx.ValueMember = "CategoriaID"
            Me.CategoriaCbx.SelectedIndex = -1

        End Using

    End Sub



End Class