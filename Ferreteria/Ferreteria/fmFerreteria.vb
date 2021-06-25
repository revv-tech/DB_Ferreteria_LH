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

    Private Sub LocalesToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles LocalesToolStripMenuItem.Click
        frmLocales.Show()
    End Sub

    Private Sub EmpleadosToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles EmpleadosToolStripMenuItem.Click
        frmEmpleados.Show()
    End Sub

    Private Sub ClientesToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ClientesToolStripMenuItem.Click
        frmClientes.Show()
    End Sub

    Private Sub TiposDeVentaToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles TiposDeVentaToolStripMenuItem.Click
        frmTiposDeVenta.Show()
    End Sub

    Private Sub SalirButton_Click(sender As Object, e As EventArgs) Handles SalirButton.Click
        Me.Close()
    End Sub

    Private Sub FacturaciónToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles FacturaciónToolStripMenuItem.Click
        Carrito.Show()
    End Sub

    Private Sub AcercaDeToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles AcercaDeToolStripMenuItem.Click
        Nosotros.Show()
    End Sub

    Private Sub FacturasPorClienteToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles FacturasPorClienteToolStripMenuItem.Click
        frmFacturaXCliente.Show()
    End Sub

    Private Sub PedidosPorClienteToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles PedidosPorClienteToolStripMenuItem.Click
        frmPedidosXCliente.Show()
    End Sub

    Private Sub InventarioPorLocalToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles InventarioPorLocalToolStripMenuItem.Click
        frmInventarioXLocal.Show()
    End Sub

    Private Sub InventarioPorProductoToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles InventarioPorProductoToolStripMenuItem.Click
        frmInventarioPorProducto.Show()
    End Sub

    Private Sub MostrarBitacoraToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles MostrarBitacoraToolStripMenuItem.Click
        frmBitacora.Show()
    End Sub

    Private Sub FacturasPorLocalToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles FacturasPorLocalToolStripMenuItem.Click
        frmFacturasXLocal1.Show()
    End Sub
End Class
