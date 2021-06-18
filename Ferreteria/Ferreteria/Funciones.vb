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
    Public Function Modificar_Proveedor_Cliente_Local(nombreSp As String, ByVal data As Propiedades) As Boolean

        Try
            cn.Open()
            cmd = New SqlCommand(nombreSp, cn)
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.AddWithValue("@ID", data.id_)
            cmd.Parameters.AddWithValue("@nombre", data.Nombre_)
            cmd.Parameters.AddWithValue("@direccion", data.Direccion_)
            cmd.Parameters.AddWithValue("@correo", data.Correo_)
            cmd.Parameters.AddWithValue("@telefono", data.Telefono_)


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
    Public Function Insetar_Categoria(nombreSp As String, ByVal data As Propiedades) As Boolean

        Try
            cn.Open()
            cmd = New SqlCommand(nombreSp, cn)
            cmd.CommandType = CommandType.StoredProcedure

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
    Public Function Insetar_Proveedor_Cliente_Local(nombreSp As String, ByVal data As Propiedades) As Boolean

        Try
            cn.Open()
            cmd = New SqlCommand(nombreSp, cn)
            cmd.CommandType = CommandType.StoredProcedure

            cmd.Parameters.AddWithValue("@nombre", data.Nombre_)
            cmd.Parameters.AddWithValue("@direccion", data.Direccion_)
            cmd.Parameters.AddWithValue("@correo", data.Correo_)
            cmd.Parameters.AddWithValue("@telefono", data.Telefono_)

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


    Public Function Insetar_Empleado(nombreSp As String, ByVal data As Propiedades) As Boolean

        Try
            cn.Open()
            cmd = New SqlCommand(nombreSp, cn)
            cmd.CommandType = CommandType.StoredProcedure

            cmd.Parameters.AddWithValue("@nombre", data.Nombre_)
            cmd.Parameters.AddWithValue("@direccion", data.Direccion_)
            cmd.Parameters.AddWithValue("@correo", data.Correo_)
            cmd.Parameters.AddWithValue("@fecha", data.Fecha_)
            cmd.Parameters.AddWithValue("@LocalID", data.LocalId)

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

    Public Function Insetar_Inventario(nombreSp As String, ByVal data As Propiedades) As Boolean

        Try
            cn.Open()
            cmd = New SqlCommand(nombreSp, cn)
            cmd.CommandType = CommandType.StoredProcedure

            cmd.Parameters.AddWithValue("@ProductoID", data.ProductoID)
            cmd.Parameters.AddWithValue("@LocalID", data.LocalId)
            cmd.Parameters.AddWithValue("@Stock", data.Cantidad_Ingreso)


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

    Public Function Modificar_Empleado(nombreSp As String, ByVal data As Propiedades) As Boolean

        Try
            cn.Open()
            cmd = New SqlCommand(nombreSp, cn)
            cmd.CommandType = CommandType.StoredProcedure

            cmd.Parameters.AddWithValue("@ID", data.id_)
            cmd.Parameters.AddWithValue("@nombre", data.Nombre_)
            cmd.Parameters.AddWithValue("@direccion", data.Direccion_)
            cmd.Parameters.AddWithValue("@correo", data.Correo_)
            cmd.Parameters.AddWithValue("@fecha", data.Fecha_)
            cmd.Parameters.AddWithValue("@LocalID", data.LocalId)

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

    Public Function Insetar_Producto(nombreSp As String, ByVal data As Propiedades) As Boolean

        Try
            cn.Open()
            cmd = New SqlCommand(nombreSp, cn)
            cmd.CommandType = CommandType.StoredProcedure

            cmd.Parameters.AddWithValue("@nombre", data.Nombre_)
            cmd.Parameters.AddWithValue("@precio", data.Precio_Producto)
            cmd.Parameters.AddWithValue("@ProveedorID", data.ProveedorID)
            cmd.Parameters.AddWithValue("@CategoriaID", data.CategoriaID)
            cmd.Parameters.AddWithValue("@MedidaID", data.MedidaID)

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

    Public Function Modificar_Productos(nombreSp As String, ByVal data As Propiedades) As Boolean

        Try
            cn.Open()
            cmd = New SqlCommand(nombreSp, cn)
            cmd.CommandType = CommandType.StoredProcedure

            cmd.Parameters.AddWithValue("@ID", data.id_)
            cmd.Parameters.AddWithValue("@nombre", data.Nombre_)
            cmd.Parameters.AddWithValue("@precio", data.Precio_Producto)
            cmd.Parameters.AddWithValue("@ProveedorID", data.ProveedorID)
            cmd.Parameters.AddWithValue("@CategoriaID", data.CategoriaID)
            cmd.Parameters.AddWithValue("@MedidaID", data.MedidaID)

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

    Public Function Insetar_Ingreso(nombreSp As String, ByVal data As Propiedades) As Boolean

        Try
            cn.Open()
            cmd = New SqlCommand(nombreSp, cn)
            cmd.CommandType = CommandType.StoredProcedure

            cmd.Parameters.AddWithValue("@cantidad", data.Cantidad_Ingreso)
            cmd.Parameters.AddWithValue("@fecha", data.Fecha_)
            cmd.Parameters.AddWithValue("@EmpleadoID", data.EmpleadoID)
            cmd.Parameters.AddWithValue("@LocalID", data.LocalId)
            cmd.Parameters.AddWithValue("@ProductoID", data.ProductoID)

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

    Public Function Insetar_Medida(nombreSp As String, ByVal data As Propiedades) As Boolean

        Try
            cn.Open()
            cmd = New SqlCommand(nombreSp, cn)
            cmd.CommandType = CommandType.StoredProcedure

            cmd.Parameters.AddWithValue("@nombre", data.Nombre_)


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

    Public Function Modificar_Medida(nombreSp As String, ByVal data As Propiedades) As Boolean

        Try
            cn.Open()
            cmd = New SqlCommand(nombreSp, cn)
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.AddWithValue("@ID", data.id_)
            cmd.Parameters.AddWithValue("@nombre", data.Nombre_)


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

    Public Function Insetar_Pedido(nombreSp As String, ByVal data As Propiedades) As Boolean

        Try
            cn.Open()
            cmd = New SqlCommand(nombreSp, cn)
            cmd.CommandType = CommandType.StoredProcedure

            cmd.Parameters.AddWithValue("@cantidad", data.Cantidad_Ingreso)
            cmd.Parameters.AddWithValue("@precio", data.Precio_Producto)
            cmd.Parameters.AddWithValue("@totalLinea", data.Total_)
            cmd.Parameters.AddWithValue("@ProductoID", data.ProductoID)
            cmd.Parameters.AddWithValue("@FacturaID", data.FacturaID_)


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

    Public Function Insetar_Facturas(nombreSp As String, ByVal data As Propiedades) As Boolean

        Try
            cn.Open()
            cmd = New SqlCommand(nombreSp, cn)
            cmd.CommandType = CommandType.StoredProcedure


            cmd.Parameters.AddWithValue("@direccion", data.Direccion_)
            cmd.Parameters.AddWithValue("@fecha", data.Fecha_)
            cmd.Parameters.AddWithValue("@impuesto", data.Impuesto_)
            cmd.Parameters.AddWithValue("@subtotal", data.Subtotal_)
            cmd.Parameters.AddWithValue("@total", data.Total_)
            cmd.Parameters.AddWithValue("@EmpleadoID", data.EmpleadoID)
            cmd.Parameters.AddWithValue("@LocalID", data.LocalId)
            cmd.Parameters.AddWithValue("@ClienteID", data.Cliente_)
            cmd.Parameters.AddWithValue("@TipoDePagoID", data.TipodePago_)

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

    Public Function Insetar_Tipo_de_Venta(nombreSp As String, ByVal data As Propiedades) As Boolean

        Try
            cn.Open()
            cmd = New SqlCommand(nombreSp, cn)
            cmd.CommandType = CommandType.StoredProcedure

            cmd.Parameters.AddWithValue("@Descripcion", data.Descripcion_)


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

    Public Function Modificar_Tipo_de_Venta(nombreSp As String, ByVal data As Propiedades) As Boolean

        Try
            cn.Open()
            cmd = New SqlCommand(nombreSp, cn)
            cmd.CommandType = CommandType.StoredProcedure

            cmd.Parameters.AddWithValue("@ID", data.id_)
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

    Public Function Insetar_Factura(nombreSp As String, ByVal data As Propiedades) As Boolean

        Try
            cn.Open()
            cmd = New SqlCommand(nombreSp, cn)
            cmd.CommandType = CommandType.StoredProcedure

            cmd.Parameters.AddWithValue("@Descripcion", data.Descripcion_)


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
