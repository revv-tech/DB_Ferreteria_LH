Imports System.Data
Imports System.Data.SqlClient


Public Class frmEmpleados

    Dim ep As New Propiedades
    Dim func As New Funciones

    Private Sub frmEmpleados_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        llenarComboLocales()
        CenterToScreen()
    End Sub


    Private Sub NuevoButton_Click(sender As Object, e As EventArgs) Handles NuevoButton.Click
        If (Me.ValidateChildren = True And Nombre_Tbx.Text <> "") And (Me.ValidateChildren = True And Dir_Tbx.Text <> "") And (Me.ValidateChildren = True And Correo_Tbx.Text <> "") And (Me.ValidateChildren = True And LocalCbx.Text <> "") Then
            Try

                ep.Direccion_ = Dir_Tbx.Text
                ep.Nombre_ = Nombre_Tbx.Text
                ep.Fecha_ = Fecha_Tbx.Text
                ep.Correo_ = Correo_Tbx.Text
                ep.LocalId = LocalCbx.SelectedIndex + 1

                If func.Insetar_Empleado("sp_InsertarEmpleados", ep) Then
                    MessageBox.Show("Empleado insertado correctamente!", "Insertando Empleado...")
                    ID_Tbx.Text = ""
                    Dir_Tbx.Text = ""
                    Nombre_Tbx.Text = ""
                    Correo_Tbx.Text = ""
                    LocalCbx.Text = ""
                    Fecha_Tbx.Text = ""

                Else
                    MessageBox.Show("Empleado no insertado!", "Insertando Empleado...", MessageBoxButtons.OK, MessageBoxIcon.Information)
                    ID_Tbx.Text = ""
                    Dir_Tbx.Text = ""
                    Nombre_Tbx.Text = ""
                    Correo_Tbx.Text = ""
                    Fecha_Tbx.Text = ""
                    LocalCbx.Text = ""
                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Else
            MessageBox.Show("Debe ingresar los datos de la empleado a insertar", "Insertando Empleado...", MessageBoxButtons.OK, MessageBoxIcon.Information)
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

    Private Sub SalirButton_Click_1(sender As Object, e As EventArgs) Handles SalirButton.Click
        Me.Close()
    End Sub

    Private Sub EliminarButton_Click(sender As Object, e As EventArgs) Handles EliminarButton.Click
        If Me.ValidateChildren = True And ID_Tbx.Text <> "" Then
            Try
                ep.id_ = ID_Tbx.Text

                If func.Eliminar_sp("sp_EliminarEmpleados", ep) Then
                    MessageBox.Show("Empleado eliminado correctamente!", "Eliminado Empleado...")
                    ID_Tbx.Text = ""
                Else
                    MessageBox.Show("Empleado no encontrado!", "Eliminado Empleado...", MessageBoxButtons.OK, MessageBoxIcon.Information)
                    ID_Tbx.Text = ""
                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Else
            MessageBox.Show("Debe ingresar el ID de un Empleado", "Eliminado Empleado...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If
    End Sub
End Class