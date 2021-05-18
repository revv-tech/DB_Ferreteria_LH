



﻿<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmPedidos
    Inherits System.Windows.Forms.Form

    'Form reemplaza a Dispose para limpiar la lista de componentes.
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
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(frmPedidos))
        Me.GroupBox3 = New System.Windows.Forms.GroupBox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.TextBox1 = New System.Windows.Forms.TextBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.TextBox4 = New System.Windows.Forms.TextBox()
        Me.Label8 = New System.Windows.Forms.Label()
        Me.TextBox5 = New System.Windows.Forms.TextBox()
        Me.Label9 = New System.Windows.Forms.Label()
        Me.TextBox7 = New System.Windows.Forms.TextBox()
        Me.TextBox8 = New System.Windows.Forms.TextBox()
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.NuevoButton = New System.Windows.Forms.Button()
        Me.SalirButton = New System.Windows.Forms.Button()
        Me.AgregarButton = New System.Windows.Forms.Button()
        Me.GuardarButton = New System.Windows.Forms.Button()
        Me.ModificarButton = New System.Windows.Forms.Button()
        Me.GroupBox3.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        Me.SuspendLayout()
        '
        'GroupBox3
        '
        Me.GroupBox3.Controls.Add(Me.Label2)
        Me.GroupBox3.Controls.Add(Me.TextBox1)
        Me.GroupBox3.Controls.Add(Me.Label1)
        Me.GroupBox3.Controls.Add(Me.Label5)
        Me.GroupBox3.Controls.Add(Me.Label6)
        Me.GroupBox3.Controls.Add(Me.TextBox4)
        Me.GroupBox3.Controls.Add(Me.Label8)
        Me.GroupBox3.Controls.Add(Me.TextBox5)
        Me.GroupBox3.Controls.Add(Me.Label9)
        Me.GroupBox3.Controls.Add(Me.TextBox7)
        Me.GroupBox3.Controls.Add(Me.TextBox8)
        Me.GroupBox3.Location = New System.Drawing.Point(12, 12)
        Me.GroupBox3.Name = "GroupBox3"
        Me.GroupBox3.Size = New System.Drawing.Size(591, 95)
        Me.GroupBox3.TabIndex = 9
        Me.GroupBox3.TabStop = False
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.Location = New System.Drawing.Point(498, 45)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(53, 16)
        Me.Label2.TabIndex = 20
        Me.Label2.Text = "Precio"
        '
        'TextBox1
        '
        Me.TextBox1.Location = New System.Drawing.Point(475, 68)
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.Size = New System.Drawing.Size(100, 20)
        Me.TextBox1.TabIndex = 19
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(9, 68)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(86, 16)
        Me.Label1.TabIndex = 18
        Me.Label1.Text = "Total Linea"
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label5.Location = New System.Drawing.Point(6, 42)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(79, 16)
        Me.Label5.TabIndex = 17
        Me.Label5.Text = "ID Factura"
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label6.Location = New System.Drawing.Point(172, -3)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(58, 16)
        Me.Label6.TabIndex = 6
        Me.Label6.Text = "Pedido"
        '
        'TextBox4
        '
        Me.TextBox4.Location = New System.Drawing.Point(121, 42)
        Me.TextBox4.Multiline = True
        Me.TextBox4.Name = "TextBox4"
        Me.TextBox4.Size = New System.Drawing.Size(310, 17)
        Me.TextBox4.TabIndex = 16
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label8.Location = New System.Drawing.Point(6, 19)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(89, 16)
        Me.Label8.TabIndex = 15
        Me.Label8.Text = "ID Producto"
        '
        'TextBox5
        '
        Me.TextBox5.Location = New System.Drawing.Point(121, 65)
        Me.TextBox5.Name = "TextBox5"
        Me.TextBox5.Size = New System.Drawing.Size(310, 20)
        Me.TextBox5.TabIndex = 3
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
        'TextBox7
        '
        Me.TextBox7.Location = New System.Drawing.Point(121, 19)
        Me.TextBox7.Multiline = True
        Me.TextBox7.Name = "TextBox7"
        Me.TextBox7.Size = New System.Drawing.Size(310, 17)
        Me.TextBox7.TabIndex = 14
        '
        'TextBox8
        '
        Me.TextBox8.Location = New System.Drawing.Point(475, 19)
        Me.TextBox8.Name = "TextBox8"
        Me.TextBox8.Size = New System.Drawing.Size(100, 20)
        Me.TextBox8.TabIndex = 0
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.NuevoButton)
        Me.GroupBox2.Controls.Add(Me.SalirButton)
        Me.GroupBox2.Controls.Add(Me.AgregarButton)
        Me.GroupBox2.Controls.Add(Me.GuardarButton)
        Me.GroupBox2.Controls.Add(Me.ModificarButton)
        Me.GroupBox2.Location = New System.Drawing.Point(12, 113)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(597, 150)
        Me.GroupBox2.TabIndex = 19
        Me.GroupBox2.TabStop = False
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
        Me.SalirButton.Location = New System.Drawing.Point(491, 23)
        Me.SalirButton.Name = "SalirButton"
        Me.SalirButton.Size = New System.Drawing.Size(100, 101)
        Me.SalirButton.TabIndex = 4
        Me.SalirButton.UseVisualStyleBackColor = True
        '
        'AgregarButton
        '
        Me.AgregarButton.BackColor = System.Drawing.SystemColors.Control
        Me.AgregarButton.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.AgregarButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.AgregarButton.Image = Global.Ferreteria.My.Resources.Resources.borrar_cuenta
        Me.AgregarButton.Location = New System.Drawing.Point(339, 23)
        Me.AgregarButton.Name = "AgregarButton"
        Me.AgregarButton.Size = New System.Drawing.Size(103, 107)
        Me.AgregarButton.TabIndex = 3
        Me.AgregarButton.UseVisualStyleBackColor = False
        '
        'GuardarButton
        '
        Me.GuardarButton.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.GuardarButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.GuardarButton.Image = Global.Ferreteria.My.Resources.Resources.disco_flexible
        Me.GuardarButton.Location = New System.Drawing.Point(223, 23)
        Me.GuardarButton.Name = "GuardarButton"
        Me.GuardarButton.Size = New System.Drawing.Size(110, 107)
        Me.GuardarButton.TabIndex = 2
        Me.GuardarButton.UseVisualStyleBackColor = True
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
        'frmPedidos
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(615, 269)
        Me.Controls.Add(Me.GroupBox2)
        Me.Controls.Add(Me.GroupBox3)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Name = "frmPedidos"
        Me.Text = "frmPedidos"
        Me.GroupBox3.ResumeLayout(False)
        Me.GroupBox3.PerformLayout()
        Me.GroupBox2.ResumeLayout(False)
        Me.ResumeLayout(False)

    End Sub

    Friend WithEvents GroupBox3 As GroupBox
    Friend WithEvents Label1 As Label
    Friend WithEvents Label5 As Label
    Friend WithEvents Label6 As Label
    Friend WithEvents TextBox4 As TextBox
    Friend WithEvents TextBox5 As TextBox
    Friend WithEvents Label8 As Label
    Friend WithEvents Label9 As Label
    Friend WithEvents TextBox7 As TextBox
    Friend WithEvents TextBox8 As TextBox
    Friend WithEvents GroupBox2 As GroupBox
    Friend WithEvents SalirButton As Button
    Friend WithEvents AgregarButton As Button
    Friend WithEvents GuardarButton As Button
    Friend WithEvents ModificarButton As Button
    Friend WithEvents Label2 As Label
    Friend WithEvents TextBox1 As TextBox
    Friend WithEvents NuevoButton As Button


    'Requerido por el Diseñador de Windows Forms
    Private components As System.ComponentModel.IContainer

    'NOTA: el Diseñador de Windows Forms necesita el siguiente procedimiento
    'Se puede modificar usando el Diseñador de Windows Forms.  
    'No lo modifique con el editor de código.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        components = New System.ComponentModel.Container
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(800, 450)
        Me.Text = "frmPedidos"
    End Sub


End Class
