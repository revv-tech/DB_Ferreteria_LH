Imports System.Data
Imports System.Data.SqlClient

Public Class frmFacturas

    Dim ep As New Propiedades
    Dim func As New Funciones
    Private Sub frmFacturas_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        llenarComboLocales()
        llenarComboVentas()
        llenarComboClientes()
        llenarComboEmpleados()
        CenterToScreen()
    End Sub

    Private Sub SalirButton_Click(sender As Object, e As EventArgs)
        Me.Close()
    End Sub

    Sub llenarComboEmpleados()

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
            sqlComm.CommandText = "sp_SeleccionarEmpleados" '
            'Tipo de comando'
            sqlComm.CommandType = CommandType.StoredProcedure
            sqlad = New SqlDataAdapter(sqlComm)
            dt = New DataTable("Datos")
            'Llena el data table con la informacion que captura el sql adapter con el sp'
            sqlad.Fill(dt)
            Me.Empleado_cbx.DataSource = dt
            'DisplayMember: Lo que se va a mostrar al usuario'
            Me.Empleado_cbx.DisplayMember = "Nombre"
            'ValueMember: Codigo que va enrrolado'
            Me.Empleado_cbx.ValueMember = "EmpleadoID"
            Me.Empleado_cbx.SelectedIndex = -1

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
            Me.Local_cbx.DataSource = dt
            'DisplayMember: Lo que se va a mostrar al usuario'
            Me.Local_cbx.DisplayMember = "Nombre"
            'ValueMember: Codigo que va enrrolado'
            Me.Local_cbx.ValueMember = "LocalID"
            Me.Local_cbx.SelectedIndex = -1

        End Using

    End Sub

    Sub llenarComboVentas()

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
            Me.TipoVenta_cbx.DataSource = dt
            'DisplayMember: Lo que se va a mostrar al usuario'
            Me.TipoVenta_cbx.DisplayMember = "Descripcion"
            'ValueMember: Codigo que va enrrolado'
            Me.TipoVenta_cbx.ValueMember = "TipoVentaID"
            Me.TipoVenta_cbx.SelectedIndex = -1

        End Using

    End Sub

    Private Sub NuevoButton_Click(sender As Object, e As EventArgs) Handles NuevoButton.Click
        If (Me.ValidateChildren = True And Local_cbx.Text <> "") And (Me.ValidateChildren = True And Empleado_cbx.Text <> "") And (Me.ValidateChildren = True And Cliente_cbx.Text <> "") And (Me.ValidateChildren = True And Dir_Tbx.Text <> "") And (Me.ValidateChildren = True And TipoVenta_cbx.Text <> "") And (Me.ValidateChildren = True And Dir_Tbx.Text <> "") And (Me.ValidateChildren = True And Subtotal_tbx.Text <> "") Then
            Try

                ep.Direccion_ = Dir_Tbx.Text
                ep.Fecha_ = Fecha_tbx.Text
                ep.Impuesto_ = Impuesto_tbx.Text
                ep.Subtotal_ = Subtotal_tbx.Text
                ep.Total_ = Total_tbx.Text
                ep.EmpleadoID = Empleado_cbx.Text
                ep.LocalId = Local_cbx.SelectedValue
                ep.Cliente_ = Cliente_cbx.Text
                ep.TipodePago_ = TipoVenta_cbx.SelectedValue



                If func.Insetar_Facturas("sp_InsertarFacturas", ep) Then
                    MessageBox.Show("Factura insertada correctamente!", "Insertando Factura...")
                    ID_Tbx.Text = ""
                    Empleado_cbx.Text = ""
                    Dir_Tbx.Text = ""
                    Impuesto_tbx.Text = ""
                    Fecha_tbx.Text = ""
                    Total_tbx.Text = ""
                    Local_cbx.Text = ""
                    Cliente_cbx.Text = ""
                    TipoVenta_cbx.Text = ""


                Else
                    MessageBox.Show("Factura no insertada!", "Insertando Factura...", MessageBoxButtons.OK, MessageBoxIcon.Information)
                    ID_Tbx.Text = ""
                    Empleado_cbx.Text = ""
                    Dir_Tbx.Text = ""
                    Impuesto_tbx.Text = ""
                    Fecha_tbx.Text = ""
                    Total_tbx.Text = ""
                    Local_cbx.Text = ""
                    Cliente_cbx.Text = ""
                    TipoVenta_cbx.Text = ""

                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Else
            MessageBox.Show("Debe ingresar los datos de la factura a insertar", "Insertando Factura...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If


    End Sub

    Private Sub EliminarButton_Click(sender As Object, e As EventArgs) Handles EliminarButton.Click
        If Me.ValidateChildren = True And ID_Tbx.Text <> "" Then
            Try
                ep.id_ = ID_Tbx.Text

                If func.Eliminar_sp("sp_EliminarFacturas", ep) Then
                    MessageBox.Show("Factura eliminada correctamente!", "Eliminado Factura...")
                    ID_Tbx.Text = ""
                Else
                    MessageBox.Show("Factura no encontrada!", "Eliminado Factura...", MessageBoxButtons.OK, MessageBoxIcon.Information)
                    ID_Tbx.Text = ""
                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Else
            MessageBox.Show("Debe ingresar el ID de una factura", "Eliminado Factura...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If
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

    Private Sub SalirButton_Click_1(sender As Object, e As EventArgs) Handles SalirButton.Click
        Me.Close()
    End Sub
End Class