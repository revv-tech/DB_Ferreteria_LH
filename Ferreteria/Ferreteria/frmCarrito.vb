
Imports System.Data.SqlClient
Imports System.IO
Imports iTextSharp.text
Imports iTextSharp.text.pdf

Public Class Carrito

    Dim facturaTmp As New Propiedades
    Dim func As New Funciones
    Dim pedidos As New List(Of Propiedades)
    Dim subtotal As Integer = 0

    Private Sub frmCarrito_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        CenterToScreen()
        llenarComboLocales()
        llenarComboClientes()
        llenarComboTiposDeVenta()
        Subtotal_tbx.Text = subtotal
    End Sub

    Private Sub SalirButton_Click(sender As Object, e As EventArgs) Handles SalirButton.Click
        Me.Close()
    End Sub
    Sub llenarComboEmpleados()

        'Crea instancia de la variable'
        sqlCon = New SqlConnection(conn)

        sqlCon.Open()
        Dim cmd As New SqlCommand("sp_SeleccionarEmpleadosXLocal", sqlCon)
        'Tipo de comando'
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.AddWithValue("@LocalID", LocalCbx.SelectedValue)

        'Resultado de lo que se trae de la tabla'
        Dim dt As DataTable = New DataTable()
        'Llena el data table con la informacion que captura el sql adapter con el sp'
        dt.Load(cmd.ExecuteReader())
        Me.Empleado_cbx.DataSource = dt
        'DisplayMember: Lo que se va a mostrar al usuario'
        Me.Empleado_cbx.DisplayMember = "Nombre"
        'ValueMember: Codigo que va enrrolado'
        Me.Empleado_cbx.ValueMember = "EmpleadoID"
        Me.Empleado_cbx.SelectedIndex = -1
        sqlCon.Close()


    End Sub

    Sub llenarComboTiposDeVenta()

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
            sqlComm.CommandText = "sp_SeleccionarTipoDeVenta" '
            'Tipo de comando'
            sqlComm.CommandType = CommandType.StoredProcedure
            sqlad = New SqlDataAdapter(sqlComm)
            dt = New DataTable("Datos")
            'Llena el data table con la informacion que captura el sql adapter con el sp'
            sqlad.Fill(dt)
            Me.TipoDeVenta_cbx.DataSource = dt
            'DisplayMember: Lo que se va a mostrar al usuario'
            Me.TipoDeVenta_cbx.DisplayMember = "Descripcion"
            'ValueMember: Codigo que va enrrolado'
            Me.TipoDeVenta_cbx.ValueMember = "TipoVentaID"
            Me.TipoDeVenta_cbx.SelectedIndex = -1

        End Using

    End Sub

    Sub llenarComboClientes()

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
            sqlComm.CommandText = "sp_SeleccionarClientes" '
            'Tipo de comando'
            sqlComm.CommandType = CommandType.StoredProcedure
            sqlad = New SqlDataAdapter(sqlComm)
            dt = New DataTable("Datos")
            'Llena el data table con la informacion que captura el sql adapter con el sp'
            sqlad.Fill(dt)
            Me.Cliente_cbx.DataSource = dt
            'DisplayMember: Lo que se va a mostrar al usuario'
            Me.Cliente_cbx.DisplayMember = "Nombre"
            'ValueMember: Codigo que va enrrolado'
            Me.Cliente_cbx.ValueMember = "ClienteID"
            Me.Cliente_cbx.SelectedIndex = -1

        End Using

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

    Sub seleccionarProductosXLocal()

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



    Private Sub VerStock_Click(sender As Object, e As EventArgs) Handles VerStock.Click
        If (LocalCbx.Text <> "") Then
            'Crea instancia de la variable'
            sqlCon = New SqlConnection(conn)


            sqlCon.Open()
            Dim cmd As New SqlCommand("sp_SeleccionarInventarioXLocal", sqlCon)
            'Tipo de comando'
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.AddWithValue("@LocalID", LocalCbx.SelectedValue)

            'Resultado de lo que se trae de la tabla'
            Dim dt As DataTable = New DataTable()
            'Llena el data table con la informacion que captura el sql adapter con el sp'
            dt.Load(cmd.ExecuteReader())
            Me.ProductosXLocal_dt.DataSource = dt
            sqlCon.Close()
            ProductosXLocal_cbx()
            llenarComboEmpleados()

        End If

    End Sub

    Private Sub ProductosXLocal_cbx() Handles VerStock.Click

        If (LocalCbx.Text <> "") Then
            'Crea instancia de la variable'
            sqlCon = New SqlConnection(conn)


            sqlCon.Open()
            Dim cmd As New SqlCommand("sp_SeleccionarInventarioXLocal", sqlCon)
            'Tipo de comando'
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.AddWithValue("@LocalID", LocalCbx.SelectedValue)

            'Resultado de lo que se trae de la tabla'
            Dim dt As DataTable = New DataTable()
            'Llena el data table con la informacion que captura el sql adapter con el sp'
            dt.Load(cmd.ExecuteReader())
            Me.Agregar_Pro.DataSource = dt
            'DisplayMember: Lo que se va a mostrar al usuario'
            Me.Agregar_Pro.DisplayMember = "Nombre"
            'ValueMember: Codigo que va enrrolado'
            Me.Agregar_Pro.ValueMember = "ProductoID"
            Me.Agregar_Pro.SelectedIndex = -1

            sqlCon.Close()
        End If

    End Sub

    Private Sub Agregar_Button_Click(sender As Object, e As EventArgs) Handles Agregar_Button.Click

        If (Agregar_Pro.Text <> "") And (Cantidad_Producto.Text <> "") Then
            'Permite conexion a base de datos'
            Dim sqlad As SqlDataAdapter
            'Crea instancia de la variable'
            sqlCon = New SqlConnection(conn)

            Dim producto As New Propiedades

            producto.id_ = Agregar_Pro.SelectedValue
            producto.Cantidad_Ingreso = Cantidad_Producto.Text

            Using (sqlCon)
                Dim sqlComm As New SqlCommand()
                'se hace la referencia a la conexión con la bd'
                sqlComm.Connection = sqlCon
                'se indica el nombre del stored procedure y el tipo'
                sqlCon.Open()
                sqlComm.CommandText = "sp_SeleccionarProductosID" '
                sqlComm.Parameters.AddWithValue("@ID", Agregar_Pro.SelectedValue)
                'Tipo de comando'
                sqlComm.CommandType = CommandType.StoredProcedure
                Dim dataR As SqlDataReader
                dataR = sqlComm.ExecuteReader()

                If dataR.Read() Then
                    producto.Precio_Producto = dataR.GetSqlInt32(5)
                End If

                producto.Total_Linea = producto.Precio_Producto * producto.Cantidad_Ingreso
            End Using

            pedidos.Add(producto)
            subtotal = subtotal + producto.Total_Linea
        End If
        Agregar_Pro.Text = ""
        Cantidad_Producto.Text = ""
        Subtotal_tbx.Text = subtotal

    End Sub

    Sub realizarPedidos()
        Dim i As Integer

        i = pedidos.Count - 1
        While i <> -1

            Dim producto As New Propiedades
            producto = pedidos.ElementAt(i)
            producto.FacturaID_ = facturaTmp.id_
            func.Insetar_Pedido("sp_InsertarPedidos", producto)
            i = i - 1
        End While

    End Sub

    Private Sub Facturacion_Button_Click(sender As Object, e As EventArgs) Handles Facturacion_Button.Click
        Dim pedidos = New List(Of Propiedades)

        Dim subTotal As Integer
        Dim total As Integer
        Dim impuesto As Integer
        subTotal = 0
        'Permite conexion a base de datos'
        Dim sqlad As SqlDataAdapter
        'Crea instancia de la variable'
        sqlCon = New SqlConnection(conn)

        If (Empleado_cbx.Text <> "" And Cliente_cbx.Text <> "" And LocalCbx.Text <> "" And TipoDeVenta_cbx.Text <> "") Then

            facturaTmp.Fecha_ = Date.Now
            facturaTmp.Impuesto_ = 0
            facturaTmp.Subtotal_ = 0
            facturaTmp.Total_ = 0
            facturaTmp.EmpleadoID = Empleado_cbx.SelectedValue
            facturaTmp.LocalId = LocalCbx.SelectedValue
            facturaTmp.Cliente_ = Cliente_cbx.SelectedValue
            facturaTmp.TipodePago_ = TipoDeVenta_cbx.SelectedValue

            func.Insetar_Facturas("sp_InsertarFacturas", facturaTmp)

            Using (sqlCon)

                Dim sqlComm As New SqlCommand()
                'se hace la referencia a la conexión con la bd'
                sqlComm.Connection = sqlCon
                'se indica el nombre del stored procedure y el tipo'
                sqlCon.Open()
                sqlComm.CommandText = "sp_MaxFacturas" '
                'Tipo de comando'
                sqlComm.CommandType = CommandType.StoredProcedure
                Dim dataR As SqlDataReader
                dataR = sqlComm.ExecuteReader()
                If dataR.Read() Then
                    facturaTmp.id_ = dataR.GetInt32(0)
                End If

            End Using

            realizarPedidos()


            Dim sqlCon2 As SqlConnection
            'Crea instancia de la variable'
            sqlCon2 = New SqlConnection(conn)
            Using (sqlCon2)
                sqlCon2.Open()
                Dim cmd As New SqlCommand("sp_SeleccionarPedidosXFactura", sqlCon2)
                'Tipo de comando'
                cmd.CommandType = CommandType.StoredProcedure
                cmd.Parameters.AddWithValue("@FacturaID", facturaTmp.id_)

                'Resultado de lo que se trae de la tabla'
                Dim dt As DataTable = New DataTable()
                'Llena el data table con la informacion que captura el sql adapter con el sp'
                dt.Load(cmd.ExecuteReader())
                Me.Factura_Pedidos.DataSource = dt
                sqlCon2.Close()
            End Using


            Dim sqlCon3 As SqlConnection
            'Crea instancia de la variable'
            sqlCon3 = New SqlConnection(conn)
            Using (sqlCon3)

                Dim sqlComm As New SqlCommand()
                'se hace la referencia a la conexión con la bd'
                sqlComm.Connection = sqlCon3
                'se indica el nombre del stored procedure y el tipo'
                sqlCon3.Open()
                sqlComm.CommandText = "sp_CalcularSubTotalXFactura" '
                'Tipo de comando'
                sqlComm.CommandType = CommandType.StoredProcedure
                sqlComm.Parameters.AddWithValue("@FacturaID", facturaTmp.id_)
                Dim dataR As SqlDataReader
                dataR = sqlComm.ExecuteReader()
                If dataR.Read() Then
                    subTotal = dataR.GetInt32(0)
                End If


            End Using

            impuesto = subTotal * 0.13

            total = subTotal + impuesto

            Dim sqlCon4 As SqlConnection
            'Crea instancia de la variable'
            sqlCon4 = New SqlConnection(conn)

            Using (sqlCon4)

                Dim sqlComm As New SqlCommand()
                'se hace la referencia a la conexión con la bd'
                sqlComm.Connection = sqlCon4
                'se indica el nombre del stored procedure y el tipo'
                sqlCon4.Open()
                sqlComm.CommandText = "sp_ModificarTotalesFacturas" '
                'Tipo de comando'
                sqlComm.CommandType = CommandType.StoredProcedure
                sqlComm.Parameters.AddWithValue("@FacturaID", facturaTmp.id_)
                sqlComm.Parameters.AddWithValue("@impuesto", impuesto)
                sqlComm.Parameters.AddWithValue("@subtotal", subTotal)
                sqlComm.Parameters.AddWithValue("@total", total)
                sqlCon4.Close()
            End Using

            Total_tbx.Text = total
            Subtotal_tbx.Text = subTotal
            Impuesto_tbx.Text = impuesto

        End If

    End Sub

    Private Sub Reinicia_Click(sender As Object, e As EventArgs) Handles Reinicia.Click
        Total_tbx.Text = ""
        Subtotal_tbx.Text = ""
        Impuesto_tbx.Text = ""
        Factura_Pedidos.DataSource = Nothing
        subtotal = 0

    End Sub




End Class