Public Class frmProveedores
    Private Sub frmProveedores_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        CenterToScreen()
    End Sub

    Private Sub SalirButton_Click(sender As Object, e As EventArgs) Handles SalirButton.Click
        Me.Close()
    End Sub
End Class