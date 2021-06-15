Public Class frmIngresos

    Dim ep As New Propiedades
    Dim func As New Funciones
    Private Sub frmIngresos_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        CenterToScreen()
    End Sub

    Private Sub SalirButton_Click(sender As Object, e As EventArgs)
        Me.Close()
    End Sub

    Private Sub NuevoButton_Click(sender As Object, e As EventArgs) Handles NuevoButton.Click
        If (Me.ValidateChildren = True And Empleado_Tbx.Text <> "") And (Me.ValidateChildren = True And Producto_Tbx.Text <> "") And (Me.ValidateChildren = True And Local_Tbx.Text <> "") And (Me.ValidateChildren = True And Cant_Tbx.Text <> "") And (Me.ValidateChildren = True And Fecha_Tbx.Text <> "") Then
            Try

                ep.Cantidad_Ingreso = Cant_Tbx.Text
                ep.EmpleadoID = Empleado_Tbx.Text
                ep.ProductoID = Producto_Tbx.Text
                ep.LocalId = Local_Tbx.Text
                ep.Fecha_ = Fecha_Tbx.Text


                If func.Insetar_Ingreso("sp_InsertarIngresos", ep) Then
                    MessageBox.Show("Ingreso insertado correctamente!", "Insertando Ingreso...")
                    ID_Tbx.Text = ""
                    Empleado_Tbx.Text = ""
                    Producto_Tbx.Text = ""
                    Local_Tbx.Text = ""
                    Fecha_Tbx.Text = ""
                    Cant_Tbx.Text = ""


                Else
                    MessageBox.Show("Ingreso no insertado!", "Insertando Ingreso...", MessageBoxButtons.OK, MessageBoxIcon.Information)
                    ID_Tbx.Text = ""
                    Empleado_Tbx.Text = ""
                    Producto_Tbx.Text = ""
                    Local_Tbx.Text = ""
                    Fecha_Tbx.Text = ""
                    Cant_Tbx.Text = ""

                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Else
            MessageBox.Show("Debe ingresar los datos del ingreso a insertar", "Insertando Ingreso...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If
    End Sub

    Private Sub EliminarButton_Click(sender As Object, e As EventArgs) Handles EliminarButton.Click
        If Me.ValidateChildren = True And ID_Tbx.Text <> "" Then
            Try
                ep.id_ = ID_Tbx.Text

                If func.Eliminar_sp("sp_EliminarIngresos", ep) Then
                    MessageBox.Show("Ingreso eliminado correctamente!", "Eliminado Ingreso...")
                    ID_Tbx.Text = ""
                Else
                    MessageBox.Show("Ingreso no encontrado!", "Eliminado Ingreso...", MessageBoxButtons.OK, MessageBoxIcon.Information)
                    ID_Tbx.Text = ""
                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Else
            MessageBox.Show("Debe ingresar el ID de un ingreso", "Eliminado Ingreso...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If
    End Sub
End Class