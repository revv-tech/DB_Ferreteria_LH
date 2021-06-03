Public Class frmProveedores

    Dim ep As New Propiedades
    Dim func As New Funciones

    Private Sub frmProveedores_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        CenterToScreen()
    End Sub

    Private Sub SalirButton_Click(sender As Object, e As EventArgs)
        Me.Close()
    End Sub


    Private Sub NuevoButton_Click_1(sender As Object, e As EventArgs) Handles NuevoButton.Click
        If (Me.ValidateChildren = True And Nombre_Tbx.Text <> "") And (Me.ValidateChildren = True And Dir_Tbx.Text <> "") And (Me.ValidateChildren = True And Correo_Tbx.Text <> "") And (Me.ValidateChildren = True And Tel_Tbx.Text <> "") Then
            Try

                ep.Direccion_ = Dir_Tbx.Text
                ep.Nombre_ = Nombre_Tbx.Text
                ep.Telefono_ = Tel_Tbx.Text
                ep.Correo_ = Correo_Tbx.Text

                If func.Insetar_Proveedor("sp_InsertarProveedor", ep) Then
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


End Class