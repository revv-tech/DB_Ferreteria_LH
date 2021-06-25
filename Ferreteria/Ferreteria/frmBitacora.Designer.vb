<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmBitacora
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
        Dim DataGridViewCellStyle1 As System.Windows.Forms.DataGridViewCellStyle = New System.Windows.Forms.DataGridViewCellStyle()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(frmBitacora))
        Me.ProductosXLocal_dt = New System.Windows.Forms.DataGridView()
        Me.Bitacora = New System.Windows.Forms.Button()
        CType(Me.ProductosXLocal_dt, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
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
        Me.ProductosXLocal_dt.Location = New System.Drawing.Point(37, 63)
        Me.ProductosXLocal_dt.Name = "ProductosXLocal_dt"
        Me.ProductosXLocal_dt.ReadOnly = True
        Me.ProductosXLocal_dt.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None
        Me.ProductosXLocal_dt.RowHeadersVisible = False
        Me.ProductosXLocal_dt.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect
        Me.ProductosXLocal_dt.Size = New System.Drawing.Size(522, 448)
        Me.ProductosXLocal_dt.TabIndex = 34
        '
        'Bitacora
        '
        Me.Bitacora.BackColor = System.Drawing.Color.Goldenrod
        Me.Bitacora.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.Bitacora.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Bitacora.Font = New System.Drawing.Font("Microsoft Tai Le", 11.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Bitacora.ForeColor = System.Drawing.SystemColors.ButtonFace
        Me.Bitacora.Location = New System.Drawing.Point(226, 15)
        Me.Bitacora.Name = "Bitacora"
        Me.Bitacora.Size = New System.Drawing.Size(153, 42)
        Me.Bitacora.TabIndex = 47
        Me.Bitacora.Text = "Bitácora"
        Me.Bitacora.UseVisualStyleBackColor = False
        '
        'frmBitacora
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackgroundImage = Global.Ferreteria.My.Resources.Resources.fondo_3
        Me.ClientSize = New System.Drawing.Size(591, 523)
        Me.Controls.Add(Me.Bitacora)
        Me.Controls.Add(Me.ProductosXLocal_dt)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Name = "frmBitacora"
        Me.Text = "Bitacora"
        CType(Me.ProductosXLocal_dt, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub

    Friend WithEvents ProductosXLocal_dt As DataGridView
    Friend WithEvents Bitacora As Button
End Class
