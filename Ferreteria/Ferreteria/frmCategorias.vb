Imports System.Data.SqlClient


Public Class frmCategorias

    Dim ep As New Propiedades
    Dim func As New Funciones

    Private Sub frmCategorias_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        CenterToScreen()
    End Sub

    Private Sub SalirButton_Click(sender As Object, e As EventArgs) Handles SalirButton.Click
        Me.Close()
    End Sub

    Private Sub EliminarButton_Click(sender As Object, e As EventArgs) Handles EliminarButton.Click
        If Me.ValidateChildren = True And ID_txb.Text <> "" Then
            Try
                ep.id_ = ID_txb.Text

                If func.Eliminar_sp("sp_EliminarCategorias", ep) Then
                    MessageBox.Show("Categoría eliminada correctamente!", "Eliminado Categoría...")
                    ID_txb.Text = ""
                Else
                    MessageBox.Show("Categoría no encontrada!", "Eliminado Categoría...", MessageBoxButtons.OK, MessageBoxIcon.Information)
                    ID_txb.Text = ""
                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Else
            MessageBox.Show("Debe ingresar el ID de una Categoría", "Eliminado Categoría...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If
    End Sub

    Private Sub NuevoButton_Click(sender As Object, e As EventArgs) Handles NuevoButton.Click
        If (Me.ValidateChildren = True And ID_txb.Text <> "") And (Me.ValidateChildren = True And Nombre_Tbx.Text <> "") And (Me.ValidateChildren = True And Descrip_tbx.Text <> "") Then
            Try
                ep.id_ = ID_txb.Text
                ep.Descripcion_ = Descrip_tbx.Text
                ep.Nombre_ = Nombre_Tbx.Text

                If func.Insetar_sp("sp_InsertarCategorias", ep) Then
                    MessageBox.Show("Categoría insertada correctamente!", "Insertando Categoría...")
                    ID_txb.Text = ""
                    Descrip_tbx.Text = ""
                    Nombre_Tbx.Text = ""
                Else
                    MessageBox.Show("Categoría no insertada!", "Insertando Categoría...", MessageBoxButtons.OK, MessageBoxIcon.Information)
                    ID_txb.Text = ""
                    Descrip_tbx.Text = ""
                    Nombre_Tbx.Text = ""
                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Else
            MessageBox.Show("Debe ingresar los datos de la categoria a insertar", "Insertando Categoría...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If
    End Sub

    Private Sub ModificarButton_Click(sender As Object, e As EventArgs) Handles ModificarButton.Click
        If (Me.ValidateChildren = True And ID_txb.Text <> "") And (Me.ValidateChildren = True And Nombre_Tbx.Text <> "") And (Me.ValidateChildren = True And Descrip_tbx.Text <> "") Then
            Try
                ep.id_ = ID_txb.Text
                ep.Descripcion_ = Descrip_tbx.Text
                ep.Nombre_ = Nombre_Tbx.Text

                If func.Insetar_sp("sp_ModificarCategorias", ep) Then
                    MessageBox.Show("Categoría modificada correctamente!", "Modificando Categoría...")
                    ID_txb.Text = ""
                    Descrip_tbx.Text = ""
                    Nombre_Tbx.Text = ""
                Else
                    MessageBox.Show("Categoría no modificada!", "Modificando Categoría...", MessageBoxButtons.OK, MessageBoxIcon.Information)
                    ID_txb.Text = ""
                    Descrip_tbx.Text = ""
                    Nombre_Tbx.Text = ""
                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Else
            MessageBox.Show("Debe ingresar los datos de la categoria a modificar", "Modificando Categoría...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If
    End Sub

    Private Sub SeleccionarButton_Click(sender As Object, e As EventArgs) Handles SeleccionarButton.Click

    End Sub
End Class