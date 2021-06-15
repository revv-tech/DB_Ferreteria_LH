Public Class frmPedidos

    Dim ep As New Propiedades
    Dim func As New Funciones
    Private Sub frmPedidos_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        CenterToScreen()
    End Sub

    Private Sub NuevoButton_Click(sender As Object, e As EventArgs) Handles NuevoButton.Click
        If (Me.ValidateChildren = True And Precio_tbx.Text <> "") And (Me.ValidateChildren = True And TotalL_tbx.Text <> "") And (Me.ValidateChildren = True And Producto_tbx.Text <> "") And (Me.ValidateChildren = True And Factura_tbx.Text <> "") Then
            Try
                ep.Precio_Producto = Precio_tbx.Text
                ep.Total_ = TotalL_tbx.Text
                ep.ProductoID = Producto_tbx.Text
                ep.FacturaID_ = Factura_tbx.Text

                If func.Insetar_Pedido("sp_InsertarPedidos", ep) Then
                    MessageBox.Show("Pedido insertado correctamente!", "Insertando Pedido...")

                    ep.Nombre_ = ""

                Else
                    MessageBox.Show("Pedido no insertado!", "Insertando Pedido...", MessageBoxButtons.OK, MessageBoxIcon.Information)

                    ep.Nombre_ = ""

                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Else
            MessageBox.Show("Debe ingresar los datos del Pedido a insertar", "Insertando Pedido...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If
    End Sub

    Private Sub SalirButton_Click_1(sender As Object, e As EventArgs) Handles SalirButton.Click
        Me.Close()
    End Sub

    Private Sub EliminarButton_Click(sender As Object, e As EventArgs) Handles EliminarButton.Click
        If Me.ValidateChildren = True And ID_tbx.Text <> "" Then
            Try
                ep.id_ = ID_tbx.Text

                If func.Eliminar_sp("sp_EliminarPedidos", ep) Then
                    MessageBox.Show("Pedido eliminado correctamente!", "Eliminado Pedido...")
                    ID_tbx.Text = ""
                Else
                    MessageBox.Show("Pedido no encontrado!", "Eliminado Pedido...", MessageBoxButtons.OK, MessageBoxIcon.Information)
                    ID_tbx.Text = ""
                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Else
            MessageBox.Show("Debe ingresar el ID de un pedido", "Eliminado Pedido...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If
    End Sub
End Class