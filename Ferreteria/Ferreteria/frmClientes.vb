Imports System.Data
Imports System.Data.SqlClient

Public Class frmClientes

    Dim ep As New Propiedades
    Dim func As New Funciones
    Private Sub frmClientes_Load(sender As Object, e As EventArgs) Handles MyBase.Load

        llenarComboClientes()
        CenterToScreen()
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

    Private Sub NuevoButton_Click(sender As Object, e As EventArgs) Handles NuevoButton.Click
        If (Me.ValidateChildren = True And Nombre_Tbx.Text <> "") And (Me.ValidateChildren = True And Dir_Tbx.Text <> "") And (Me.ValidateChildren = True And Correo_Tbx.Text <> "") And (Me.ValidateChildren = True And Tel_Tbx.Text <> "") Then
            Try

                ep.Direccion_ = Dir_Tbx.Text
                ep.Nombre_ = Nombre_Tbx.Text
                ep.Telefono_ = Tel_Tbx.Text
                ep.Correo_ = Correo_Tbx.Text

                If func.Insetar_Proveedor_Cliente_Local("sp_InsertarClientes", ep) Then
                    MessageBox.Show("Cliente insertado correctamente!", "Insertando Cliente...")
                    ID_tbx.Text = ""
                    Dir_Tbx.Text = ""
                    Nombre_Tbx.Text = ""
                    Correo_Tbx.Text = ""
                    Tel_Tbx.Text = ""

                Else
                    MessageBox.Show("Cliente no insertado!", "Insertando Cliente...", MessageBoxButtons.OK, MessageBoxIcon.Information)
                    ID_tbx.Text = ""
                    Dir_Tbx.Text = ""
                    Nombre_Tbx.Text = ""
                    Correo_Tbx.Text = ""
                    Tel_Tbx.Text = ""
                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Else
            MessageBox.Show("Debe ingresar los datos de la cliente a insertar", "Insertando Cliente...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If
        llenarComboClientes()
    End Sub

    Private Sub SalirButton_Click(sender As Object, e As EventArgs) Handles SalirButton.Click
        Me.Close()
    End Sub

    Private Sub EliminarButton_Click(sender As Object, e As EventArgs) Handles EliminarButton.Click
        If Me.ValidateChildren = True And ID_tbx.Text <> "" Then
            Try
                ep.id_ = ID_tbx.Text

                If func.Eliminar_sp("sp_EliminarClientes", ep) Then
                    MessageBox.Show("Cliente eliminado correctamente!", "Eliminado Cliente...")
                    ID_tbx.Text = ""
                Else
                    MessageBox.Show("Cliente no encontrado!", "Eliminado Cliente...", MessageBoxButtons.OK, MessageBoxIcon.Information)
                    ID_tbx.Text = ""
                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Else
            MessageBox.Show("Debe ingresar el ID de un cliente", "Eliminado Cliente...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If
        llenarComboClientes()
    End Sub

    Private Sub SeleccionarButton_Click(sender As Object, e As EventArgs) Handles SeleccionarButton.Click
        'Permite conexion a base de datos'
        Dim sqlad As SqlDataAdapter
        'Crea instancia de la variable'
        sqlCon = New SqlConnection(conn)

        Using (sqlCon)

            If Cliente_cbx.SelectedIndex > -1 Then

                Dim sqlComm As New SqlCommand()
                'se hace la referencia a la conexión con la bd'
                sqlComm.Connection = sqlCon
                'se indica el nombre del stored procedure y el tipo'
                sqlCon.Open()
                sqlComm.CommandText = "sp_SeleccionarClientesID" '
                sqlComm.Parameters.AddWithValue("@ID", Cliente_cbx.SelectedValue)
                'Tipo de comando'
                sqlComm.CommandType = CommandType.StoredProcedure
                Dim dataR As SqlDataReader
                dataR = sqlComm.ExecuteReader()

                If dataR.Read() Then
                    ID_tbx.Text = dataR.GetInt32(0)
                    Nombre_Tbx.Text = dataR.GetSqlString(1)
                    Dir_Tbx.Text = dataR.GetSqlString(2)
                    Correo_Tbx.Text = dataR.GetSqlString(3)
                    Tel_Tbx.Text = dataR.GetSqlString(4)

                End If
            End If
        End Using
    End Sub

    Private Sub ModificarButton_Click(sender As Object, e As EventArgs) Handles ModificarButton.Click
        If (Me.ValidateChildren = True And Nombre_Tbx.Text <> "") And (Me.ValidateChildren = True And Dir_Tbx.Text <> "") And (Me.ValidateChildren = True And Correo_Tbx.Text <> "") And (Me.ValidateChildren = True And Tel_Tbx.Text <> "") Then
            Try
                ep.id_ = ID_tbx.Text
                ep.Direccion_ = Dir_Tbx.Text
                ep.Nombre_ = Nombre_Tbx.Text
                ep.Telefono_ = Tel_Tbx.Text
                ep.Correo_ = Correo_Tbx.Text

                If func.Modificar_Proveedor_Cliente_Local("sp_ModificarClientes", ep) Then
                    MessageBox.Show("Cliente modificado correctamente!", "Modificando Cliente...")
                    ID_tbx.Text = ""
                Else
                    MessageBox.Show("Cliente no encontrado!", "Modificando Cliente...", MessageBoxButtons.OK, MessageBoxIcon.Information)
                    ID_tbx.Text = ""
                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Else
            MessageBox.Show("Debe ingresar el ID de un cliente", "Modificando Cliente...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If
        llenarComboClientes()

    End Sub


End Class