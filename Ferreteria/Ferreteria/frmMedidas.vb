Imports System.Data
Imports System.Data.SqlClient


Public Class frmMedidas

    Dim ep As New Propiedades
    Dim func As New Funciones
    Private Sub frmMedidas_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        llenarComboMedidas()
        CenterToScreen()
    End Sub


    Private Sub NuevoButton_Click(sender As Object, e As EventArgs) Handles NuevoButton.Click
        If (Me.ValidateChildren = True And Nombre_Tbx.Text <> "") Then
            Try
                ep.Nombre_ = Nombre_Tbx.Text
                If func.Insetar_Medida("sp_InsertarMedidas", ep) Then
                    MessageBox.Show("Medida insertada correctamente!", "Insertando Medida...")

                    ep.Nombre_ = ""

                Else
                    MessageBox.Show("Medida no insertada!", "Insertando Medida...", MessageBoxButtons.OK, MessageBoxIcon.Information)

                    ep.Nombre_ = ""

                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Else
            MessageBox.Show("Debe ingresar los datos de la medida a insertar", "Insertando Medida...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If
        llenarComboMedidas()
    End Sub

    Private Sub SalirButton_Click_1(sender As Object, e As EventArgs) Handles SalirButton.Click
        Me.Close()
    End Sub

    Private Sub EliminarButton_Click(sender As Object, e As EventArgs) Handles EliminarButton.Click
        If Me.ValidateChildren = True And ID_Tbx.Text <> "" Then
            Try
                ep.id_ = ID_Tbx.Text

                If func.Eliminar_sp("sp_EliminarMedida", ep) Then
                    MessageBox.Show("Medida eliminada correctamente!", "Eliminado Medida...")
                    ID_Tbx.Text = ""
                Else
                    MessageBox.Show("Medida no encontrada!", "Eliminado Medida...", MessageBoxButtons.OK, MessageBoxIcon.Information)
                    ID_Tbx.Text = ""
                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Else
            MessageBox.Show("Debe ingresar el ID de una Medida", "Eliminado Medida...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If
        llenarComboMedidas()
    End Sub

    Private Sub SeleccionarButton_Click(sender As Object, e As EventArgs) Handles SeleccionarButton.Click
        'Permite conexion a base de datos'
        Dim sqlad As SqlDataAdapter
        'Crea instancia de la variable'
        sqlCon = New SqlConnection(conn)

        Using (sqlCon)

            If Medida_cbx.SelectedIndex > -1 Then
                Dim n As Integer
                n = 0
                Dim sqlComm As New SqlCommand()
                'se hace la referencia a la conexión con la bd'
                sqlComm.Connection = sqlCon
                'se indica el nombre del stored procedure y el tipo'
                sqlCon.Open()
                sqlComm.CommandText = "sp_SeleccionarMedidasID" '
                sqlComm.Parameters.AddWithValue("@ID", Medida_cbx.SelectedValue)
                'Tipo de comando'
                sqlComm.CommandType = CommandType.StoredProcedure
                Dim dataR As SqlDataReader
                dataR = sqlComm.ExecuteReader()

                If dataR.Read() Then
                    ID_Tbx.Text = dataR.GetSqlInt32(0)
                    Nombre_Tbx.Text = dataR.GetSqlString(1)
                End If
            End If
        End Using
    End Sub
    Sub llenarComboMedidas()

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
            sqlComm.CommandText = "sp_SeleccionarMedias" '
            'Tipo de comando'
            sqlComm.CommandType = CommandType.StoredProcedure
            sqlad = New SqlDataAdapter(sqlComm)
            dt = New DataTable("Datos")
            'Llena el data table con la informacion que captura el sql adapter con el sp'
            sqlad.Fill(dt)
            Me.Medida_cbx.DataSource = dt
            'DisplayMember: Lo que se va a mostrar al usuario'
            Me.Medida_cbx.DisplayMember = "Nombre"
            'ValueMember: Codigo que va enrrolado'
            Me.Medida_cbx.ValueMember = "MedidaID"
            Me.Medida_cbx.SelectedIndex = -1

        End Using

    End Sub

    Private Sub ModificarButton_Click(sender As Object, e As EventArgs) Handles ModificarButton.Click
        If (Me.ValidateChildren = True And Nombre_Tbx.Text <> "") Then
            Try
                ep.Nombre_ = Nombre_Tbx.Text
                ep.id_ = ID_Tbx.Text
                If func.Modificar_Medida("sp_ModificarMedidas", ep) Then
                    MessageBox.Show("Medida modificada correctamente!", "Modificando Medida...")

                    ep.Nombre_ = ""

                Else
                    MessageBox.Show("Medida no modificada!", "Modificando Medida...", MessageBoxButtons.OK, MessageBoxIcon.Information)

                    ep.Nombre_ = ""

                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Else
            MessageBox.Show("Debe ingresar los datos de la medida a modificar", "Modificando Medida...", MessageBoxButtons.OK, MessageBoxIcon.Information)
        End If
        llenarComboMedidas()
    End Sub
End Class