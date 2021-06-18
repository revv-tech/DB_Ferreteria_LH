Imports System.Data
Imports System.Data.SqlClient

Public Class frmProveedores

    Dim ep As New Propiedades
    Dim func As New Funciones
    Dim cn As New SqlConnection(My.Settings.Conexion)
    Dim cmd As New SqlCommand
    Private Sub frmProveedores_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        llenarComboProveedores()
        CenterToScreen()
    End Sub

    Private Sub SalirButton_Click(sender As Object, e As EventArgs)
        Me.Close()
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

    Private Sub NuevoButton_Click_1(sender As Object, e As EventArgs) Handles NuevoButton.Click
        If (Me.ValidateChildren = True And Nombre_Tbx.Text <> "") And (Me.ValidateChildren = True And Dir_Tbx.Text <> "") And (Me.ValidateChildren = True And Correo_Tbx.Text <> "") And (Me.ValidateChildren = True And Tel_Tbx.Text <> "") Then
            Try

                ep.Direccion_ = Dir_Tbx.Text
                ep.Nombre_ = Nombre_Tbx.Text
                ep.Telefono_ = Tel_Tbx.Text
                ep.Correo_ = Correo_Tbx.Text

                If func.Insetar_Proveedor_Cliente_Local("sp_InsertarProveedor", ep) Then
                    MessageBox.Show("Proveedor insertada correctamente!", "Insertando Proveedor...")
                    ID_Tbx.Text = ""
                    Dir_Tbx.Text = ""
                    Nombre_Tbx.Text = ""
                    Correo_Tbx.Text = ""
                    Tel_Tbx.Text = ""

                Else
                    MessageBox.Show("Proveedor no insertada!", "Insertando Proveedor...", MessageBoxButtons.OK, MessageBoxIcon.Information)
                    ID_Tbx.Text = ""
                    Dir_Tbx.Text = ""
                    Nombre_Tbx.Text = ""
                    Correo_Tbx.Text = ""
                    Tel_Tbx.Text = ""
                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Else
            MessageBox.Show("Debe ingresar los datos de la proveedor a insertar", "Insertando Proveedor...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If
    End Sub

    Private Sub SalirButton_Click_1(sender As Object, e As EventArgs) Handles SalirButton.Click
        Me.Close()
    End Sub

    Private Sub EliminarButton_Click(sender As Object, e As EventArgs) Handles EliminarButton.Click
        If Me.ValidateChildren = True And ID_Tbx.Text <> "" Then
            Try
                ep.id_ = ID_Tbx.Text

                If func.Eliminar_sp("sp_EliminarProveedor", ep) Then
                    MessageBox.Show("Proveedor eliminado correctamente!", "Eliminado Proveedor...")
                    ID_Tbx.Text = ""
                Else
                    MessageBox.Show("Proveedor no encontrado!", "Eliminado Proveedor...", MessageBoxButtons.OK, MessageBoxIcon.Information)
                    ID_Tbx.Text = ""
                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Else
            MessageBox.Show("Debe ingresar el ID de un Proveedor", "Eliminado Proveedor...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If
        Proveedor_cbx.Text = ""
        llenarComboProveedores()
    End Sub

    Private Sub SeleccionarButton_Click(sender As Object, e As EventArgs) Handles SeleccionarButton.Click
        'Permite conexion a base de datos'
        Dim sqlad As SqlDataAdapter
        'Crea instancia de la variable'
        sqlCon = New SqlConnection(conn)

        Using (sqlCon)

            If Proveedor_cbx.SelectedIndex > -1 Then

                Dim sqlComm As New SqlCommand()
                'se hace la referencia a la conexión con la bd'
                sqlComm.Connection = sqlCon
                'se indica el nombre del stored procedure y el tipo'
                sqlCon.Open()
                sqlComm.CommandText = "sp_SeleccionarProveedoresID" '
                sqlComm.Parameters.AddWithValue("@ID", Proveedor_cbx.SelectedValue)
                'Tipo de comando'
                sqlComm.CommandType = CommandType.StoredProcedure
                Dim dataR As SqlDataReader
                dataR = sqlComm.ExecuteReader()

                If dataR.Read() Then
                    ID_Tbx.Text = dataR.GetInt32(0)
                    Nombre_Tbx.Text = dataR.GetSqlString(1)
                    Dir_Tbx.Text = dataR.GetSqlString(2)
                    Tel_Tbx.Text = dataR.GetSqlString(4)
                    Correo_Tbx.Text = dataR.GetSqlString(3)

                End If
            End If
        End Using
    End Sub

    Private Sub ModificarButton_Click(sender As Object, e As EventArgs) Handles ModificarButton.Click
        If (Me.ValidateChildren = True And Nombre_Tbx.Text <> "") And (Me.ValidateChildren = True And Dir_Tbx.Text <> "") And (Me.ValidateChildren = True And Correo_Tbx.Text <> "") And (Me.ValidateChildren = True And Tel_Tbx.Text <> "") Then
            Try
                ep.id_ = ID_Tbx.Text
                ep.Direccion_ = Dir_Tbx.Text
                ep.Nombre_ = Nombre_Tbx.Text
                ep.Telefono_ = Tel_Tbx.Text
                ep.Correo_ = Correo_Tbx.Text

                If func.Modificar_Proveedor_Cliente_Local("sp_ModificarProveedores", ep) Then
                    MessageBox.Show("Proveedor modificado correctamente!", "Modificando Proveedor...")
                    ID_Tbx.Text = ""
                Else
                    MessageBox.Show("Proveedor no encontrado!", "Modificando Proveedor...", MessageBoxButtons.OK, MessageBoxIcon.Information)
                    ID_Tbx.Text = ""
                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Else
            MessageBox.Show("Debe ingresar el ID de un proveedor", "Modificando Proveedor...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If
        llenarComboProveedores()
    End Sub
End Class