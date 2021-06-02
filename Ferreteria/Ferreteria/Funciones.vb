Imports System.Data.SqlClient


Public Class Funciones
    Dim cn As New SqlConnection(My.Settings.Conexion)
    Dim cmd As New SqlCommand

    'Elimnar Sp'
    Public Function Eliminar_sp(nombreSp As String, ByVal data As Propiedades) As Boolean

        Try
            cn.Open()
            cmd = New SqlCommand(nombreSp, cn)
            cmd.CommandType = CommandType.StoredProcedure

            cmd.Parameters.AddWithValue("@ID", data.id_)

            If cmd.ExecuteNonQuery() Then
                Return True
            Else
                Return False

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
            Return False
        Finally
            cn.Close()
        End Try
    End Function

    'Atualizar Sp'
    Public Function Modificar_sp(nombreSp As String, ByVal data As Propiedades) As Boolean

        Try
            cn.Open()
            cmd = New SqlCommand(nombreSp, cn)
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.AddWithValue("@ID", data.id_)
            cmd.Parameters.AddWithValue("@nombre", data.Nombre_)
            cmd.Parameters.AddWithValue("@descripcion", data.Descripcion_)

            If cmd.ExecuteNonQuery() Then
                Return True
            Else
                Return False

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
            Return False
        Finally
            cn.Close()
        End Try
    End Function


    'Insertar Sp'
    Public Function Insetar_sp(nombreSp As String, ByVal data As Propiedades) As Boolean

        Try
            cn.Open()
            cmd = New SqlCommand(nombreSp, cn)
            cmd.CommandType = CommandType.StoredProcedure

            cmd.Parameters.AddWithValue("@ID", data.id_)
            cmd.Parameters.AddWithValue("@nombre", data.Nombre_)
            cmd.Parameters.AddWithValue("@descripcion", data.Descripcion_)

            If cmd.ExecuteNonQuery() Then
                Return True
            Else
                Return False

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
            Return False
        Finally
            cn.Close()
        End Try
    End Function

    'Seleccionar Sp'
    Public Function Seleccionar_sp(nombreSp As String, ByVal data As Propiedades) As Boolean

        Try
            cn.Open()
            cmd = New SqlCommand(nombreSp, cn)
            cmd.CommandType = CommandType.StoredProcedure

            cmd.Parameters.AddWithValue("@ID", data.id_)

            If cmd.ExecuteNonQuery() Then
                Return True
            Else
                Return False

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
            Return False
        Finally
            cn.Close()
        End Try
    End Function

End Class
