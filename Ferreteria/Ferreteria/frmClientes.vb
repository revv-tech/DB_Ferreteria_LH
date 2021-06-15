Public Class frmClientes

    Dim ep As New Propiedades
    Dim func As New Funciones
    Private Sub frmClientes_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        'TODO: This line of code loads data into the 'FerreteriaLosHermanosDataSet.Clientes' table. You can move, or remove it, as needed.
        Me.ClientesTableAdapter.Fill(Me.FerreteriaLosHermanosDataSet.Clientes)
        CenterToScreen()
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
    End Sub
End Class