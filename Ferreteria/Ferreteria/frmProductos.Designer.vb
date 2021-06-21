<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmProductos
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(frmProductos))
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.TextBox1 = New System.Windows.Forms.TextBox()
        Me.Label13 = New System.Windows.Forms.Label()
        Me.LocalCbx = New System.Windows.Forms.ComboBox()
        Me.Productos_cbx = New System.Windows.Forms.ComboBox()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.Proveedor_cbx = New System.Windows.Forms.ComboBox()
        Me.MedidaCbx = New System.Windows.Forms.ComboBox()
        Me.CategoriaCbx = New System.Windows.Forms.ComboBox()
        Me.Label8 = New System.Windows.Forms.Label()
        Me.Categoria = New System.Windows.Forms.Label()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.Precio_Tbx = New System.Windows.Forms.TextBox()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Nombre_Tbx = New System.Windows.Forms.TextBox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.ID_Txb = New System.Windows.Forms.TextBox()
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.Label9 = New System.Windows.Forms.Label()
        Me.Label10 = New System.Windows.Forms.Label()
        Me.Label11 = New System.Windows.Forms.Label()
        Me.NuevoButton = New System.Windows.Forms.Button()
        Me.SalirButton = New System.Windows.Forms.Button()
        Me.EliminarButton = New System.Windows.Forms.Button()
        Me.SeleccionarButton = New System.Windows.Forms.Button()
        Me.ModificarButton = New System.Windows.Forms.Button()
        Me.VerStock = New System.Windows.Forms.Button()
        Me.GroupBox1.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.VerStock)
        Me.GroupBox1.Controls.Add(Me.TextBox1)
        Me.GroupBox1.Controls.Add(Me.Label13)
        Me.GroupBox1.Controls.Add(Me.LocalCbx)
        Me.GroupBox1.Controls.Add(Me.Productos_cbx)
        Me.GroupBox1.Controls.Add(Me.Label7)
        Me.GroupBox1.Controls.Add(Me.Proveedor_cbx)
        Me.GroupBox1.Controls.Add(Me.MedidaCbx)
        Me.GroupBox1.Controls.Add(Me.CategoriaCbx)
        Me.GroupBox1.Controls.Add(Me.Label8)
        Me.GroupBox1.Controls.Add(Me.Categoria)
        Me.GroupBox1.Controls.Add(Me.Label6)
        Me.GroupBox1.Controls.Add(Me.Precio_Tbx)
        Me.GroupBox1.Controls.Add(Me.Label4)
        Me.GroupBox1.Controls.Add(Me.Label3)
        Me.GroupBox1.Controls.Add(Me.Nombre_Tbx)
        Me.GroupBox1.Controls.Add(Me.Label2)
        Me.GroupBox1.Controls.Add(Me.Label1)
        Me.GroupBox1.Controls.Add(Me.ID_Txb)
        Me.GroupBox1.Location = New System.Drawing.Point(12, 12)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(856, 192)
        Me.GroupBox1.TabIndex = 3
        Me.GroupBox1.TabStop = False
        '
        'TextBox1
        '
        Me.TextBox1.Location = New System.Drawing.Point(710, 123)
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.Size = New System.Drawing.Size(130, 20)
        Me.TextBox1.TabIndex = 38
        '
        'Label13
        '
        Me.Label13.AutoSize = True
        Me.Label13.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label13.Location = New System.Drawing.Point(470, 95)
        Me.Label13.Name = "Label13"
        Me.Label13.Size = New System.Drawing.Size(46, 16)
        Me.Label13.TabIndex = 37
        Me.Label13.Text = "Local"
        '
        'LocalCbx
        '
        Me.LocalCbx.FormattingEnabled = True
        Me.LocalCbx.Location = New System.Drawing.Point(530, 94)
        Me.LocalCbx.Name = "LocalCbx"
        Me.LocalCbx.Size = New System.Drawing.Size(310, 21)
        Me.LocalCbx.TabIndex = 36
        '
        'Productos_cbx
        '
        Me.Productos_cbx.DisplayMember = "Nombre"
        Me.Productos_cbx.FormattingEnabled = True
        Me.Productos_cbx.Location = New System.Drawing.Point(121, 165)
        Me.Productos_cbx.Name = "Productos_cbx"
        Me.Productos_cbx.Size = New System.Drawing.Size(606, 21)
        Me.Productos_cbx.TabIndex = 34
        Me.Productos_cbx.ValueMember = "LocalID"
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label7.Location = New System.Drawing.Point(1, 166)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(103, 16)
        Me.Label7.TabIndex = 33
        Me.Label7.Text = "Ver Datos de:"
        '
        'Proveedor_cbx
        '
        Me.Proveedor_cbx.FormattingEnabled = True
        Me.Proveedor_cbx.Location = New System.Drawing.Point(121, 63)
        Me.Proveedor_cbx.Name = "Proveedor_cbx"
        Me.Proveedor_cbx.Size = New System.Drawing.Size(310, 21)
        Me.Proveedor_cbx.TabIndex = 18
        '
        'MedidaCbx
        '
        Me.MedidaCbx.FormattingEnabled = True
        Me.MedidaCbx.Location = New System.Drawing.Point(121, 118)
        Me.MedidaCbx.Name = "MedidaCbx"
        Me.MedidaCbx.Size = New System.Drawing.Size(310, 21)
        Me.MedidaCbx.TabIndex = 17
        '
        'CategoriaCbx
        '
        Me.CategoriaCbx.FormattingEnabled = True
        Me.CategoriaCbx.Location = New System.Drawing.Point(121, 90)
        Me.CategoriaCbx.Name = "CategoriaCbx"
        Me.CategoriaCbx.Size = New System.Drawing.Size(310, 21)
        Me.CategoriaCbx.TabIndex = 16
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label8.Location = New System.Drawing.Point(6, 118)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(60, 16)
        Me.Label8.TabIndex = 15
        Me.Label8.Text = "Medida"
        '
        'Categoria
        '
        Me.Categoria.AutoSize = True
        Me.Categoria.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Categoria.Location = New System.Drawing.Point(6, 91)
        Me.Categoria.Name = "Categoria"
        Me.Categoria.Size = New System.Drawing.Size(76, 16)
        Me.Categoria.TabIndex = 13
        Me.Categoria.Text = "Categoría"
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label6.Location = New System.Drawing.Point(471, 64)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(53, 16)
        Me.Label6.TabIndex = 11
        Me.Label6.Text = "Precio"
        '
        'Precio_Tbx
        '
        Me.Precio_Tbx.Location = New System.Drawing.Point(530, 63)
        Me.Precio_Tbx.Name = "Precio_Tbx"
        Me.Precio_Tbx.Size = New System.Drawing.Size(310, 20)
        Me.Precio_Tbx.TabIndex = 10
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label4.Location = New System.Drawing.Point(6, 68)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(85, 16)
        Me.Label4.TabIndex = 7
        Me.Label4.Text = "Proveedor "
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label3.Location = New System.Drawing.Point(196, 23)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(155, 16)
        Me.Label3.TabIndex = 4
        Me.Label3.Text = "Nombre del Producto"
        '
        'Nombre_Tbx
        '
        Me.Nombre_Tbx.Location = New System.Drawing.Point(368, 19)
        Me.Nombre_Tbx.Name = "Nombre_Tbx"
        Me.Nombre_Tbx.Size = New System.Drawing.Size(472, 20)
        Me.Nombre_Tbx.TabIndex = 3
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.BackColor = System.Drawing.SystemColors.Control
        Me.Label2.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.Location = New System.Drawing.Point(74, 6)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(78, 16)
        Me.Label2.TabIndex = 2
        Me.Label2.Text = "Productos"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(6, 36)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(23, 16)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "ID" & Global.Microsoft.VisualBasic.ChrW(13) & Global.Microsoft.VisualBasic.ChrW(10)
        '
        'ID_Txb
        '
        Me.ID_Txb.Location = New System.Drawing.Point(37, 32)
        Me.ID_Txb.Name = "ID_Txb"
        Me.ID_Txb.Size = New System.Drawing.Size(140, 20)
        Me.ID_Txb.TabIndex = 0
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.Label5)
        Me.GroupBox2.Controls.Add(Me.Label9)
        Me.GroupBox2.Controls.Add(Me.Label10)
        Me.GroupBox2.Controls.Add(Me.Label11)
        Me.GroupBox2.Controls.Add(Me.NuevoButton)
        Me.GroupBox2.Controls.Add(Me.SalirButton)
        Me.GroupBox2.Controls.Add(Me.EliminarButton)
        Me.GroupBox2.Controls.Add(Me.SeleccionarButton)
        Me.GroupBox2.Controls.Add(Me.ModificarButton)
        Me.GroupBox2.Location = New System.Drawing.Point(12, 210)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(856, 150)
        Me.GroupBox2.TabIndex = 27
        Me.GroupBox2.TabStop = False
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label5.Location = New System.Drawing.Point(236, 131)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(91, 16)
        Me.Label5.TabIndex = 9
        Me.Label5.Text = "Seleccionar"
        '
        'Label9
        '
        Me.Label9.AutoSize = True
        Me.Label9.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label9.Location = New System.Drawing.Point(138, 131)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(72, 16)
        Me.Label9.TabIndex = 8
        Me.Label9.Text = "Modificar"
        '
        'Label10
        '
        Me.Label10.AutoSize = True
        Me.Label10.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label10.Location = New System.Drawing.Point(30, 131)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(60, 16)
        Me.Label10.TabIndex = 7
        Me.Label10.Text = "Insertar"
        '
        'Label11
        '
        Me.Label11.AutoSize = True
        Me.Label11.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label11.Location = New System.Drawing.Point(351, 133)
        Me.Label11.Name = "Label11"
        Me.Label11.Size = New System.Drawing.Size(64, 16)
        Me.Label11.TabIndex = 6
        Me.Label11.Text = "Eliminar"
        '
        'NuevoButton
        '
        Me.NuevoButton.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.NuevoButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.NuevoButton.Image = Global.Ferreteria.My.Resources.Resources.new3
        Me.NuevoButton.Location = New System.Drawing.Point(9, 23)
        Me.NuevoButton.Name = "NuevoButton"
        Me.NuevoButton.Size = New System.Drawing.Size(101, 107)
        Me.NuevoButton.TabIndex = 6
        Me.NuevoButton.UseVisualStyleBackColor = True
        '
        'SalirButton
        '
        Me.SalirButton.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.SalirButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.SalirButton.Image = Global.Ferreteria.My.Resources.Resources.salida
        Me.SalirButton.Location = New System.Drawing.Point(750, 29)
        Me.SalirButton.Name = "SalirButton"
        Me.SalirButton.Size = New System.Drawing.Size(100, 101)
        Me.SalirButton.TabIndex = 4
        Me.SalirButton.UseVisualStyleBackColor = True
        '
        'EliminarButton
        '
        Me.EliminarButton.BackColor = System.Drawing.SystemColors.Control
        Me.EliminarButton.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.EliminarButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.EliminarButton.Image = Global.Ferreteria.My.Resources.Resources.borrar_cuenta
        Me.EliminarButton.Location = New System.Drawing.Point(339, 23)
        Me.EliminarButton.Name = "EliminarButton"
        Me.EliminarButton.Size = New System.Drawing.Size(103, 107)
        Me.EliminarButton.TabIndex = 3
        Me.EliminarButton.UseVisualStyleBackColor = False
        '
        'SeleccionarButton
        '
        Me.SeleccionarButton.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.SeleccionarButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.SeleccionarButton.Image = Global.Ferreteria.My.Resources.Resources.disco_flexible
        Me.SeleccionarButton.Location = New System.Drawing.Point(223, 23)
        Me.SeleccionarButton.Name = "SeleccionarButton"
        Me.SeleccionarButton.Size = New System.Drawing.Size(110, 107)
        Me.SeleccionarButton.TabIndex = 2
        Me.SeleccionarButton.UseVisualStyleBackColor = True
        '
        'ModificarButton
        '
        Me.ModificarButton.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.ModificarButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.ModificarButton.Image = Global.Ferreteria.My.Resources.Resources.editar
        Me.ModificarButton.Location = New System.Drawing.Point(116, 23)
        Me.ModificarButton.Name = "ModificarButton"
        Me.ModificarButton.Size = New System.Drawing.Size(101, 107)
        Me.ModificarButton.TabIndex = 1
        Me.ModificarButton.UseVisualStyleBackColor = True
        '
        'VerStock
        '
        Me.VerStock.BackColor = System.Drawing.Color.Green
        Me.VerStock.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.VerStock.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.VerStock.Font = New System.Drawing.Font("Microsoft Tai Le", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.VerStock.ForeColor = System.Drawing.SystemColors.ButtonFace
        Me.VerStock.Location = New System.Drawing.Point(589, 123)
        Me.VerStock.Name = "VerStock"
        Me.VerStock.Size = New System.Drawing.Size(115, 23)
        Me.VerStock.TabIndex = 39
        Me.VerStock.Text = "Ver Stock: "
        Me.VerStock.UseVisualStyleBackColor = False
        '
        'frmProductos
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(880, 372)
        Me.Controls.Add(Me.GroupBox2)
        Me.Controls.Add(Me.GroupBox1)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Name = "frmProductos"
        Me.Text = "Productos"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents GroupBox1 As GroupBox
    Friend WithEvents Label8 As Label
    Friend WithEvents Categoria As Label
    Friend WithEvents Label6 As Label
    Friend WithEvents Precio_Tbx As TextBox
    Friend WithEvents Label4 As Label
    Friend WithEvents Label3 As Label
    Friend WithEvents Nombre_Tbx As TextBox
    Friend WithEvents Label2 As Label
    Friend WithEvents Label1 As Label
    Friend WithEvents ID_Txb As TextBox
    Friend WithEvents GroupBox2 As GroupBox
    Friend WithEvents Label5 As Label
    Friend WithEvents Label9 As Label
    Friend WithEvents Label10 As Label
    Friend WithEvents Label11 As Label
    Friend WithEvents NuevoButton As Button
    Friend WithEvents SalirButton As Button
    Friend WithEvents EliminarButton As Button
    Friend WithEvents SeleccionarButton As Button
    Friend WithEvents ModificarButton As Button
    Friend WithEvents MedidaCbx As ComboBox
    Friend WithEvents Proveedor_cbx As ComboBox
    Friend WithEvents CategoriaCbx As ComboBox
    Friend WithEvents Productos_cbx As ComboBox
    Friend WithEvents Label7 As Label
    Friend WithEvents TextBox1 As TextBox
    Friend WithEvents Label13 As Label
    Friend WithEvents LocalCbx As ComboBox
    Friend WithEvents VerStock As Button
End Class
