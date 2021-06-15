Imports System.Data
Imports System.Data.SqlClient

Public Class frmProductos

    Dim ep As New Propiedades
    Dim func As New Funciones

    Private Sub frmProductos_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        'Se coloca ahi el metodo para llamarlo cuando el formulario cargue'
        llenarComboProductos()
        llenarComboCategorias()
        llenarComboMedidas()
        llenarComboProveedores()
        llenarComboProductos()
        CenterToScreen()
    End Sub

    Private Sub SalirButton_Click(sender As Object, e As EventArgs)
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

    Sub llenarComboProductos()

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
            sqlComm.CommandText = "sp_SeleccionarProductos" '
            'Tipo de comando'
            sqlComm.CommandType = CommandType.StoredProcedure
            sqlad = New SqlDataAdapter(sqlComm)
            dt = New DataTable("Datos")
            'Llena el data table con la informacion que captura el sql adapter con el sp'
            sqlad.Fill(dt)
            Me.Productos_cbx.DataSource = dt
            'DisplayMember: Lo que se va a mostrar al usuario'
            Me.Productos_cbx.DisplayMember = "Nombre"
            'ValueMember: Codigo que va enrrolado'
            Me.Productos_cbx.ValueMember = "ProductoID"
            Me.Productos_cbx.SelectedIndex = -1

        End Using

    End Sub

    Sub llenarComboMedidas()

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
            sqlComm.CommandText = "sp_SeleccionarMedias" '
            'Tipo de comando'
            sqlComm.CommandType = CommandType.StoredProcedure
            sqlad = New SqlDataAdapter(sqlComm)
            dt = New DataTable("Datos")
            'Llena el data table con la informacion que captura el sql adapter con el sp'
            sqlad.Fill(dt)
            Me.MedidaCbx.DataSource = dt
            'DisplayMember: Lo que se va a mostrar al usuario'
            Me.MedidaCbx.DisplayMember = "Nombre"
            'ValueMember: Codigo que va enrrolado'
            Me.MedidaCbx.ValueMember = "MedidaID"
            Me.MedidaCbx.SelectedIndex = -1

        End Using

    End Sub

    Sub llenarComboProveedores()

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
            sqlComm.CommandText = "sp_SeleccionarProveedores" '
            'Tipo de comando'
            sqlComm.CommandType = CommandType.StoredProcedure
            sqlad = New SqlDataAdapter(sqlComm)
            dt = New DataTable("Datos")
            'Llena el data table con la informacion que captura el sql adapter con el sp'
            sqlad.Fill(dt)
            Me.Proveedor_cbx.DataSource = dt
            'DisplayMember: Lo que se va a mostrar al usuario'
            Me.Proveedor_cbx.DisplayMember = "NombreProveedor"
            'ValueMember: Codigo que va enrrolado'
            Me.Proveedor_cbx.ValueMember = "ProveedorID"
            Me.Proveedor_cbx.SelectedIndex = -1

        End Using

    End Sub

    Private Sub NuevoButton_Click(sender As Object, e As EventArgs) Handles NuevoButton.Click
        If (Me.ValidateChildren = True And Nombre_Tbx.Text <> "") And (Me.ValidateChildren = True And Precio_Tbx.Text <> "") And (Me.ValidateChildren = True And Proveedor_cbx.Text <> "") And (Me.ValidateChildren = True And CategoriaCbx.Text <> "") And (Me.ValidateChildren = True And MedidaCbx.Text <> "") Then
            Try

                ep.Precio_Producto = Precio_Tbx.Text
                ep.Nombre_ = Nombre_Tbx.Text
                ep.CategoriaID = CategoriaCbx.SelectedValue
                ep.MedidaID = MedidaCbx.SelectedValue
                ep.ProveedorID = Proveedor_cbx.SelectedValue

                If func.Insetar_Producto("sp_InsertarProductos", ep) Then
                    MessageBox.Show("Producto insertado correctamente!", "Insertando Producto...")
                    Proveedor_cbx.Text = ""
                    Precio_Tbx.Text = ""
                    CategoriaCbx.Text = ""
                    MedidaCbx.Text = ""
                    Nombre_Tbx.Text = ""
                Else
                    MessageBox.Show("Producto no insertado!", "Insertando Producto...", MessageBoxButtons.OK, MessageBoxIcon.Information)
                    Proveedor_cbx.Text = ""
                    Precio_Tbx.Text = ""
                    CategoriaCbx.Text = ""
                    MedidaCbx.Text = ""
                    Nombre_Tbx.Text = ""
                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Else
            MessageBox.Show("Debe ingresar los datos de la producto a insertar", "Insertando Producto...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If

    End Sub

    Private Sub EliminarButton_Click(sender As Object, e As EventArgs) Handles EliminarButton.Click
        If Me.ValidateChildren = True And ID_Txb.Text <> "" Then
            Try
                ep.id_ = ID_Txb.Text

                If func.Eliminar_sp("sp_EliminarProductos", ep) Then
                    MessageBox.Show("Producto eliminado correctamente!", "Eliminado Producto...")
                    ID_Txb.Text = ""
                Else
                    MessageBox.Show("Producto no encontrado!", "Eliminado Producto...", MessageBoxButtons.OK, MessageBoxIcon.Information)
                    ID_Txb.Text = ""
                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Else
            MessageBox.Show("Debe ingresar el ID de un Producto", "Eliminado Producto...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If
    End Sub

    Private Sub SalirButton_Click_1(sender As Object, e As EventArgs) Handles SalirButton.Click
        Me.Close()
    End Sub

    Private Sub SeleccionarButton_Click(sender As Object, e As EventArgs) Handles SeleccionarButton.Click
        'Permite conexion a base de datos'
        Dim sqlad As SqlDataAdapter
        'Crea instancia de la variable'
        sqlCon = New SqlConnection(conn)

        Using (sqlCon)

            If Productos_cbx.SelectedIndex > -1 Then
                Dim n As Integer
                n = 0
                Dim sqlComm As New SqlCommand()
                'se hace la referencia a la conexión con la bd'
                sqlComm.Connection = sqlCon
                'se indica el nombre del stored procedure y el tipo'
                sqlCon.Open()
                sqlComm.CommandText = "sp_SeleccionarProductosID" '
                sqlComm.Parameters.AddWithValue("@ID", Productos_cbx.SelectedIndex + 1)
                'Tipo de comando'
                sqlComm.CommandType = CommandType.StoredProcedure
                Dim dataR As SqlDataReader
                dataR = sqlComm.ExecuteReader()

                If dataR.Read() Then

                    Nombre_Tbx.Text = dataR.GetSqlString(1)
                    Productos_cbx.Text = dataR.GetSqlString(2)
                    MedidaCbx.Text = dataR.GetSqlString(3)
                    Precio_Tbx.Text = dataR.GetSqlString(4)
                End If
            End If
        End Using

    End Sub
End Class