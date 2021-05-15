Public Class fmFerreteria
    Private Sub fmFerreteria_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        CenterToScreen()
        Me.BackColor = Color.FromArgb(255, 0, 0)

    End Sub

    Private Sub CategoriasToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CategoriasToolStripMenuItem.Click
        frmCategorias.Show()
    End Sub

    Private Sub ProveedoresToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ProveedoresToolStripMenuItem.Click
        frmProveedores.Show()
    End Sub

    Private Sub MedidasToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles MedidasToolStripMenuItem.Click
        frmMedidas.Show()
    End Sub

    Private Sub ProductosToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ProductosToolStripMenuItem.Click
        frmProductos.Show()
    End Sub

    Private Sub InventariosToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles InventariosToolStripMenuItem.Click
        frmInventarios.Show()
    End Sub

    Private Sub LocalesToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles LocalesToolStripMenuItem.Click
        frmLocales.Show()
    End Sub
End Class
