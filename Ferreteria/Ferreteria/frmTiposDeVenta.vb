Imports System.Data
Imports System.Data.SqlClient

Public Class frmTiposDeVenta

    Dim ep As New Propiedades
    Dim func As New Funciones

    Private Sub frmTiposDeVenta_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        CenterToScreen()
        llenarComboTiposDeVenta()
    End Sub

    Sub llenarComboTiposDeVenta()

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
            sqlComm.CommandText = "sp_SeleccionarTipoDeVenta" '
            'Tipo de comando'
            sqlComm.CommandType = CommandType.StoredProcedure
            sqlad = New SqlDataAdapter(sqlComm)
            dt = New DataTable("Datos")
            'Llena el data table con la informacion que captura el sql adapter con el sp'
            sqlad.Fill(dt)
            Me.TipoDeVenta_cbx.DataSource = dt
            'DisplayMember: Lo que se va a mostrar al usuario'
            Me.TipoDeVenta_cbx.DisplayMember = "Descripcion"
            'ValueMember: Codigo que va enrrolado'
            Me.TipoDeVenta_cbx.ValueMember = "TipoVentaID"
            Me.TipoDeVenta_cbx.SelectedIndex = -1

        End Using

    End Sub

    Private Sub NuevoButton_Click(sender As Object, e As EventArgs) Handles NuevoButton.Click
        If (Me.ValidateChildren = True And Descrip_Tbx.Text <> "") Then
            Try
                ep.Descripcion_ = Descrip_Tbx.Text


                If func.Insetar_Tipo_de_Venta("sp_InsertarTipoDeVenta", ep) Then
                    MessageBox.Show("Tipo de Venta insertado correctamente!", "Insertando Tipo de Venta...")

                    ep.Descripcion_ = ""

                Else
                    MessageBox.Show("Tipo de Venta no insertado!", "Insertando Tipo de Venta...", MessageBoxButtons.OK, MessageBoxIcon.Information)

                    ep.Descripcion_ = ""

                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Else
            MessageBox.Show("Debe ingresar los datos del tipo de venta a insertar", "Insertando Tipo de Venta...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If
        llenarComboTiposDeVenta()
    End Sub

    Private Sub SalirButton_Click(sender As Object, e As EventArgs) Handles SalirButton.Click
        Me.Close()
    End Sub

    Private Sub EliminarButton_Click(sender As Object, e As EventArgs) Handles EliminarButton.Click
        If Me.ValidateChildren = True And ID_Tbx.Text <> "" Then
            Try
                ep.id_ = ID_Tbx.Text

                If func.Eliminar_sp("sp_EliminarTipoDeVenta", ep) Then
                    MessageBox.Show("Tipo de venta eliminado correctamente!", "Eliminado Tipo de venta...")
                    ID_Tbx.Text = ""
                Else
                    MessageBox.Show("Tipo de venta no encontrado!", "Eliminado Tipo de venta...", MessageBoxButtons.OK, MessageBoxIcon.Information)
                    ID_Tbx.Text = ""
                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Else
            MessageBox.Show("Debe ingresar el ID de un tipo de venta", "Eliminado Tipo de venta...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If
    End Sub

    Private Sub ModificarButton_Click(sender As Object, e As EventArgs) Handles ModificarButton.Click
        If (Me.ValidateChildren = True And ID_Tbx.Text <> "") Then
            Try
                ep.id_ = ID_Tbx.Text
                ep.Descripcion_ = Descrip_Tbx.Text
                If func.Modificar_Tipo_de_Venta("sp_ModificarTiposDeVenta", ep) Then
                    MessageBox.Show("Medida modificada correctamente!", "Modificando Medida...")
                    ID_Tbx.Text = ""
                    Descrip_Tbx.Text = ""

                Else
                    MessageBox.Show("Medida no modificada!", "Modificando Medida...", MessageBoxButtons.OK, MessageBoxIcon.Information)
                    ID_Tbx.Text = ""
                    Descrip_Tbx.Text = ""
                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Else
            MessageBox.Show("Debe ingresar los datos de la medida a modificar", "Modificando Medida...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If
        llenarComboTiposDeVenta()
    End Sub

    Private Sub SeleccionarButton_Click(sender As Object, e As EventArgs) Handles SeleccionarButton.Click
        'Permite conexion a base de datos'
        Dim sqlad As SqlDataAdapter
        'Crea instancia de la variable'
        sqlCon = New SqlConnection(conn)

        Using (sqlCon)

            If TipoDeVenta_cbx.SelectedIndex > -1 Then
                Dim n As Integer
                n = 0
                Dim sqlComm As New SqlCommand()
                'se hace la referencia a la conexión con la bd'
                sqlComm.Connection = sqlCon
                'se indica el nombre del stored procedure y el tipo'
                sqlCon.Open()
                sqlComm.CommandText = "sp_SeleccionarTipoDeVentaID" '
                sqlComm.Parameters.AddWithValue("@ID", TipoDeVenta_cbx.SelectedValue)

                'Tipo de comando'
                sqlComm.CommandType = CommandType.StoredProcedure
                Dim dataR As SqlDataReader
                dataR = sqlComm.ExecuteReader()

                If dataR.Read() Then
                    ID_Tbx.Text = dataR.GetSqlInt32(0)
                    Descrip_Tbx.Text = dataR.GetSqlString(1)
                End If
            End If
        End Using
    End Sub
End Class