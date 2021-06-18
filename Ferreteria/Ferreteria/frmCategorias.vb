Imports System.Data.SqlClient


Public Class frmCategorias

    Dim ep As New Propiedades
    Dim func As New Funciones

    Private Sub frmCategorias_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        llenarComboCategorias()
        CenterToScreen()
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
        If (Me.ValidateChildren = True And Nombre_Tbx.Text <> "") And (Me.ValidateChildren = True And Descrip_tbx.Text <> "") Then
            Try
                ep.id_ = ID_txb.Text
                ep.Descripcion_ = Descrip_tbx.Text
                ep.Nombre_ = Nombre_Tbx.Text

                If func.Insetar_Categoria("sp_InsertarCategorias", ep) Then
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
        If (Me.ValidateChildren = True And Nombre_Tbx.Text <> "") And (Me.ValidateChildren = True And Descrip_tbx.Text <> "") And (Me.ValidateChildren = True And ID_txb.Text <> "") Then
            Try
                ep.id_ = ID_txb.Text
                ep.Descripcion_ = Descrip_tbx.Text
                ep.Nombre_ = Nombre_Tbx.Text

                If func.Insetar_Categoria("sp_ModificarCategorias", ep) Then
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
            MessageBox.Show("Debe ingresar los datos de la categoria a modificadar", "Modificando Categoría...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If
    End Sub

    Private Sub SalirButton_Click(sender As Object, e As EventArgs) Handles SalirButton.Click
        Me.Close()
    End Sub

    Sub llenarComboCategorias()

        'Permite conexion a base de datos'
        Dim sqlad As SqlDataAdapter
        'Resultado de lo que se trae de la tabla'
        Dim dt As DataTable
        'Crea instancia de la variable'
        sqlCon = New SqlConnection(conn)

        Using (sqlCon)

            Dim sqlComm As New SqlCommand()
            'se hace la referencia a la conexión con la bd'
            sqlComm.Connection = sqlCon
            'se indica el nombre del stored procedure y el tipo'
            sqlComm.CommandText = "sp_SeleccionarCategorias" '
            'Tipo de comando'
            sqlComm.CommandType = CommandType.StoredProcedure
            sqlad = New SqlDataAdapter(sqlComm)
            dt = New DataTable("Datos")
            'Llena el data table con la informacion que captura el sql adapter con el sp'
            sqlad.Fill(dt)
            Me.Categoria_cbx.DataSource = dt
            'DisplayMember: Lo que se va a mostrar al usuario'
            Me.Categoria_cbx.DisplayMember = "NombreCategoria"
            'ValueMember: Codigo que va enrrolado'
            Me.Categoria_cbx.ValueMember = "CategoriaID"
            Me.Categoria_cbx.SelectedIndex = -1

        End Using

    End Sub

    Private Sub SeleccionarButton_Click(sender As Object, e As EventArgs) Handles SeleccionarButton.Click
        'Permite conexion a base de datos'
        Dim sqlad As SqlDataAdapter
        'Crea instancia de la variable'
        sqlCon = New SqlConnection(conn)

        Using (sqlCon)

            If Categoria_cbx.SelectedIndex > -1 Then
                Dim n As Integer
                n = 0
                Dim sqlComm As New SqlCommand()
                'se hace la referencia a la conexión con la bd'
                sqlComm.Connection = sqlCon
                'se indica el nombre del stored procedure y el tipo'
                sqlCon.Open()
                sqlComm.CommandText = "sp_SeleccionarCategoriasID" '
                sqlComm.Parameters.AddWithValue("@ID", Categoria_cbx.SelectedValue)
                'Tipo de comando'
                sqlComm.CommandType = CommandType.StoredProcedure
                Dim dataR As SqlDataReader
                dataR = sqlComm.ExecuteReader()

                If dataR.Read() Then
                    ID_txb.Text = dataR.GetSqlInt32(0)
                    Nombre_Tbx.Text = dataR.GetSqlString(1)
                    Descrip_tbx.Text = dataR.GetSqlString(2)

                End If
            End If
        End Using
    End Sub
End Class