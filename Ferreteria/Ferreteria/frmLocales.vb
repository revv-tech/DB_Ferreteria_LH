Imports System.Data
Imports System.Data.SqlClient



Public Class frmLocales
    Dim ep As New Propiedades
    Dim func As New Funciones
    Dim cn As New SqlConnection(My.Settings.Conexion)
    Dim cmd As New SqlCommand
    Private Sub frmLocales_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        llenarComboLocales()
        CenterToScreen()
    End Sub


    Private Sub NuevoButton_Click(sender As Object, e As EventArgs) Handles NuevoButton.Click
        If (Me.ValidateChildren = True And Nombre_Tbx.Text <> "") And (Me.ValidateChildren = True And Dir_Tbx.Text <> "") And (Me.ValidateChildren = True And Correo_Tbx.Text <> "") And (Me.ValidateChildren = True And Tel_Tbx.Text <> "") Then
            Try

                ep.Direccion_ = Dir_Tbx.Text
                ep.Nombre_ = Nombre_Tbx.Text
                ep.Telefono_ = Tel_Tbx.Text
                ep.Correo_ = Correo_Tbx.Text

                If func.Insetar_Proveedor_Cliente_Local("sp_InsertarLocales", ep) Then
                    MessageBox.Show("Local insertado correctamente!", "Insertando Local...")
                    ID_Tbx.Text = ""
                    Dir_Tbx.Text = ""
                    Nombre_Tbx.Text = ""
                    Correo_Tbx.Text = ""
                    Tel_Tbx.Text = ""

                Else
                    MessageBox.Show("Local no insertado!", "Insertando Local...", MessageBoxButtons.OK, MessageBoxIcon.Information)
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
            MessageBox.Show("Debe ingresar los datos de la local a insertar", "Insertando Local...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If

    End Sub

    Private Sub EliminarButton_Click(sender As Object, e As EventArgs) Handles EliminarButton.Click
        If Me.ValidateChildren = True And ID_Tbx.Text <> "" Then
            Try
                ep.id_ = ID_Tbx.Text

                If func.Eliminar_sp("sp_EliminarLocales", ep) Then
                    MessageBox.Show("Local eliminado correctamente!", "Eliminado Local...")
                    ID_Tbx.Text = ""
                Else
                    MessageBox.Show("Local no encontrado!", "Eliminado Local...", MessageBoxButtons.OK, MessageBoxIcon.Information)
                    ID_Tbx.Text = ""
                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Else
            MessageBox.Show("Debe ingresar el ID de un local", "Eliminado Local...", MessageBoxButtons.OK, MessageBoxIcon.Information)
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

    Private Sub SeleccionarButton_Click(sender As Object, e As EventArgs) Handles SeleccionarButton.Click

        'Permite conexion a base de datos'
        Dim sqlad As SqlDataAdapter
        'Crea instancia de la variable'
        sqlCon = New SqlConnection(conn)

        Using (sqlCon)

            If LocalCbx.SelectedIndex > -1 Then
                Dim n As Integer
                n = 0
                Dim sqlComm As New SqlCommand()
                'se hace la referencia a la conexión con la bd'
                sqlComm.Connection = sqlCon
                'se indica el nombre del stored procedure y el tipo'
                sqlCon.Open()
                sqlComm.CommandText = "sp_SeleccionarLocalesID" '
                sqlComm.Parameters.AddWithValue("@ID", LocalCbx.SelectedIndex + 1)
                'Tipo de comando'
                sqlComm.CommandType = CommandType.StoredProcedure
                Dim dataR As SqlDataReader
                dataR = sqlComm.ExecuteReader()

                If dataR.Read() Then

                    Nombre_Tbx.Text = dataR.GetSqlString(1)
                    Dir_Tbx.Text = dataR.GetSqlString(2)
                    Tel_Tbx.Text = dataR.GetSqlString(3)
                    Correo_Tbx.Text = dataR.GetSqlString(4)
                End If
            End If
        End Using

    End Sub

    Private Sub SalirButton_Click_1(sender As Object, e As EventArgs) Handles SalirButton.Click
        Me.Close()
    End Sub
End Class