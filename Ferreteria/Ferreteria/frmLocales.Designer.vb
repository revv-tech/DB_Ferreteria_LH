<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class frmLocales
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
        Me.components = New System.ComponentModel.Container()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(frmLocales))
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.Tel_Tbx = New System.Windows.Forms.TextBox()
        Me.Correo_Tbx = New System.Windows.Forms.TextBox()
        Me.ID_Tbx = New System.Windows.Forms.TextBox()
        Me.Dir_Tbx = New System.Windows.Forms.TextBox()
        Me.Nombre_Tbx = New System.Windows.Forms.TextBox()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.Label8 = New System.Windows.Forms.Label()
        Me.SeleccionarButton = New System.Windows.Forms.Button()
        Me.Label9 = New System.Windows.Forms.Label()
        Me.Label10 = New System.Windows.Forms.Label()
        Me.Label11 = New System.Windows.Forms.Label()
        Me.NuevoButton = New System.Windows.Forms.Button()
        Me.SalirButton = New System.Windows.Forms.Button()
        Me.EliminarButton = New System.Windows.Forms.Button()
        Me.ModificarButton = New System.Windows.Forms.Button()
        Me.FerreteriaLosHermanosDataSet3 = New Ferreteria.FerreteriaLosHermanosDataSet3()
        Me.LocalesBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.LocalesTableAdapter = New Ferreteria.FerreteriaLosHermanosDataSet3TableAdapters.LocalesTableAdapter()
        Me.LocalesBindingSource1 = New System.Windows.Forms.BindingSource(Me.components)
        Me.FerreteriaLosHermanosDataSet4 = New Ferreteria.FerreteriaLosHermanosDataSet4()
        Me.LocalesTableAdapter1 = New Ferreteria.FerreteriaLosHermanosDataSet4TableAdapters.LocalesTableAdapter()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.FerreteriaLosHermanosDataSet5 = New Ferreteria.FerreteriaLosHermanosDataSet5()
        Me.Sp_SeleccionarLocalesTableAdapter = New Ferreteria.FerreteriaLosHermanosDataSet5TableAdapters.sp_SeleccionarLocalesTableAdapter()
        Me.TableAdapterManager = New Ferreteria.FerreteriaLosHermanosDataSet5TableAdapters.TableAdapterManager()
        Me.LocalCbx = New System.Windows.Forms.ComboBox()
        Me.LocalesBindingSource2 = New System.Windows.Forms.BindingSource(Me.components)
        Me.FerreteriaLosHermanosDataSet7 = New Ferreteria.FerreteriaLosHermanosDataSet7()
        Me.FerreteriaLosHermanosDataSet6 = New Ferreteria.FerreteriaLosHermanosDataSet6()
        Me.SpSeleccionarLocalesIDBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.Sp_SeleccionarLocalesIDTableAdapter = New Ferreteria.FerreteriaLosHermanosDataSet6TableAdapters.sp_SeleccionarLocalesIDTableAdapter()
        Me.LocalesTableAdapter2 = New Ferreteria.FerreteriaLosHermanosDataSet7TableAdapters.LocalesTableAdapter()
        Me.GroupBox1.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        CType(Me.FerreteriaLosHermanosDataSet3, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.LocalesBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.LocalesBindingSource1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.FerreteriaLosHermanosDataSet4, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.FerreteriaLosHermanosDataSet5, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.LocalesBindingSource2, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.FerreteriaLosHermanosDataSet7, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.FerreteriaLosHermanosDataSet6, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.SpSeleccionarLocalesIDBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.Tel_Tbx)
        Me.GroupBox1.Controls.Add(Me.Correo_Tbx)
        Me.GroupBox1.Controls.Add(Me.ID_Tbx)
        Me.GroupBox1.Controls.Add(Me.Dir_Tbx)
        Me.GroupBox1.Controls.Add(Me.Nombre_Tbx)
        Me.GroupBox1.Controls.Add(Me.Label6)
        Me.GroupBox1.Controls.Add(Me.Label5)
        Me.GroupBox1.Controls.Add(Me.Label4)
        Me.GroupBox1.Controls.Add(Me.Label3)
        Me.GroupBox1.Controls.Add(Me.Label2)
        Me.GroupBox1.Controls.Add(Me.Label1)
        Me.GroupBox1.Location = New System.Drawing.Point(12, 12)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(752, 234)
        Me.GroupBox1.TabIndex = 3
        Me.GroupBox1.TabStop = False
        '
        'Tel_Tbx
        '
        Me.Tel_Tbx.Location = New System.Drawing.Point(536, 186)
        Me.Tel_Tbx.Name = "Tel_Tbx"
        Me.Tel_Tbx.Size = New System.Drawing.Size(206, 20)
        Me.Tel_Tbx.TabIndex = 16
        '
        'Correo_Tbx
        '
        Me.Correo_Tbx.Location = New System.Drawing.Point(67, 186)
        Me.Correo_Tbx.Name = "Correo_Tbx"
        Me.Correo_Tbx.Size = New System.Drawing.Size(394, 20)
        Me.Correo_Tbx.TabIndex = 15
        '
        'ID_Tbx
        '
        Me.ID_Tbx.Location = New System.Drawing.Point(35, 32)
        Me.ID_Tbx.Name = "ID_Tbx"
        Me.ID_Tbx.Size = New System.Drawing.Size(140, 20)
        Me.ID_Tbx.TabIndex = 14
        '
        'Dir_Tbx
        '
        Me.Dir_Tbx.Location = New System.Drawing.Point(86, 67)
        Me.Dir_Tbx.Multiline = True
        Me.Dir_Tbx.Name = "Dir_Tbx"
        Me.Dir_Tbx.Size = New System.Drawing.Size(658, 91)
        Me.Dir_Tbx.TabIndex = 13
        '
        'Nombre_Tbx
        '
        Me.Nombre_Tbx.Location = New System.Drawing.Point(329, 32)
        Me.Nombre_Tbx.Name = "Nombre_Tbx"
        Me.Nombre_Tbx.Size = New System.Drawing.Size(368, 20)
        Me.Nombre_Tbx.TabIndex = 12
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
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label5.Location = New System.Drawing.Point(6, 188)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(55, 16)
        Me.Label5.TabIndex = 9
        Me.Label5.Text = "Correo"
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
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label3.Location = New System.Drawing.Point(192, 33)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(131, 16)
        Me.Label3.TabIndex = 4
        Me.Label3.Text = "Nombre del Local"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.BackColor = System.Drawing.SystemColors.Control
        Me.Label2.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.Location = New System.Drawing.Point(74, 6)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(63, 16)
        Me.Label2.TabIndex = 2
        Me.Label2.Text = "Locales"
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
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.Label8)
        Me.GroupBox2.Controls.Add(Me.SeleccionarButton)
        Me.GroupBox2.Controls.Add(Me.Label9)
        Me.GroupBox2.Controls.Add(Me.Label10)
        Me.GroupBox2.Controls.Add(Me.Label11)
        Me.GroupBox2.Controls.Add(Me.NuevoButton)
        Me.GroupBox2.Controls.Add(Me.SalirButton)
        Me.GroupBox2.Controls.Add(Me.EliminarButton)
        Me.GroupBox2.Controls.Add(Me.ModificarButton)
        Me.GroupBox2.Location = New System.Drawing.Point(12, 292)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(752, 150)
        Me.GroupBox2.TabIndex = 26
        Me.GroupBox2.TabStop = False
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label8.Location = New System.Drawing.Point(232, 131)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(91, 16)
        Me.Label8.TabIndex = 11
        Me.Label8.Text = "Seleccionar"
        '
        'SeleccionarButton
        '
        Me.SeleccionarButton.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.SeleccionarButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.SeleccionarButton.Image = Global.Ferreteria.My.Resources.Resources.disco_flexible
        Me.SeleccionarButton.Location = New System.Drawing.Point(223, 23)
        Me.SeleccionarButton.Name = "SeleccionarButton"
        Me.SeleccionarButton.Size = New System.Drawing.Size(110, 107)
        Me.SeleccionarButton.TabIndex = 10
        Me.SeleccionarButton.UseVisualStyleBackColor = True
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
        Me.Label11.Location = New System.Drawing.Point(356, 133)
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
        'FerreteriaLosHermanosDataSet3
        '
        Me.FerreteriaLosHermanosDataSet3.DataSetName = "FerreteriaLosHermanosDataSet3"
        Me.FerreteriaLosHermanosDataSet3.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'LocalesBindingSource
        '
        Me.LocalesBindingSource.DataMember = "Locales"
        Me.LocalesBindingSource.DataSource = Me.FerreteriaLosHermanosDataSet3
        '
        'LocalesTableAdapter
        '
        Me.LocalesTableAdapter.ClearBeforeFill = True
        '
        'LocalesBindingSource1
        '
        Me.LocalesBindingSource1.DataMember = "Locales"
        Me.LocalesBindingSource1.DataSource = Me.FerreteriaLosHermanosDataSet4
        '
        'FerreteriaLosHermanosDataSet4
        '
        Me.FerreteriaLosHermanosDataSet4.DataSetName = "FerreteriaLosHermanosDataSet4"
        Me.FerreteriaLosHermanosDataSet4.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'LocalesTableAdapter1
        '
        Me.LocalesTableAdapter1.ClearBeforeFill = True
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label7.Location = New System.Drawing.Point(19, 257)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(103, 16)
        Me.Label7.TabIndex = 17
        Me.Label7.Text = "Ver Datos de:"
        '
        'FerreteriaLosHermanosDataSet5
        '
        Me.FerreteriaLosHermanosDataSet5.DataSetName = "FerreteriaLosHermanosDataSet5"
        Me.FerreteriaLosHermanosDataSet5.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'Sp_SeleccionarLocalesTableAdapter
        '
        Me.Sp_SeleccionarLocalesTableAdapter.ClearBeforeFill = True
        '
        'TableAdapterManager
        '
        Me.TableAdapterManager.BackupDataSetBeforeUpdate = False
        Me.TableAdapterManager.Connection = Nothing
        Me.TableAdapterManager.UpdateOrder = Ferreteria.FerreteriaLosHermanosDataSet5TableAdapters.TableAdapterManager.UpdateOrderOption.InsertUpdateDelete
        '
        'LocalCbx
        '
        Me.LocalCbx.DataSource = Me.LocalesBindingSource2
        Me.LocalCbx.DisplayMember = "Nombre"
        Me.LocalCbx.FormattingEnabled = True
        Me.LocalCbx.Location = New System.Drawing.Point(139, 256)
        Me.LocalCbx.Name = "LocalCbx"
        Me.LocalCbx.Size = New System.Drawing.Size(528, 21)
        Me.LocalCbx.TabIndex = 30
        Me.LocalCbx.ValueMember = "LocalID"
        '
        'LocalesBindingSource2
        '
        Me.LocalesBindingSource2.DataMember = "Locales"
        Me.LocalesBindingSource2.DataSource = Me.FerreteriaLosHermanosDataSet7
        '
        'FerreteriaLosHermanosDataSet7
        '
        Me.FerreteriaLosHermanosDataSet7.DataSetName = "FerreteriaLosHermanosDataSet7"
        Me.FerreteriaLosHermanosDataSet7.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'FerreteriaLosHermanosDataSet6
        '
        Me.FerreteriaLosHermanosDataSet6.DataSetName = "FerreteriaLosHermanosDataSet6"
        Me.FerreteriaLosHermanosDataSet6.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'SpSeleccionarLocalesIDBindingSource
        '
        Me.SpSeleccionarLocalesIDBindingSource.DataMember = "sp_SeleccionarLocalesID"
        Me.SpSeleccionarLocalesIDBindingSource.DataSource = Me.FerreteriaLosHermanosDataSet6
        '
        'Sp_SeleccionarLocalesIDTableAdapter
        '
        Me.Sp_SeleccionarLocalesIDTableAdapter.ClearBeforeFill = True
        '
        'LocalesTableAdapter2
        '
        Me.LocalesTableAdapter2.ClearBeforeFill = True
        '
        'frmLocales
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(777, 462)
        Me.Controls.Add(Me.LocalCbx)
        Me.Controls.Add(Me.Label7)
        Me.Controls.Add(Me.GroupBox2)
        Me.Controls.Add(Me.GroupBox1)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Name = "frmLocales"
        Me.Text = "frmLocales"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        CType(Me.FerreteriaLosHermanosDataSet3, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.LocalesBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.LocalesBindingSource1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.FerreteriaLosHermanosDataSet4, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.FerreteriaLosHermanosDataSet5, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.LocalesBindingSource2, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.FerreteriaLosHermanosDataSet7, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.FerreteriaLosHermanosDataSet6, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.SpSeleccionarLocalesIDBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents GroupBox1 As GroupBox
    Friend WithEvents Label6 As Label
    Friend WithEvents Label5 As Label
    Friend WithEvents Label4 As Label
    Friend WithEvents Label3 As Label
    Friend WithEvents Label2 As Label
    Friend WithEvents Label1 As Label
    Friend WithEvents GroupBox2 As GroupBox
    Friend WithEvents Label9 As Label
    Friend WithEvents Label10 As Label
    Friend WithEvents Label11 As Label
    Friend WithEvents NuevoButton As Button
    Friend WithEvents SalirButton As Button
    Friend WithEvents EliminarButton As Button
    Friend WithEvents ModificarButton As Button
    Friend WithEvents Nombre_Tbx As TextBox
    Friend WithEvents Dir_Tbx As TextBox
    Friend WithEvents ID_Tbx As TextBox
    Friend WithEvents Correo_Tbx As TextBox
    Friend WithEvents Tel_Tbx As TextBox
    Friend WithEvents FerreteriaLosHermanosDataSet3 As FerreteriaLosHermanosDataSet3
    Friend WithEvents LocalesBindingSource As BindingSource
    Friend WithEvents LocalesTableAdapter As FerreteriaLosHermanosDataSet3TableAdapters.LocalesTableAdapter
    Friend WithEvents FerreteriaLosHermanosDataSet4 As FerreteriaLosHermanosDataSet4
    Friend WithEvents LocalesBindingSource1 As BindingSource
    Friend WithEvents LocalesTableAdapter1 As FerreteriaLosHermanosDataSet4TableAdapters.LocalesTableAdapter
    Friend WithEvents Label7 As Label
    Friend WithEvents FerreteriaLosHermanosDataSet5 As FerreteriaLosHermanosDataSet5
    Friend WithEvents Sp_SeleccionarLocalesTableAdapter As FerreteriaLosHermanosDataSet5TableAdapters.sp_SeleccionarLocalesTableAdapter
    Friend WithEvents TableAdapterManager As FerreteriaLosHermanosDataSet5TableAdapters.TableAdapterManager
    Friend WithEvents LocalCbx As ComboBox
    Friend WithEvents Label8 As Label
    Friend WithEvents SeleccionarButton As Button
    Friend WithEvents SpSeleccionarLocalesIDBindingSource As BindingSource
    Friend WithEvents FerreteriaLosHermanosDataSet6 As FerreteriaLosHermanosDataSet6
    Friend WithEvents Sp_SeleccionarLocalesIDTableAdapter As FerreteriaLosHermanosDataSet6TableAdapters.sp_SeleccionarLocalesIDTableAdapter
    Friend WithEvents FerreteriaLosHermanosDataSet7 As FerreteriaLosHermanosDataSet7
    Friend WithEvents LocalesBindingSource2 As BindingSource
    Friend WithEvents LocalesTableAdapter2 As FerreteriaLosHermanosDataSet7TableAdapters.LocalesTableAdapter
End Class
