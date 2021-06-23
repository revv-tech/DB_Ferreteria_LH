<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class fmFerreteria
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()>
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(fmFerreteria))
        Me.MenuStrip1 = New System.Windows.Forms.MenuStrip()
        Me.MantenimientoToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ClientesToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ProveedoresToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ProductosToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.CategoriasToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.LocalesToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.MedidasToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.EmpleadosToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.TiposDeVentaToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.FacturaciónToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ConsultasToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.FacturasPorClienteToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.PedidosPorClienteToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.InventarioPorLocalToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.InventarioPorProductoToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.MostrarBitacoraToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.AcercaDeToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.SalirButton = New System.Windows.Forms.Button()
        Me.PictureBox1 = New System.Windows.Forms.PictureBox()
        Me.MenuStrip1.SuspendLayout()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'MenuStrip1
        '
        Me.MenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.MantenimientoToolStripMenuItem, Me.FacturaciónToolStripMenuItem, Me.ConsultasToolStripMenuItem, Me.AcercaDeToolStripMenuItem})
        Me.MenuStrip1.Location = New System.Drawing.Point(0, 0)
        Me.MenuStrip1.Name = "MenuStrip1"
        Me.MenuStrip1.Size = New System.Drawing.Size(771, 24)
        Me.MenuStrip1.TabIndex = 0
        Me.MenuStrip1.Text = "MenuStrip1"
        '
        'MantenimientoToolStripMenuItem
        '
        Me.MantenimientoToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.ClientesToolStripMenuItem, Me.ProveedoresToolStripMenuItem, Me.ProductosToolStripMenuItem, Me.CategoriasToolStripMenuItem, Me.LocalesToolStripMenuItem, Me.MedidasToolStripMenuItem, Me.EmpleadosToolStripMenuItem, Me.TiposDeVentaToolStripMenuItem})
        Me.MantenimientoToolStripMenuItem.Name = "MantenimientoToolStripMenuItem"
        Me.MantenimientoToolStripMenuItem.Size = New System.Drawing.Size(101, 20)
        Me.MantenimientoToolStripMenuItem.Text = "Mantenimiento"
        '
        'ClientesToolStripMenuItem
        '
        Me.ClientesToolStripMenuItem.Name = "ClientesToolStripMenuItem"
        Me.ClientesToolStripMenuItem.Size = New System.Drawing.Size(180, 22)
        Me.ClientesToolStripMenuItem.Text = "Clientes"
        '
        'ProveedoresToolStripMenuItem
        '
        Me.ProveedoresToolStripMenuItem.Name = "ProveedoresToolStripMenuItem"
        Me.ProveedoresToolStripMenuItem.Size = New System.Drawing.Size(180, 22)
        Me.ProveedoresToolStripMenuItem.Text = "Proveedores"
        '
        'ProductosToolStripMenuItem
        '
        Me.ProductosToolStripMenuItem.Name = "ProductosToolStripMenuItem"
        Me.ProductosToolStripMenuItem.Size = New System.Drawing.Size(180, 22)
        Me.ProductosToolStripMenuItem.Text = "Productos"
        '
        'CategoriasToolStripMenuItem
        '
        Me.CategoriasToolStripMenuItem.Name = "CategoriasToolStripMenuItem"
        Me.CategoriasToolStripMenuItem.Size = New System.Drawing.Size(180, 22)
        Me.CategoriasToolStripMenuItem.Text = "Categorías"
        '
        'LocalesToolStripMenuItem
        '
        Me.LocalesToolStripMenuItem.Name = "LocalesToolStripMenuItem"
        Me.LocalesToolStripMenuItem.Size = New System.Drawing.Size(180, 22)
        Me.LocalesToolStripMenuItem.Text = "Locales"
        '
        'MedidasToolStripMenuItem
        '
        Me.MedidasToolStripMenuItem.Name = "MedidasToolStripMenuItem"
        Me.MedidasToolStripMenuItem.Size = New System.Drawing.Size(180, 22)
        Me.MedidasToolStripMenuItem.Text = "Medidas"
        '
        'EmpleadosToolStripMenuItem
        '
        Me.EmpleadosToolStripMenuItem.Name = "EmpleadosToolStripMenuItem"
        Me.EmpleadosToolStripMenuItem.Size = New System.Drawing.Size(180, 22)
        Me.EmpleadosToolStripMenuItem.Text = "Empleados"
        '
        'TiposDeVentaToolStripMenuItem
        '
        Me.TiposDeVentaToolStripMenuItem.Name = "TiposDeVentaToolStripMenuItem"
        Me.TiposDeVentaToolStripMenuItem.Size = New System.Drawing.Size(180, 22)
        Me.TiposDeVentaToolStripMenuItem.Text = "Tipo de Pago"
        '
        'FacturaciónToolStripMenuItem
        '
        Me.FacturaciónToolStripMenuItem.Name = "FacturaciónToolStripMenuItem"
        Me.FacturaciónToolStripMenuItem.Size = New System.Drawing.Size(66, 20)
        Me.FacturaciónToolStripMenuItem.Text = "Comprar"
        '
        'ConsultasToolStripMenuItem
        '
        Me.ConsultasToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.FacturasPorClienteToolStripMenuItem, Me.PedidosPorClienteToolStripMenuItem, Me.InventarioPorLocalToolStripMenuItem, Me.InventarioPorProductoToolStripMenuItem, Me.MostrarBitacoraToolStripMenuItem})
        Me.ConsultasToolStripMenuItem.Name = "ConsultasToolStripMenuItem"
        Me.ConsultasToolStripMenuItem.Size = New System.Drawing.Size(71, 20)
        Me.ConsultasToolStripMenuItem.Text = "Consultas"
        '
        'FacturasPorClienteToolStripMenuItem
        '
        Me.FacturasPorClienteToolStripMenuItem.Name = "FacturasPorClienteToolStripMenuItem"
        Me.FacturasPorClienteToolStripMenuItem.Size = New System.Drawing.Size(200, 22)
        Me.FacturasPorClienteToolStripMenuItem.Text = "Facturas por Cliente"
        '
        'PedidosPorClienteToolStripMenuItem
        '
        Me.PedidosPorClienteToolStripMenuItem.Name = "PedidosPorClienteToolStripMenuItem"
        Me.PedidosPorClienteToolStripMenuItem.Size = New System.Drawing.Size(200, 22)
        Me.PedidosPorClienteToolStripMenuItem.Text = "Pedidos por Cliente"
        '
        'InventarioPorLocalToolStripMenuItem
        '
        Me.InventarioPorLocalToolStripMenuItem.Name = "InventarioPorLocalToolStripMenuItem"
        Me.InventarioPorLocalToolStripMenuItem.Size = New System.Drawing.Size(200, 22)
        Me.InventarioPorLocalToolStripMenuItem.Text = "Inventario por Local"
        '
        'InventarioPorProductoToolStripMenuItem
        '
        Me.InventarioPorProductoToolStripMenuItem.Name = "InventarioPorProductoToolStripMenuItem"
        Me.InventarioPorProductoToolStripMenuItem.Size = New System.Drawing.Size(200, 22)
        Me.InventarioPorProductoToolStripMenuItem.Text = "Inventario por Producto"
        '
        'MostrarBitacoraToolStripMenuItem
        '
        Me.MostrarBitacoraToolStripMenuItem.Name = "MostrarBitacoraToolStripMenuItem"
        Me.MostrarBitacoraToolStripMenuItem.Size = New System.Drawing.Size(200, 22)
        Me.MostrarBitacoraToolStripMenuItem.Text = "Mostrar Bitacora"
        '
        'AcercaDeToolStripMenuItem
        '
        Me.AcercaDeToolStripMenuItem.Name = "AcercaDeToolStripMenuItem"
        Me.AcercaDeToolStripMenuItem.Size = New System.Drawing.Size(71, 20)
        Me.AcercaDeToolStripMenuItem.Text = "Acerca de"
        '
        'SalirButton
        '
        Me.SalirButton.BackColor = System.Drawing.Color.White
        Me.SalirButton.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.SalirButton.FlatStyle = System.Windows.Forms.FlatStyle.Popup
        Me.SalirButton.Image = Global.Ferreteria.My.Resources.Resources.salida
        Me.SalirButton.Location = New System.Drawing.Point(664, 337)
        Me.SalirButton.Name = "SalirButton"
        Me.SalirButton.Size = New System.Drawing.Size(100, 101)
        Me.SalirButton.TabIndex = 5
        Me.SalirButton.UseVisualStyleBackColor = False
        '
        'PictureBox1
        '
        Me.PictureBox1.ErrorImage = CType(resources.GetObject("PictureBox1.ErrorImage"), System.Drawing.Image)
        Me.PictureBox1.Image = Global.Ferreteria.My.Resources.Resources.title
        Me.PictureBox1.InitialImage = CType(resources.GetObject("PictureBox1.InitialImage"), System.Drawing.Image)
        Me.PictureBox1.Location = New System.Drawing.Point(159, 62)
        Me.PictureBox1.Name = "PictureBox1"
        Me.PictureBox1.Size = New System.Drawing.Size(468, 301)
        Me.PictureBox1.TabIndex = 6
        Me.PictureBox1.TabStop = False
        '
        'fmFerreteria
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackgroundImage = Global.Ferreteria.My.Resources.Resources.Nombres_para_Ferreterias2
        Me.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center
        Me.ClientSize = New System.Drawing.Size(771, 459)
        Me.Controls.Add(Me.PictureBox1)
        Me.Controls.Add(Me.SalirButton)
        Me.Controls.Add(Me.MenuStrip1)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MainMenuStrip = Me.MenuStrip1
        Me.Name = "fmFerreteria"
        Me.Text = "Ferreteria Los Hermanos"
        Me.MenuStrip1.ResumeLayout(False)
        Me.MenuStrip1.PerformLayout()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents MenuStrip1 As MenuStrip
    Friend WithEvents MantenimientoToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents ClientesToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents ProveedoresToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents ProductosToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents CategoriasToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents LocalesToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents FacturaciónToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents ConsultasToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents AcercaDeToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents MedidasToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents EmpleadosToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents TiposDeVentaToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents SalirButton As Button
    Friend WithEvents PictureBox1 As PictureBox
    Friend WithEvents FacturasPorClienteToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents PedidosPorClienteToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents InventarioPorLocalToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents InventarioPorProductoToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents MostrarBitacoraToolStripMenuItem As ToolStripMenuItem
End Class
