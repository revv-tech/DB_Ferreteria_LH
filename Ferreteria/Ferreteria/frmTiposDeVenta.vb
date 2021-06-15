Public Class frmTiposDeVenta

    Dim ep As New Propiedades
    Dim func As New Funciones

    Private Sub frmTiposDeVenta_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        CenterToScreen()
    End Sub


    Private Sub NuevoButton_Click(sender As Object, e As EventArgs) Handles NuevoButton.Click
        If (Me.ValidateChildren = True And Descrip_Tbx.Text <> "") Then
            Try
                ep.Descripcion_ = Descrip_Tbx.Text


                If func.Insetar_Tipo_de_Venta("sp_InsertarTipoDeVenta", ep) Then
                    MessageBox.Show("Tipo de Venta insertado correctamente!", "Insertando Tipo de Venta...")

                    ep.Descripcion_ = ""

                Else
                    MessageBox.Show("Tipo de Venta no insertado!", "Insertando Tipo de Venta...", MessageBoxButtons.OK, MessageBoxIcon.Information)

                    ep.Descripcion_ = ""

                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Else
            MessageBox.Show("Debe ingresar los datos del tipo de venta a insertar", "Insertando Tipo de Venta...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If
    End Sub

    Private Sub SalirButton_Click(sender As Object, e As EventArgs) Handles SalirButton.Click
        Me.Close()
    End Sub

    Private Sub EliminarButton_Click(sender As Object, e As EventArgs) Handles EliminarButton.Click
        If Me.ValidateChildren = True And ID_Tbx.Text <> "" Then
            Try
                ep.id_ = ID_Tbx.Text

                If func.Eliminar_sp("sp_EliminarTipoDeVenta", ep) Then
                    MessageBox.Show("Tipo de venta eliminado correctamente!", "Eliminado Tipo de venta...")
                    ID_Tbx.Text = ""
                Else
                    MessageBox.Show("Tipo de venta no encontrado!", "Eliminado Tipo de venta...", MessageBoxButtons.OK, MessageBoxIcon.Information)
                    ID_Tbx.Text = ""
                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Else
            MessageBox.Show("Debe ingresar el ID de un tipo de venta", "Eliminado Tipo de venta...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If
    End Sub
End Class