﻿<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class frmInventarios
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(frmInventarios))
        Me.GroupBox3 = New System.Windows.Forms.GroupBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.Stock = New System.Windows.Forms.TextBox()
        Me.Label8 = New System.Windows.Forms.Label()
        Me.Label9 = New System.Windows.Forms.Label()
        Me.ID_tbx = New System.Windows.Forms.TextBox()
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.Label10 = New System.Windows.Forms.Label()
        Me.Label11 = New System.Windows.Forms.Label()
        Me.NuevoButton = New System.Windows.Forms.Button()
        Me.SalirButton = New System.Windows.Forms.Button()
        Me.EliminarButton = New System.Windows.Forms.Button()
        Me.SeleccionarButton = New System.Windows.Forms.Button()
        Me.ModificarButton = New System.Windows.Forms.Button()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Inventario_cbx = New System.Windows.Forms.ComboBox()
        Me.Producto_cbx = New System.Windows.Forms.ComboBox()
        Me.LocalCbx = New System.Windows.Forms.ComboBox()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.GroupBox3.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        Me.SuspendLayout()
        '
        'GroupBox3
        '
        Me.GroupBox3.Controls.Add(Me.LocalCbx)
        Me.GroupBox3.Controls.Add(Me.Producto_cbx)
        Me.GroupBox3.Controls.Add(Me.Label1)
        Me.GroupBox3.Controls.Add(Me.Label5)
        Me.GroupBox3.Controls.Add(Me.Label6)
        Me.GroupBox3.Controls.Add(Me.Stock)
        Me.GroupBox3.Controls.Add(Me.Label8)
        Me.GroupBox3.Controls.Add(Me.Label9)
        Me.GroupBox3.Controls.Add(Me.ID_tbx)
        Me.GroupBox3.Location = New System.Drawing.Point(6, 12)
        Me.GroupBox3.Name = "GroupBox3"
        Me.GroupBox3.Size = New System.Drawing.Size(599, 103)
        Me.GroupBox3.TabIndex = 8
        Me.GroupBox3.TabStop = False
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(7, 73)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(47, 16)
        Me.Label1.TabIndex = 18
        Me.Label1.Text = "Stock"
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label6.Location = New System.Drawing.Point(236, -3)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(76, 16)
        Me.Label6.TabIndex = 6
        Me.Label6.Text = "Inventario"
        '
        'Stock
        '
        Me.Stock.Location = New System.Drawing.Point(121, 72)
        Me.Stock.Name = "Stock"
        Me.Stock.Size = New System.Drawing.Size(310, 20)
        Me.Stock.TabIndex = 3
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label8.Location = New System.Drawing.Point(6, 16)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(70, 16)
        Me.Label8.TabIndex = 15
        Me.Label8.Text = "Producto"
        '
        'Label9
        '
        Me.Label9.AutoSize = True
        Me.Label9.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label9.Location = New System.Drawing.Point(515, -3)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(23, 16)
        Me.Label9.TabIndex = 1
        Me.Label9.Text = "ID" & Global.Microsoft.VisualBasic.ChrW(13) & Global.Microsoft.VisualBasic.ChrW(10)
        '
        'ID_tbx
        '
        Me.ID_tbx.Location = New System.Drawing.Point(475, 19)
        Me.ID_tbx.Name = "ID_tbx"
        Me.ID_tbx.Size = New System.Drawing.Size(100, 20)
        Me.ID_tbx.TabIndex = 0
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.Label4)
        Me.GroupBox2.Controls.Add(Me.Label7)
        Me.GroupBox2.Controls.Add(Me.Label10)
        Me.GroupBox2.Controls.Add(Me.Label11)
        Me.GroupBox2.Controls.Add(Me.NuevoButton)
        Me.GroupBox2.Controls.Add(Me.SalirButton)
        Me.GroupBox2.Controls.Add(Me.EliminarButton)
        Me.GroupBox2.Controls.Add(Me.SeleccionarButton)
        Me.GroupBox2.Controls.Add(Me.ModificarButton)
        Me.GroupBox2.Location = New System.Drawing.Point(6, 144)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(602, 158)
        Me.GroupBox2.TabIndex = 30
        Me.GroupBox2.TabStop = False
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label4.Location = New System.Drawing.Point(236, 131)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(91, 16)
        Me.Label4.TabIndex = 9
        Me.Label4.Text = "Seleccionar"
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label7.Location = New System.Drawing.Point(138, 131)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(72, 16)
        Me.Label7.TabIndex = 8
        Me.Label7.Text = "Modificar"
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
        Me.SalirButton.Location = New System.Drawing.Point(477, 23)
        Me.SalirButton.Name = "SalirButton"
        Me.SalirButton.Size = New System.Drawing.Size(115, 108)
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
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.Location = New System.Drawing.Point(13, 122)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(103, 16)
        Me.Label2.TabIndex = 37
        Me.Label2.Text = "Ver Datos de:"
        '
        'Inventario_cbx
        '
        Me.Inventario_cbx.DisplayMember = "Nombre"
        Me.Inventario_cbx.FormattingEnabled = True
        Me.Inventario_cbx.Location = New System.Drawing.Point(122, 122)
        Me.Inventario_cbx.Name = "Inventario_cbx"
        Me.Inventario_cbx.Size = New System.Drawing.Size(469, 21)
        Me.Inventario_cbx.TabIndex = 38
        Me.Inventario_cbx.ValueMember = "LocalID"
        '
        'Producto_cbx
        '
        Me.Producto_cbx.DisplayMember = "Nombre"
        Me.Producto_cbx.FormattingEnabled = True
        Me.Producto_cbx.Location = New System.Drawing.Point(121, 18)
        Me.Producto_cbx.Name = "Producto_cbx"
        Me.Producto_cbx.Size = New System.Drawing.Size(310, 21)
        Me.Producto_cbx.TabIndex = 37
        Me.Producto_cbx.ValueMember = "LocalID"
        '
        'LocalCbx
        '
        Me.LocalCbx.DisplayMember = "Nombre"
        Me.LocalCbx.FormattingEnabled = True
        Me.LocalCbx.Location = New System.Drawing.Point(121, 45)
        Me.LocalCbx.Name = "LocalCbx"
        Me.LocalCbx.Size = New System.Drawing.Size(310, 21)
        Me.LocalCbx.TabIndex = 38
        Me.LocalCbx.ValueMember = "LocalID"
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label5.Location = New System.Drawing.Point(7, 45)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(46, 16)
        Me.Label5.TabIndex = 17
        Me.Label5.Text = "Local"
        '
        'frmInventarios
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(610, 308)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Inventario_cbx)
        Me.Controls.Add(Me.GroupBox2)
        Me.Controls.Add(Me.GroupBox3)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Name = "frmInventarios"
        Me.Text = "Inventarios"
        Me.GroupBox3.ResumeLayout(False)
        Me.GroupBox3.PerformLayout()
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents GroupBox3 As GroupBox
    Friend WithEvents Label6 As Label
    Friend WithEvents Stock As TextBox
    Friend WithEvents Label8 As Label
    Friend WithEvents Label9 As Label
    Friend WithEvents ID_tbx As TextBox
    Friend WithEvents Label1 As Label
    Friend WithEvents GroupBox2 As GroupBox
    Friend WithEvents Label4 As Label
    Friend WithEvents Label7 As Label
    Friend WithEvents Label10 As Label
    Friend WithEvents Label11 As Label
    Friend WithEvents NuevoButton As Button
    Friend WithEvents SalirButton As Button
    Friend WithEvents EliminarButton As Button
    Friend WithEvents SeleccionarButton As Button
    Friend WithEvents ModificarButton As Button
    Friend WithEvents Label2 As Label
    Friend WithEvents Inventario_cbx As ComboBox
    Friend WithEvents Producto_cbx As ComboBox
    Friend WithEvents LocalCbx As ComboBox
    Friend WithEvents Label5 As Label
End Class
