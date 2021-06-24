<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Carrito
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
        Dim DataGridViewCellStyle1 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim DataGridViewCellStyle2 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Carrito))
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
        Me.Empleado_cbx = New System.Windows.Forms.ComboBox()
        Me.Facturacion = New System.Windows.Forms.Button()
        Me.TipoDeVenta_cbx = New System.Windows.Forms.ComboBox()
        Me.Tipo_De_Pago = New System.Windows.Forms.Button()
        Me.Buscar_Producto = New System.Windows.Forms.Button()
        Me.Subtotal_tbx = New System.Windows.Forms.TextBox()
        Me.TextBox1 = New System.Windows.Forms.TextBox()
        Me.Facturacion_Button = New System.Windows.Forms.Button()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.Agregar_Pro = New System.Windows.Forms.ComboBox()
        Me.Button2 = New System.Windows.Forms.Button()
        Me.Cantidad_Producto = New System.Windows.Forms.TextBox()
        Me.Agregar_Button = New System.Windows.Forms.Button()
        Me.Total_tbx = New System.Windows.Forms.TextBox()
        Me.Button5 = New System.Windows.Forms.Button()
        Me.Impuesto_tbx = New System.Windows.Forms.TextBox()
        Me.Button6 = New System.Windows.Forms.Button()
        Me.Reinicia = New System.Windows.Forms.Button()
        Me.Factura_Pedidos = New System.Windows.Forms.DataGridView()
        Me.PDF_Factura = New System.Windows.Forms.Button()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.ProductosXLocal_dt, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.FerreteriaLosHermanosDataSet9BindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.FerreteriaLosHermanosDataSet9, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.FerreteriaLosHermanosDataSet8, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.SpStockLocalXProductoBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.Factura_Pedidos, System.ComponentModel.ISupportInitialize).BeginInit()
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
        Me.SalirButton.Location = New System.Drawing.Point(1261, 568)
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
        Me.ProductosXLocal_dt.BackgroundColor = System.Drawing.SystemColors.Window
        Me.ProductosXLocal_dt.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None
        DataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft
        DataGridViewCellStyle1.BackColor = System.Drawing.Color.SeaGreen
        DataGridViewCellStyle1.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        DataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.Window
        DataGridViewCellStyle1.SelectionBackColor = System.Drawing.Color.Lime
        DataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.HighlightText
        DataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.[True]
        Me.ProductosXLocal_dt.ColumnHeadersDefaultCellStyle = DataGridViewCellStyle1
        Me.ProductosXLocal_dt.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.ProductosXLocal_dt.GridColor = System.Drawing.Color.ForestGreen
        Me.ProductosXLocal_dt.Location = New System.Drawing.Point(12, 35)
        Me.ProductosXLocal_dt.Name = "ProductosXLocal_dt"
        Me.ProductosXLocal_dt.ReadOnly = True
        Me.ProductosXLocal_dt.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None
        Me.ProductosXLocal_dt.RowHeadersVisible = False
        Me.ProductosXLocal_dt.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
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
        Me.Agregar_Producto.BackColor = System.Drawing.Color.Green
        Me.Agregar_Producto.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.Agregar_Producto.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Agregar_Producto.Font = New System.Drawing.Font("Microsoft Tai Le", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Agregar_Producto.ForeColor = System.Drawing.SystemColors.ButtonFace
        Me.Agregar_Producto.Location = New System.Drawing.Point(603, 590)
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
        Me.Empleado.Text = "Buscar Empleado"
        Me.Empleado.UseVisualStyleBackColor = False
        '
        'Empleado_cbx
        '
        Me.Empleado_cbx.DisplayMember = "Nombre"
        Me.Empleado_cbx.FormattingEnabled = True
        Me.Empleado_cbx.Location = New System.Drawing.Point(739, 93)
        Me.Empleado_cbx.Name = "Empleado_cbx"
        Me.Empleado_cbx.Size = New System.Drawing.Size(449, 21)
        Me.Empleado_cbx.TabIndex = 45
        Me.Empleado_cbx.ValueMember = "LocalID"
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
        'TipoDeVenta_cbx
        '
        Me.TipoDeVenta_cbx.DisplayMember = "Nombre"
        Me.TipoDeVenta_cbx.FormattingEnabled = True
        Me.TipoDeVenta_cbx.Location = New System.Drawing.Point(739, 122)
        Me.TipoDeVenta_cbx.Name = "TipoDeVenta_cbx"
        Me.TipoDeVenta_cbx.Size = New System.Drawing.Size(449, 21)
        Me.TipoDeVenta_cbx.TabIndex = 48
        Me.TipoDeVenta_cbx.ValueMember = "LocalID"
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
        Me.Subtotal_tbx.Location = New System.Drawing.Point(724, 591)
        Me.Subtotal_tbx.Name = "Subtotal_tbx"
        Me.Subtotal_tbx.Size = New System.Drawing.Size(136, 20)
        Me.Subtotal_tbx.TabIndex = 49
        '
        'TextBox1
        '
        Me.TextBox1.Location = New System.Drawing.Point(133, 592)
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.Size = New System.Drawing.Size(464, 20)
        Me.TextBox1.TabIndex = 50
        '
        'Facturacion_Button
        '
        Me.Facturacion_Button.BackColor = System.Drawing.Color.Green
        Me.Facturacion_Button.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.Facturacion_Button.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Facturacion_Button.Font = New System.Drawing.Font("Microsoft Tai Le", 10.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Facturacion_Button.ForeColor = System.Drawing.SystemColors.ButtonFace
        Me.Facturacion_Button.Location = New System.Drawing.Point(1231, 138)
        Me.Facturacion_Button.Name = "Facturacion_Button"
        Me.Facturacion_Button.Size = New System.Drawing.Size(130, 47)
        Me.Facturacion_Button.TabIndex = 51
        Me.Facturacion_Button.Text = "Finalizar Compra"
        Me.Facturacion_Button.UseVisualStyleBackColor = False
        '
        'Button1
        '
        Me.Button1.BackColor = System.Drawing.Color.RoyalBlue
        Me.Button1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.Button1.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Button1.Font = New System.Drawing.Font("Microsoft Tai Le", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Button1.ForeColor = System.Drawing.SystemColors.ButtonFace
        Me.Button1.Location = New System.Drawing.Point(603, 149)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(130, 23)
        Me.Button1.TabIndex = 52
        Me.Button1.Text = "Producto:"
        Me.Button1.UseVisualStyleBackColor = False
        '
        'Agregar_Pro
        '
        Me.Agregar_Pro.DisplayMember = "Nombre"
        Me.Agregar_Pro.FormattingEnabled = True
        Me.Agregar_Pro.Location = New System.Drawing.Point(739, 151)
        Me.Agregar_Pro.Name = "Agregar_Pro"
        Me.Agregar_Pro.Size = New System.Drawing.Size(316, 21)
        Me.Agregar_Pro.TabIndex = 53
        Me.Agregar_Pro.ValueMember = "LocalID"
        '
        'Button2
        '
        Me.Button2.BackColor = System.Drawing.Color.RoyalBlue
        Me.Button2.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.Button2.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Button2.Font = New System.Drawing.Font("Microsoft Tai Le", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Button2.ForeColor = System.Drawing.SystemColors.ButtonFace
        Me.Button2.Location = New System.Drawing.Point(603, 178)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(130, 23)
        Me.Button2.TabIndex = 54
        Me.Button2.Text = "Cantidad:"
        Me.Button2.UseVisualStyleBackColor = False
        '
        'Cantidad_Producto
        '
        Me.Cantidad_Producto.Location = New System.Drawing.Point(739, 179)
        Me.Cantidad_Producto.Name = "Cantidad_Producto"
        Me.Cantidad_Producto.Size = New System.Drawing.Size(165, 20)
        Me.Cantidad_Producto.TabIndex = 55
        '
        'Agregar_Button
        '
        Me.Agregar_Button.BackColor = System.Drawing.Color.Red
        Me.Agregar_Button.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.Agregar_Button.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Agregar_Button.Font = New System.Drawing.Font("Microsoft Tai Le", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Agregar_Button.ForeColor = System.Drawing.SystemColors.ButtonFace
        Me.Agregar_Button.Location = New System.Drawing.Point(1070, 151)
        Me.Agregar_Button.Name = "Agregar_Button"
        Me.Agregar_Button.Size = New System.Drawing.Size(118, 48)
        Me.Agregar_Button.TabIndex = 56
        Me.Agregar_Button.Text = "Agregar Producto"
        Me.Agregar_Button.UseVisualStyleBackColor = False
        '
        'Total_tbx
        '
        Me.Total_tbx.Location = New System.Drawing.Point(1052, 591)
        Me.Total_tbx.Name = "Total_tbx"
        Me.Total_tbx.Size = New System.Drawing.Size(136, 20)
        Me.Total_tbx.TabIndex = 61
        '
        'Button5
        '
        Me.Button5.BackColor = System.Drawing.Color.Green
        Me.Button5.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.Button5.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Button5.Font = New System.Drawing.Font("Microsoft Tai Le", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Button5.ForeColor = System.Drawing.SystemColors.ButtonFace
        Me.Button5.Location = New System.Drawing.Point(931, 590)
        Me.Button5.Name = "Button5"
        Me.Button5.Size = New System.Drawing.Size(115, 23)
        Me.Button5.TabIndex = 60
        Me.Button5.Text = "Total:"
        Me.Button5.UseVisualStyleBackColor = False
        '
        'Impuesto_tbx
        '
        Me.Impuesto_tbx.Location = New System.Drawing.Point(724, 623)
        Me.Impuesto_tbx.Name = "Impuesto_tbx"
        Me.Impuesto_tbx.Size = New System.Drawing.Size(136, 20)
        Me.Impuesto_tbx.TabIndex = 63
        '
        'Button6
        '
        Me.Button6.BackColor = System.Drawing.Color.Green
        Me.Button6.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.Button6.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Button6.Font = New System.Drawing.Font("Microsoft Tai Le", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Button6.ForeColor = System.Drawing.SystemColors.ButtonFace
        Me.Button6.Location = New System.Drawing.Point(603, 622)
        Me.Button6.Name = "Button6"
        Me.Button6.Size = New System.Drawing.Size(115, 23)
        Me.Button6.TabIndex = 62
        Me.Button6.Text = "Impuesto"
        Me.Button6.UseVisualStyleBackColor = False
        '
        'Reinicia
        '
        Me.Reinicia.BackColor = System.Drawing.Color.RoyalBlue
        Me.Reinicia.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.Reinicia.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Reinicia.Font = New System.Drawing.Font("Microsoft Tai Le", 10.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Reinicia.ForeColor = System.Drawing.SystemColors.ButtonFace
        Me.Reinicia.Location = New System.Drawing.Point(1231, 191)
        Me.Reinicia.Name = "Reinicia"
        Me.Reinicia.Size = New System.Drawing.Size(130, 45)
        Me.Reinicia.TabIndex = 64
        Me.Reinicia.Text = "Nueva Compra"
        Me.Reinicia.UseVisualStyleBackColor = False
        '
        'Factura_Pedidos
        '
        Me.Factura_Pedidos.AllowUserToAddRows = False
        Me.Factura_Pedidos.AllowUserToDeleteRows = False
        Me.Factura_Pedidos.BackgroundColor = System.Drawing.SystemColors.Window
        Me.Factura_Pedidos.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None
        DataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft
        DataGridViewCellStyle2.BackColor = System.Drawing.Color.SeaGreen
        DataGridViewCellStyle2.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        DataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.Window
        DataGridViewCellStyle2.SelectionBackColor = System.Drawing.Color.Lime
        DataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText
        DataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.[True]
        Me.Factura_Pedidos.ColumnHeadersDefaultCellStyle = DataGridViewCellStyle2
        Me.Factura_Pedidos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.Factura_Pedidos.GridColor = System.Drawing.Color.ForestGreen
        Me.Factura_Pedidos.Location = New System.Drawing.Point(603, 207)
        Me.Factura_Pedidos.Name = "Factura_Pedidos"
        Me.Factura_Pedidos.ReadOnly = True
        Me.Factura_Pedidos.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None
        Me.Factura_Pedidos.RowHeadersVisible = False
        Me.Factura_Pedidos.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.Factura_Pedidos.Size = New System.Drawing.Size(585, 379)
        Me.Factura_Pedidos.TabIndex = 65
        '
        'PDF_Factura
        '
        Me.PDF_Factura.BackColor = System.Drawing.Color.RoyalBlue
        Me.PDF_Factura.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.PDF_Factura.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.PDF_Factura.Font = New System.Drawing.Font("Microsoft Tai Le", 10.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.PDF_Factura.ForeColor = System.Drawing.SystemColors.ButtonFace
        Me.PDF_Factura.Location = New System.Drawing.Point(931, 620)
        Me.PDF_Factura.Name = "PDF_Factura"
        Me.PDF_Factura.Size = New System.Drawing.Size(257, 47)
        Me.PDF_Factura.TabIndex = 66
        Me.PDF_Factura.Text = "Ver Factura"
        Me.PDF_Factura.UseVisualStyleBackColor = False
        '
        'Carrito
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackgroundImage = Global.Ferreteria.My.Resources.Resources.ShoppingCart
        Me.ClientSize = New System.Drawing.Size(1412, 694)
        Me.Controls.Add(Me.PDF_Factura)
        Me.Controls.Add(Me.Factura_Pedidos)
        Me.Controls.Add(Me.Reinicia)
        Me.Controls.Add(Me.Impuesto_tbx)
        Me.Controls.Add(Me.Button6)
        Me.Controls.Add(Me.Total_tbx)
        Me.Controls.Add(Me.Button5)
        Me.Controls.Add(Me.Agregar_Button)
        Me.Controls.Add(Me.Cantidad_Producto)
        Me.Controls.Add(Me.Button2)
        Me.Controls.Add(Me.Agregar_Pro)
        Me.Controls.Add(Me.Button1)
        Me.Controls.Add(Me.Facturacion_Button)
        Me.Controls.Add(Me.TextBox1)
        Me.Controls.Add(Me.Subtotal_tbx)
        Me.Controls.Add(Me.TipoDeVenta_cbx)
        Me.Controls.Add(Me.Tipo_De_Pago)
        Me.Controls.Add(Me.Facturacion)
        Me.Controls.Add(Me.Empleado_cbx)
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
        Me.Name = "Carrito"
        Me.Text = "Carrito"
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.ProductosXLocal_dt, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.FerreteriaLosHermanosDataSet9BindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.FerreteriaLosHermanosDataSet9, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.FerreteriaLosHermanosDataSet8, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.SpStockLocalXProductoBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.Factura_Pedidos, System.ComponentModel.ISupportInitialize).EndInit()
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
    Friend WithEvents Empleado_cbx As ComboBox
    Friend WithEvents Facturacion As Button
    Friend WithEvents TipoDeVenta_cbx As ComboBox
    Friend WithEvents Tipo_De_Pago As Button
    Friend WithEvents Buscar_Producto As Button
    Friend WithEvents Subtotal_tbx As TextBox
    Friend WithEvents TextBox1 As TextBox
    Friend WithEvents Facturacion_Button As Button
    Friend WithEvents Button1 As Button
    Friend WithEvents Agregar_Pro As ComboBox
    Public WithEvents Button2 As Button
    Friend WithEvents Cantidad_Producto As TextBox
    Friend WithEvents Agregar_Button As Button
    Friend WithEvents Total_tbx As TextBox
    Friend WithEvents Button5 As Button
    Friend WithEvents Impuesto_tbx As TextBox
    Friend WithEvents Button6 As Button
    Friend WithEvents Reinicia As Button
    Friend WithEvents Factura_Pedidos As DataGridView
    Friend WithEvents PDF_Factura As Button
End Class
