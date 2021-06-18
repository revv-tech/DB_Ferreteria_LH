<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmClientes
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(frmClientes))
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.Cliente_cbx = New System.Windows.Forms.ComboBox()
        Me.Label11 = New System.Windows.Forms.Label()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.Tel_Tbx = New System.Windows.Forms.TextBox()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.Correo_Tbx = New System.Windows.Forms.TextBox()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.Dir_Tbx = New System.Windows.Forms.TextBox()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Nombre_Tbx = New System.Windows.Forms.TextBox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.ID_tbx = New System.Windows.Forms.TextBox()
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.SeleccionarButton = New System.Windows.Forms.Button()
        Me.Label8 = New System.Windows.Forms.Label()
        Me.Label9 = New System.Windows.Forms.Label()
        Me.Label10 = New System.Windows.Forms.Label()
        Me.NuevoButton = New System.Windows.Forms.Button()
        Me.SalirButton = New System.Windows.Forms.Button()
        Me.EliminarButton = New System.Windows.Forms.Button()
        Me.ModificarButton = New System.Windows.Forms.Button()
        Me.ClientesBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.FerreteriaLosHermanosDataSet = New Ferreteria.FerreteriaLosHermanosDataSet()
        Me.ClientesTableAdapter = New Ferreteria.FerreteriaLosHermanosDataSetTableAdapters.ClientesTableAdapter()
        Me.FrmClientesBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.GroupBox1.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        CType(Me.ClientesBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.FerreteriaLosHermanosDataSet, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.FrmClientesBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.Cliente_cbx)
        Me.GroupBox1.Controls.Add(Me.Label11)
        Me.GroupBox1.Controls.Add(Me.Label6)
        Me.GroupBox1.Controls.Add(Me.Tel_Tbx)
        Me.GroupBox1.Controls.Add(Me.Label5)
        Me.GroupBox1.Controls.Add(Me.Correo_Tbx)
        Me.GroupBox1.Controls.Add(Me.Label4)
        Me.GroupBox1.Controls.Add(Me.Dir_Tbx)
        Me.GroupBox1.Controls.Add(Me.Label3)
        Me.GroupBox1.Controls.Add(Me.Nombre_Tbx)
        Me.GroupBox1.Controls.Add(Me.Label2)
        Me.GroupBox1.Controls.Add(Me.Label1)
        Me.GroupBox1.Controls.Add(Me.ID_tbx)
        Me.GroupBox1.Location = New System.Drawing.Point(12, 12)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(752, 270)
        Me.GroupBox1.TabIndex = 5
        Me.GroupBox1.TabStop = False
        '
        'Cliente_cbx
        '
        Me.Cliente_cbx.DisplayMember = "Nombre"
        Me.Cliente_cbx.FormattingEnabled = True
        Me.Cliente_cbx.Location = New System.Drawing.Point(130, 243)
        Me.Cliente_cbx.Name = "Cliente_cbx"
        Me.Cliente_cbx.Size = New System.Drawing.Size(606, 21)
        Me.Cliente_cbx.TabIndex = 34
        Me.Cliente_cbx.ValueMember = "LocalID"
        '
        'Label11
        '
        Me.Label11.AutoSize = True
        Me.Label11.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label11.Location = New System.Drawing.Point(10, 244)
        Me.Label11.Name = "Label11"
        Me.Label11.Size = New System.Drawing.Size(103, 16)
        Me.Label11.TabIndex = 33
        Me.Label11.Text = "Ver Datos de:"
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label6.Location = New System.Drawing.Point(495, 187)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(35, 16)
        Me.Label6.TabIndex = 11
        Me.Label6.Text = "Tel."
        '
        'Tel_Tbx
        '
        Me.Tel_Tbx.Location = New System.Drawing.Point(539, 187)
        Me.Tel_Tbx.Name = "Tel_Tbx"
        Me.Tel_Tbx.Size = New System.Drawing.Size(206, 20)
        Me.Tel_Tbx.TabIndex = 10
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label5.Location = New System.Drawing.Point(6, 184)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(55, 16)
        Me.Label5.TabIndex = 9
        Me.Label5.Text = "Correo"
        '
        'Correo_Tbx
        '
        Me.Correo_Tbx.Location = New System.Drawing.Point(87, 186)
        Me.Correo_Tbx.Name = "Correo_Tbx"
        Me.Correo_Tbx.Size = New System.Drawing.Size(394, 20)
        Me.Correo_Tbx.TabIndex = 8
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label4.Location = New System.Drawing.Point(6, 68)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(74, 16)
        Me.Label4.TabIndex = 7
        Me.Label4.Text = "Dirección"
        '
        'Dir_Tbx
        '
        Me.Dir_Tbx.Location = New System.Drawing.Point(87, 67)
        Me.Dir_Tbx.Multiline = True
        Me.Dir_Tbx.Name = "Dir_Tbx"
        Me.Dir_Tbx.Size = New System.Drawing.Size(658, 91)
        Me.Dir_Tbx.TabIndex = 6
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label3.Location = New System.Drawing.Point(192, 33)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(141, 16)
        Me.Label3.TabIndex = 4
        Me.Label3.Text = "Nombre del Cliente"
        '
        'Nombre_Tbx
        '
        Me.Nombre_Tbx.Location = New System.Drawing.Point(368, 32)
        Me.Nombre_Tbx.Name = "Nombre_Tbx"
        Me.Nombre_Tbx.Size = New System.Drawing.Size(368, 20)
        Me.Nombre_Tbx.TabIndex = 3
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.BackColor = System.Drawing.SystemColors.Control
        Me.Label2.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.Location = New System.Drawing.Point(74, 6)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(64, 16)
        Me.Label2.TabIndex = 2
        Me.Label2.Text = "Clientes"
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
        'ID_tbx
        '
        Me.ID_tbx.Location = New System.Drawing.Point(37, 32)
        Me.ID_tbx.Name = "ID_tbx"
        Me.ID_tbx.Size = New System.Drawing.Size(140, 20)
        Me.ID_tbx.TabIndex = 0
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.Label7)
        Me.GroupBox2.Controls.Add(Me.SeleccionarButton)
        Me.GroupBox2.Controls.Add(Me.Label8)
        Me.GroupBox2.Controls.Add(Me.Label9)
        Me.GroupBox2.Controls.Add(Me.Label10)
        Me.GroupBox2.Controls.Add(Me.NuevoButton)
        Me.GroupBox2.Controls.Add(Me.SalirButton)
        Me.GroupBox2.Controls.Add(Me.EliminarButton)
        Me.GroupBox2.Controls.Add(Me.ModificarButton)
        Me.GroupBox2.Location = New System.Drawing.Point(13, 288)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(752, 150)
        Me.GroupBox2.TabIndex = 24
        Me.GroupBox2.TabStop = False
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label7.Location = New System.Drawing.Point(229, 134)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(91, 16)
        Me.Label7.TabIndex = 26
        Me.Label7.Text = "Seleccionar"
        '
        'SeleccionarButton
        '
        Me.SeleccionarButton.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.SeleccionarButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.SeleccionarButton.Image = Global.Ferreteria.My.Resources.Resources.disco_flexible
        Me.SeleccionarButton.Location = New System.Drawing.Point(223, 23)
        Me.SeleccionarButton.Name = "SeleccionarButton"
        Me.SeleccionarButton.Size = New System.Drawing.Size(110, 107)
        Me.SeleccionarButton.TabIndex = 25
        Me.SeleccionarButton.UseVisualStyleBackColor = True
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label8.Location = New System.Drawing.Point(138, 131)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(72, 16)
        Me.Label8.TabIndex = 8
        Me.Label8.Text = "Modificar"
        '
        'Label9
        '
        Me.Label9.AutoSize = True
        Me.Label9.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label9.Location = New System.Drawing.Point(30, 131)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(60, 16)
        Me.Label9.TabIndex = 7
        Me.Label9.Text = "Insertar"
        '
        'Label10
        '
        Me.Label10.AutoSize = True
        Me.Label10.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label10.Location = New System.Drawing.Point(353, 133)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(64, 16)
        Me.Label10.TabIndex = 6
        Me.Label10.Text = "Eliminar"
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
        Me.SalirButton.Location = New System.Drawing.Point(645, 26)
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
        'ClientesBindingSource
        '
        Me.ClientesBindingSource.DataMember = "Clientes"
        Me.ClientesBindingSource.DataSource = Me.FerreteriaLosHermanosDataSet
        '
        'FerreteriaLosHermanosDataSet
        '
        Me.FerreteriaLosHermanosDataSet.DataSetName = "FerreteriaLosHermanosDataSet"
        Me.FerreteriaLosHermanosDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'ClientesTableAdapter
        '
        Me.ClientesTableAdapter.ClearBeforeFill = True
        '
        'FrmClientesBindingSource
        '
        Me.FrmClientesBindingSource.DataSource = GetType(Ferreteria.frmClientes)
        '
        'frmClientes
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(767, 450)
        Me.Controls.Add(Me.GroupBox2)
        Me.Controls.Add(Me.GroupBox1)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Name = "frmClientes"
        Me.Text = "frmClientes"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        CType(Me.ClientesBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.FerreteriaLosHermanosDataSet, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.FrmClientesBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents GroupBox1 As GroupBox
    Friend WithEvents Label6 As Label
    Friend WithEvents Tel_Tbx As TextBox
    Friend WithEvents Label5 As Label
    Friend WithEvents Correo_Tbx As TextBox
    Friend WithEvents Label4 As Label
    Friend WithEvents Dir_Tbx As TextBox
    Friend WithEvents Label3 As Label
    Friend WithEvents Nombre_Tbx As TextBox
    Friend WithEvents Label2 As Label
    Friend WithEvents Label1 As Label
    Friend WithEvents ID_tbx As TextBox
    Friend WithEvents GroupBox2 As GroupBox
    Friend WithEvents Label8 As Label
    Friend WithEvents Label9 As Label
    Friend WithEvents Label10 As Label
    Friend WithEvents NuevoButton As Button
    Friend WithEvents SalirButton As Button
    Friend WithEvents EliminarButton As Button
    Friend WithEvents ModificarButton As Button
    Friend WithEvents FrmClientesBindingSource As BindingSource
    Friend WithEvents FerreteriaLosHermanosDataSet As FerreteriaLosHermanosDataSet
    Friend WithEvents ClientesBindingSource As BindingSource
    Friend WithEvents ClientesTableAdapter As FerreteriaLosHermanosDataSetTableAdapters.ClientesTableAdapter
    Friend WithEvents Cliente_cbx As ComboBox
    Friend WithEvents Label11 As Label
    Friend WithEvents Label7 As Label
    Friend WithEvents SeleccionarButton As Button
End Class
