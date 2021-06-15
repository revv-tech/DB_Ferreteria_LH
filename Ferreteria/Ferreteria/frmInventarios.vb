Imports System.Data
Imports System.Data.SqlClient


Public Class frmInventarios

    Dim ep As New Propiedades
    Dim func As New Funciones
    Private Sub frmInventarios_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        llenarComboLocales()
        CenterToScreen()
    End Sub

    Private Sub NuevoButton_Click(sender As Object, e As EventArgs) Handles NuevoButton.Click
        If (Me.ValidateChildren = True And Stock.Text <> "") And (Me.ValidateChildren = True And Producto_tbx.Text <> "") And (Me.ValidateChildren = True And LocalCbx.Text <> "") Then
            Try
                ep.Cantidad_Ingreso = Stock.Text
                ep.ProductoID = Producto_tbx.Text
                ep.LocalId = LocalCbx.SelectedValue

                If func.Insetar_Medida("sp_InsertarInventarios", ep) Then
                    MessageBox.Show("Inventario insertado correctamente!", "Insertando Inventario...")

                    ep.Nombre_ = ""

                Else
                    MessageBox.Show("Inventario no insertado!", "Insertando Inventario...", MessageBoxButtons.OK, MessageBoxIcon.Information)

                    ep.Nombre_ = ""

                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Else
            MessageBox.Show("Debe ingresar los datos de la inventario a insertar", "Insertando Inventario...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If
    End Sub

    Sub llenarComboLocales()

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
            sqlComm.CommandText = "sp_SeleccionarLocales" '
            'Tipo de comando'
            sqlComm.CommandType = CommandType.StoredProcedure
            sqlad = New SqlDataAdapter(sqlComm)
            dt = New DataTable("Datos")
            'Llena el data table con la informacion que captura el sql adapter con el sp'
            sqlad.Fill(dt)
            Me.LocalCbx.DataSource = dt
            'DisplayMember: Lo que se va a mostrar al usuario'
            Me.LocalCbx.DisplayMember = "Nombre"
            'ValueMember: Codigo que va enrrolado'
            Me.LocalCbx.ValueMember = "LocalID"
            Me.LocalCbx.SelectedIndex = -1

        End Using

    End Sub

    Private Sub SalirButton_Click(sender As Object, e As EventArgs) Handles SalirButton.Click
        Me.Close()
    End Sub

    Private Sub EliminarButton_Click(sender As Object, e As EventArgs) Handles EliminarButton.Click
        If Me.ValidateChildren = True And ID_tbx.Text <> "" Then
            Try
                ep.id_ = ID_tbx.Text

                If func.Eliminar_sp("sp_EliminarInventarios", ep) Then
                    MessageBox.Show("Inventario eliminado correctamente!", "Eliminado Inventario...")
                    ID_tbx.Text = ""
                Else
                    MessageBox.Show("Inventario no encontrado!", "Eliminado Inventario...", MessageBoxButtons.OK, MessageBoxIcon.Information)
                    ID_tbx.Text = ""
                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Else
            MessageBox.Show("Debe ingresar el ID de un inventario", "Eliminado Inventario...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If
    End Sub
End Class

