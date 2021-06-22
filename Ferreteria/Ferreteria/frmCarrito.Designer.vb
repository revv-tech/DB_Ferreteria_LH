<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmCarrito
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
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
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(frmCarrito))
        Me.PictureBox1 = New System.Windows.Forms.PictureBox()
        Me.SalirButton = New System.Windows.Forms.Button()
        Me.LocalCbx = New System.Windows.Forms.ComboBox()
        Me.ProductosXLocal_dt = New System.Windows.Forms.DataGridView()
        Me.FerreteriaLosHermanosDataSet9BindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.FerreteriaLosHermanosDataSet9 = New Ferreteria.FerreteriaLosHermanosDataSet9()
        Me.FerreteriaLosHermanosDataSet8 = New Ferreteria.FerreteriaLosHermanosDataSet8()
        Me.SpStockLocalXProductoBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.Sp_StockLocalXProductoTableAdapter = New Ferreteria.FerreteriaLosHermanosDataSet8TableAdapters.sp_StockLocalXProductoTableAdapter()
        Me.VerStock = New System.Windows.Forms.Button()
        Me.Agregar_Producto = New System.Windows.Forms.Button()
        Me.Cliente = New System.Windows.Forms.Button()
        Me.Cliente_cbx = New System.Windows.Forms.ComboBox()
        Me.Empleado = New System.Windows.Forms.Button()
        Me.ComboBox1 = New System.Windows.Forms.ComboBox()
        Me.Facturacion = New System.Windows.Forms.Button()
        Me.TipoDePago_cbx = New System.Windows.Forms.ComboBox()
        Me.Tipo_De_Pago = New System.Windows.Forms.Button()
        Me.Buscar_Producto = New System.Windows.Forms.Button()
        Me.Subtotal_tbx = New System.Windows.Forms.TextBox()
        Me.TextBox1 = New System.Windows.Forms.TextBox()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.ProductosXLocal_dt, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.FerreteriaLosHermanosDataSet9BindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.FerreteriaLosHermanosDataSet9, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.FerreteriaLosHermanosDataSet8, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.SpStockLocalXProductoBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'PictureBox1
        '
        Me.PictureBox1.Image = Global.Ferreteria.My.Resources.Resources.minititle
        Me.PictureBox1.Location = New System.Drawing.Point(1200, 6)
        Me.PictureBox1.Name = "PictureBox1"
        Me.PictureBox1.Size = New System.Drawing.Size(200, 126)
        Me.PictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.AutoSize
        Me.PictureBox1.TabIndex = 1
        Me.PictureBox1.TabStop = False
        '
        'SalirButton
        '
        Me.SalirButton.BackColor = System.Drawing.Color.White
        Me.SalirButton.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.SalirButton.FlatStyle = System.Windows.Forms.FlatStyle.Popup
        Me.SalirButton.Image = Global.Ferreteria.My.Resources.Resources.salida
        Me.SalirButton.Location = New System.Drawing.Point(1300, 513)
        Me.SalirButton.Name = "SalirButton"
        Me.SalirButton.Size = New System.Drawing.Size(100, 101)
        Me.SalirButton.TabIndex = 6
        Me.SalirButton.UseVisualStyleBackColor = False
        '
        'LocalCbx
        '
        Me.LocalCbx.DisplayMember = "Nombre"
        Me.LocalCbx.FormattingEnabled = True
        Me.LocalCbx.Location = New System.Drawing.Point(148, 8)
        Me.LocalCbx.Name = "LocalCbx"
        Me.LocalCbx.Size = New System.Drawing.Size(449, 21)
        Me.LocalCbx.TabIndex = 31
        Me.LocalCbx.ValueMember = "LocalID"
        '
        'ProductosXLocal_dt
        '
        Me.ProductosXLocal_dt.AllowUserToAddRows = False
        Me.ProductosXLocal_dt.AllowUserToDeleteRows = False
        Me.ProductosXLocal_dt.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.ProductosXLocal_dt.Location = New System.Drawing.Point(12, 35)
        Me.ProductosXLocal_dt.Name = "ProductosXLocal_dt"
        Me.ProductosXLocal_dt.ReadOnly = True
        Me.ProductosXLocal_dt.Size = New System.Drawing.Size(585, 554)
        Me.ProductosXLocal_dt.TabIndex = 33
        '
        'FerreteriaLosHermanosDataSet9BindingSource
        '
        Me.FerreteriaLosHermanosDataSet9BindingSource.DataSource = Me.FerreteriaLosHermanosDataSet9
        Me.FerreteriaLosHermanosDataSet9BindingSource.Position = 0
        '
        'FerreteriaLosHermanosDataSet9
        '
        Me.FerreteriaLosHermanosDataSet9.DataSetName = "FerreteriaLosHermanosDataSet9"
        Me.FerreteriaLosHermanosDataSet9.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'FerreteriaLosHermanosDataSet8
        '
        Me.FerreteriaLosHermanosDataSet8.DataSetName = "FerreteriaLosHermanosDataSet8"
        Me.FerreteriaLosHermanosDataSet8.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'SpStockLocalXProductoBindingSource
        '
        Me.SpStockLocalXProductoBindingSource.DataMember = "sp_StockLocalXProducto"
        Me.SpStockLocalXProductoBindingSource.DataSource = Me.FerreteriaLosHermanosDataSet8
        '
        'Sp_StockLocalXProductoTableAdapter
        '
        Me.Sp_StockLocalXProductoTableAdapter.ClearBeforeFill = True
        '
        'VerStock
        '
        Me.VerStock.BackColor = System.Drawing.Color.Green
        Me.VerStock.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.VerStock.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.VerStock.Font = New System.Drawing.Font("Microsoft Tai Le", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.VerStock.ForeColor = System.Drawing.SystemColors.ButtonFace
        Me.VerStock.Location = New System.Drawing.Point(12, 8)
        Me.VerStock.Name = "VerStock"
        Me.VerStock.Size = New System.Drawing.Size(130, 23)
        Me.VerStock.TabIndex = 40
        Me.VerStock.Text = "Ver Local: "
        Me.VerStock.UseVisualStyleBackColor = False
        '
        'Agregar_Producto
        '
        Me.Agregar_Producto.BackColor = System.Drawing.Color.Red
        Me.Agregar_Producto.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.Agregar_Producto.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Agregar_Producto.Font = New System.Drawing.Font("Microsoft Tai Le", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Agregar_Producto.ForeColor = System.Drawing.SystemColors.ButtonFace
        Me.Agregar_Producto.Location = New System.Drawing.Point(340, 591)
        Me.Agregar_Producto.Name = "Agregar_Producto"
        Me.Agregar_Producto.Size = New System.Drawing.Size(115, 23)
        Me.Agregar_Producto.TabIndex = 41
        Me.Agregar_Producto.Text = "Subtotal:"
        Me.Agregar_Producto.UseVisualStyleBackColor = False
        '
        'Cliente
        '
        Me.Cliente.BackColor = System.Drawing.Color.Green
        Me.Cliente.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.Cliente.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Cliente.Font = New System.Drawing.Font("Microsoft Tai Le", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Cliente.ForeColor = System.Drawing.SystemColors.ButtonFace
        Me.Cliente.Location = New System.Drawing.Point(603, 62)
        Me.Cliente.Name = "Cliente"
        Me.Cliente.Size = New System.Drawing.Size(130, 23)
        Me.Cliente.TabIndex = 42
        Me.Cliente.Text = "Añadir Cliente"
        Me.Cliente.UseVisualStyleBackColor = False
        '
        'Cliente_cbx
        '
        Me.Cliente_cbx.DisplayMember = "Nombre"
        Me.Cliente_cbx.FormattingEnabled = True
        Me.Cliente_cbx.Location = New System.Drawing.Point(739, 64)
        Me.Cliente_cbx.Name = "Cliente_cbx"
        Me.Cliente_cbx.Size = New System.Drawing.Size(449, 21)
        Me.Cliente_cbx.TabIndex = 43
        Me.Cliente_cbx.ValueMember = "LocalID"
        '
        'Empleado
        '
        Me.Empleado.BackColor = System.Drawing.Color.Green
        Me.Empleado.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.Empleado.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Empleado.Font = New System.Drawing.Font("Microsoft Tai Le", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Empleado.ForeColor = System.Drawing.SystemColors.ButtonFace
        Me.Empleado.Location = New System.Drawing.Point(603, 91)
        Me.Empleado.Name = "Empleado"
        Me.Empleado.Size = New System.Drawing.Size(130, 23)
        Me.Empleado.TabIndex = 44
        Me.Empleado.Text = "Añadir Empleado"
        Me.Empleado.UseVisualStyleBackColor = False
        '
        'ComboBox1
        '
        Me.ComboBox1.DisplayMember = "Nombre"
        Me.ComboBox1.FormattingEnabled = True
        Me.ComboBox1.Location = New System.Drawing.Point(739, 93)
        Me.ComboBox1.Name = "ComboBox1"
        Me.ComboBox1.Size = New System.Drawing.Size(449, 21)
        Me.ComboBox1.TabIndex = 45
        Me.ComboBox1.ValueMember = "LocalID"
        '
        'Facturacion
        '
        Me.Facturacion.BackColor = System.Drawing.Color.MediumSeaGreen
        Me.Facturacion.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.Facturacion.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Facturacion.Font = New System.Drawing.Font("Microsoft Tai Le", 20.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Facturacion.ForeColor = System.Drawing.SystemColors.ButtonFace
        Me.Facturacion.Location = New System.Drawing.Point(603, 6)
        Me.Facturacion.Name = "Facturacion"
        Me.Facturacion.Size = New System.Drawing.Size(585, 50)
        Me.Facturacion.TabIndex = 46
        Me.Facturacion.Text = "Facturación"
        Me.Facturacion.UseVisualStyleBackColor = False
        '
        'TipoDePago_cbx
        '
        Me.TipoDePago_cbx.DisplayMember = "Nombre"
        Me.TipoDePago_cbx.FormattingEnabled = True
        Me.TipoDePago_cbx.Location = New System.Drawing.Point(739, 122)
        Me.TipoDePago_cbx.Name = "TipoDePago_cbx"
        Me.TipoDePago_cbx.Size = New System.Drawing.Size(449, 21)
        Me.TipoDePago_cbx.TabIndex = 48
        Me.TipoDePago_cbx.ValueMember = "LocalID"
        '
        'Tipo_De_Pago
        '
        Me.Tipo_De_Pago.BackColor = System.Drawing.Color.Green
        Me.Tipo_De_Pago.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.Tipo_De_Pago.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Tipo_De_Pago.Font = New System.Drawing.Font("Microsoft Tai Le", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Tipo_De_Pago.ForeColor = System.Drawing.SystemColors.ButtonFace
        Me.Tipo_De_Pago.Location = New System.Drawing.Point(603, 120)
        Me.Tipo_De_Pago.Name = "Tipo_De_Pago"
        Me.Tipo_De_Pago.Size = New System.Drawing.Size(130, 23)
        Me.Tipo_De_Pago.TabIndex = 47
        Me.Tipo_De_Pago.Text = "Añadir Tipo de Pago"
        Me.Tipo_De_Pago.UseVisualStyleBackColor = False
        '
        'Buscar_Producto
        '
        Me.Buscar_Producto.BackColor = System.Drawing.Color.Red
        Me.Buscar_Producto.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.Buscar_Producto.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Buscar_Producto.Font = New System.Drawing.Font("Microsoft Tai Le", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Buscar_Producto.ForeColor = System.Drawing.SystemColors.ButtonFace
        Me.Buscar_Producto.Location = New System.Drawing.Point(12, 591)
        Me.Buscar_Producto.Name = "Buscar_Producto"
        Me.Buscar_Producto.Size = New System.Drawing.Size(115, 23)
        Me.Buscar_Producto.TabIndex = 41
        Me.Buscar_Producto.Text = "Buscar Producto"
        Me.Buscar_Producto.UseVisualStyleBackColor = False
        '
        'Subtotal_tbx
        '
        Me.Subtotal_tbx.Location = New System.Drawing.Point(461, 592)
        Me.Subtotal_tbx.Name = "Subtotal_tbx"
        Me.Subtotal_tbx.Size = New System.Drawing.Size(136, 20)
        Me.Subtotal_tbx.TabIndex = 49
        '
        'TextBox1
        '
        Me.TextBox1.Location = New System.Drawing.Point(133, 592)
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.Size = New System.Drawing.Size(136, 20)
        Me.TextBox1.TabIndex = 50
        '
        'frmCarrito
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackgroundImage = Global.Ferreteria.My.Resources.Resources.ShoppingCart
        Me.ClientSize = New System.Drawing.Size(1412, 694)
        Me.Controls.Add(Me.TextBox1)
        Me.Controls.Add(Me.Subtotal_tbx)
        Me.Controls.Add(Me.TipoDePago_cbx)
        Me.Controls.Add(Me.Tipo_De_Pago)
        Me.Controls.Add(Me.Facturacion)
        Me.Controls.Add(Me.ComboBox1)
        Me.Controls.Add(Me.Empleado)
        Me.Controls.Add(Me.Cliente_cbx)
        Me.Controls.Add(Me.Cliente)
        Me.Controls.Add(Me.Buscar_Producto)
        Me.Controls.Add(Me.Agregar_Producto)
        Me.Controls.Add(Me.VerStock)
        Me.Controls.Add(Me.ProductosXLocal_dt)
        Me.Controls.Add(Me.LocalCbx)
        Me.Controls.Add(Me.SalirButton)
        Me.Controls.Add(Me.PictureBox1)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Name = "frmCarrito"
        Me.Text = "frmCarrito"
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.ProductosXLocal_dt, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.FerreteriaLosHermanosDataSet9BindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.FerreteriaLosHermanosDataSet9, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.FerreteriaLosHermanosDataSet8, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.SpStockLocalXProductoBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents PictureBox1 As PictureBox
    Friend WithEvents SalirButton As Button
    Friend WithEvents LocalCbx As ComboBox
    Friend WithEvents ProductosXLocal_dt As DataGridView
    Friend WithEvents FerreteriaLosHermanosDataSet9BindingSource As BindingSource
    Friend WithEvents FerreteriaLosHermanosDataSet9 As FerreteriaLosHermanosDataSet9
    Friend WithEvents FerreteriaLosHermanosDataSet8 As FerreteriaLosHermanosDataSet8
    Friend WithEvents SpStockLocalXProductoBindingSource As BindingSource
    Friend WithEvents Sp_StockLocalXProductoTableAdapter As FerreteriaLosHermanosDataSet8TableAdapters.sp_StockLocalXProductoTableAdapter
    Friend WithEvents VerStock As Button
    Friend WithEvents Agregar_Producto As Button
    Friend WithEvents Cliente As Button
    Friend WithEvents Cliente_cbx As ComboBox
    Friend WithEvents Empleado As Button
    Friend WithEvents ComboBox1 As ComboBox
    Friend WithEvents Facturacion As Button
    Friend WithEvents TipoDePago_cbx As ComboBox
    Friend WithEvents Tipo_De_Pago As Button
    Friend WithEvents Buscar_Producto As Button
    Friend WithEvents Subtotal_tbx As TextBox
    Friend WithEvents TextBox1 As TextBox
End Class
