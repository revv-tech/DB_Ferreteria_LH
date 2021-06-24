
Imports System.Data.SqlClient
Imports System.IO
Imports iTextSharp.text
Imports iTextSharp.text.pdf


Public Class Carrito

    Dim facturaTmp As New Propiedades
    Dim func As New Funciones
    Dim pedidos As New List(Of Propiedades)
    Dim subtotal As Integer = 0

    Dim NombreClienteSTR As String
    Dim NombreEmpleadoSTR As String
    Dim Tipo_De_PagoSTR As String
    Dim LocalSTR As String
    Private Sub frmCarrito_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        CenterToScreen()
        llenarComboLocales()
        llenarComboClientes()
        llenarComboTiposDeVenta()
        Subtotal_tbx.Text = subtotal
    End Sub

    Private Sub SalirButton_Click(sender As Object, e As EventArgs) Handles SalirButton.Click
        Me.Close()
    End Sub
    Sub llenarComboEmpleados()

        'Crea instancia de la variable'
        sqlCon = New SqlConnection(conn)

        sqlCon.Open()
        Dim cmd As New SqlCommand("sp_SeleccionarEmpleadosXLocal", sqlCon)
        'Tipo de comando'
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.AddWithValue("@LocalID", LocalCbx.SelectedValue)

        'Resultado de lo que se trae de la tabla'
        Dim dt As DataTable = New DataTable()
        'Llena el data table con la informacion que captura el sql adapter con el sp'
        dt.Load(cmd.ExecuteReader())
        Me.Empleado_cbx.DataSource = dt
        'DisplayMember: Lo que se va a mostrar al usuario'
        Me.Empleado_cbx.DisplayMember = "Nombre"
        'ValueMember: Codigo que va enrrolado'
        Me.Empleado_cbx.ValueMember = "EmpleadoID"
        Me.Empleado_cbx.SelectedIndex = -1
        sqlCon.Close()


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

    Sub llenarComboClientes()

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
            sqlComm.CommandText = "sp_SeleccionarClientes" '
            'Tipo de comando'
            sqlComm.CommandType = CommandType.StoredProcedure
            sqlad = New SqlDataAdapter(sqlComm)
            dt = New DataTable("Datos")
            'Llena el data table con la informacion que captura el sql adapter con el sp'
            sqlad.Fill(dt)
            Me.Cliente_cbx.DataSource = dt
            'DisplayMember: Lo que se va a mostrar al usuario'
            Me.Cliente_cbx.DisplayMember = "Nombre"
            'ValueMember: Codigo que va enrrolado'
            Me.Cliente_cbx.ValueMember = "ClienteID"
            Me.Cliente_cbx.SelectedIndex = -1

        End Using

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

    Sub seleccionarProductosXLocal()

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



    Private Sub VerStock_Click(sender As Object, e As EventArgs) Handles VerStock.Click
        If (LocalCbx.Text <> "") Then
            'Crea instancia de la variable'
            sqlCon = New SqlConnection(conn)


            sqlCon.Open()
            Dim cmd As New SqlCommand("sp_SeleccionarInventarioXLocal", sqlCon)
            'Tipo de comando'
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.AddWithValue("@LocalID", LocalCbx.SelectedValue)

            'Resultado de lo que se trae de la tabla'
            Dim dt As DataTable = New DataTable()
            'Llena el data table con la informacion que captura el sql adapter con el sp'
            dt.Load(cmd.ExecuteReader())
            Me.ProductosXLocal_dt.DataSource = dt
            sqlCon.Close()
            ProductosXLocal_cbx()
            llenarComboEmpleados()

        End If

    End Sub

    Private Sub ProductosXLocal_cbx() Handles VerStock.Click

        If (LocalCbx.Text <> "") Then
            'Crea instancia de la variable'
            sqlCon = New SqlConnection(conn)


            sqlCon.Open()
            Dim cmd As New SqlCommand("sp_SeleccionarInventarioXLocal", sqlCon)
            'Tipo de comando'
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.AddWithValue("@LocalID", LocalCbx.SelectedValue)

            'Resultado de lo que se trae de la tabla'
            Dim dt As DataTable = New DataTable()
            'Llena el data table con la informacion que captura el sql adapter con el sp'
            dt.Load(cmd.ExecuteReader())
            Me.Agregar_Pro.DataSource = dt
            'DisplayMember: Lo que se va a mostrar al usuario'
            Me.Agregar_Pro.DisplayMember = "Nombre"
            'ValueMember: Codigo que va enrrolado'
            Me.Agregar_Pro.ValueMember = "ProductoID"
            Me.Agregar_Pro.SelectedIndex = -1

            sqlCon.Close()
        End If

    End Sub

    Private Sub Agregar_Button_Click(sender As Object, e As EventArgs) Handles Agregar_Button.Click

        If (Agregar_Pro.Text <> "") And (Cantidad_Producto.Text <> "") Then
            'Permite conexion a base de datos'
            Dim sqlad As SqlDataAdapter
            'Crea instancia de la variable'
            sqlCon = New SqlConnection(conn)
            Dim sqlCon2 As SqlConnection
            sqlCon2 = New SqlConnection(conn)
            Dim sqlCon1 As SqlConnection
            sqlCon1 = New SqlConnection(conn)
            Dim producto As New Propiedades
            Dim cantidad As Integer

            producto.id_ = Agregar_Pro.SelectedValue
            producto.Cantidad_Ingreso = Cantidad_Producto.Text

            Using (sqlCon)
                Dim sqlComm As New SqlCommand()
                'se hace la referencia a la conexión con la bd'
                sqlComm.Connection = sqlCon
                'se indica el nombre del stored procedure y el tipo'
                sqlCon.Open()
                sqlComm.CommandText = "sp_SeleccionarProductosID" '
                sqlComm.Parameters.AddWithValue("@ID", Agregar_Pro.SelectedValue)
                'Tipo de comando'
                sqlComm.CommandType = CommandType.StoredProcedure
                Dim dataR As SqlDataReader
                dataR = sqlComm.ExecuteReader()

                If dataR.Read() Then
                    producto.Precio_Producto = dataR.GetSqlInt32(5)

                End If

                producto.Total_Linea = producto.Precio_Producto * producto.Cantidad_Ingreso
            End Using


            Using (sqlCon1)
                Dim sqlComm As New SqlCommand()
                'se hace la referencia a la conexión con la bd'
                sqlComm.Connection = sqlCon1
                'se indica el nombre del stored procedure y el tipo'
                sqlCon1.Open()
                sqlComm.CommandText = "sp_StockProductoXLocal" '
                sqlComm.Parameters.AddWithValue("@ProductoID", Agregar_Pro.SelectedValue)
                sqlComm.Parameters.AddWithValue("@LocalID", LocalCbx.SelectedValue)
                'Tipo de comando'
                sqlComm.CommandType = CommandType.StoredProcedure
                Dim dataR As SqlDataReader
                dataR = sqlComm.ExecuteReader()

                If dataR.Read() Then
                    cantidad = dataR.GetSqlInt32(0)

                End If

                producto.Total_Linea = producto.Precio_Producto * producto.Cantidad_Ingreso
            End Using


            Using (sqlCon2)

                Dim sqlComm As New SqlCommand()
                'se hace la referencia a la conexión con la bd'
                sqlComm.Connection = sqlCon2
                'se indica el nombre del stored procedure y el tipo'
                sqlCon2.Open()
                sqlComm.CommandText = "sp_ReducirInventariosXProductoYLocal" '
                sqlComm.Parameters.AddWithValue("@Cant", producto.Cantidad_Ingreso)
                sqlComm.Parameters.AddWithValue("@ProductoID", producto.id_)
                sqlComm.Parameters.AddWithValue("@LocalID", LocalCbx.SelectedValue)
                'Tipo de comando'
                sqlComm.CommandType = CommandType.StoredProcedure
                Dim dataR As SqlDataReader
                dataR = sqlComm.ExecuteReader()


            End Using
            If cantidad > 0 Then
                pedidos.Add(producto)
                subtotal = subtotal + producto.Total_Linea
            End If


        End If

        Agregar_Pro.Text = ""
        Cantidad_Producto.Text = ""
        Subtotal_tbx.Text = subtotal

    End Sub

    Sub realizarPedidos()
        Dim i As Integer

        i = pedidos.Count - 1
        While i <> -1

            Dim producto As New Propiedades
            producto = pedidos.ElementAt(i)
            producto.FacturaID_ = facturaTmp.id_
            func.Insetar_Pedido("sp_InsertarPedidos", producto)
            i = i - 1
        End While

    End Sub

    Private Sub Facturacion_Button_Click(sender As Object, e As EventArgs) Handles Facturacion_Button.Click
        Dim pedidos = New List(Of Propiedades)

        Dim subTotal As Integer
        Dim total As Integer
        Dim impuesto As Integer
        subTotal = 0
        'Permite conexion a base de datos'
        Dim sqlad As SqlDataAdapter
        'Crea instancia de la variable'
        sqlCon = New SqlConnection(conn)

        If (Empleado_cbx.Text <> "" And Cliente_cbx.Text <> "" And LocalCbx.Text <> "" And TipoDeVenta_cbx.Text <> "") Then

            facturaTmp.Fecha_ = Date.Now
            facturaTmp.Impuesto_ = 0
            facturaTmp.Subtotal_ = 0
            facturaTmp.Total_ = 0
            facturaTmp.EmpleadoID = Empleado_cbx.SelectedValue
            facturaTmp.LocalId = LocalCbx.SelectedValue
            facturaTmp.Cliente_ = Cliente_cbx.SelectedValue
            facturaTmp.TipodePago_ = TipoDeVenta_cbx.SelectedValue

            func.Insetar_Facturas("sp_InsertarFacturas", facturaTmp)

            Using (sqlCon)

                Dim sqlComm As New SqlCommand()
                'se hace la referencia a la conexión con la bd'
                sqlComm.Connection = sqlCon
                'se indica el nombre del stored procedure y el tipo'
                sqlCon.Open()
                sqlComm.CommandText = "sp_MaxFacturas" '
                'Tipo de comando'
                sqlComm.CommandType = CommandType.StoredProcedure
                Dim dataR As SqlDataReader
                dataR = sqlComm.ExecuteReader()
                If dataR.Read() Then
                    facturaTmp.id_ = dataR.GetInt32(0)
                End If

            End Using

            realizarPedidos()


            Dim sqlCon2 As SqlConnection
            'Crea instancia de la variable'
            sqlCon2 = New SqlConnection(conn)
            Using (sqlCon2)
                sqlCon2.Open()
                Dim cmd As New SqlCommand("sp_SeleccionarPedidosXFactura", sqlCon2)
                'Tipo de comando'
                cmd.CommandType = CommandType.StoredProcedure
                cmd.Parameters.AddWithValue("@FacturaID", facturaTmp.id_)

                'Resultado de lo que se trae de la tabla'
                Dim dt As DataTable = New DataTable()
                'Llena el data table con la informacion que captura el sql adapter con el sp'
                dt.Load(cmd.ExecuteReader())
                Me.Factura_Pedidos.DataSource = dt
                sqlCon2.Close()
            End Using


            Dim sqlCon3 As SqlConnection
            'Crea instancia de la variable'
            sqlCon3 = New SqlConnection(conn)
            Using (sqlCon3)

                Dim sqlComm As New SqlCommand()
                'se hace la referencia a la conexión con la bd'
                sqlComm.Connection = sqlCon3
                'se indica el nombre del stored procedure y el tipo'
                sqlCon3.Open()
                sqlComm.CommandText = "sp_CalcularSubTotalXFactura" '
                'Tipo de comando'
                sqlComm.CommandType = CommandType.StoredProcedure
                sqlComm.Parameters.AddWithValue("@FacturaID", facturaTmp.id_)
                Dim dataR As SqlDataReader
                dataR = sqlComm.ExecuteReader()
                If dataR.Read() Then
                    subTotal = dataR.GetInt32(0)
                End If


            End Using

            impuesto = subTotal * 0.13

            total = subTotal + impuesto

            Dim sqlCon4 As SqlConnection
            'Crea instancia de la variable'
            sqlCon4 = New SqlConnection(conn)

            Using (sqlCon4)

                Dim sqlComm As New SqlCommand()
                'se hace la referencia a la conexión con la bd'
                sqlComm.Connection = sqlCon4
                'se indica el nombre del stored procedure y el tipo'
                sqlCon4.Open()
                sqlComm.CommandText = "sp_ModificarTotalesFacturas" '
                'Tipo de comando'
                sqlComm.CommandType = CommandType.StoredProcedure
                sqlComm.Parameters.AddWithValue("@FacturaID", facturaTmp.id_)
                sqlComm.Parameters.AddWithValue("@impuesto", impuesto)
                sqlComm.Parameters.AddWithValue("@subtotal", subTotal)
                sqlComm.Parameters.AddWithValue("@total", total)
                sqlCon4.Close()
            End Using

            Total_tbx.Text = total
            Subtotal_tbx.Text = subTotal
            Impuesto_tbx.Text = impuesto

            NombreClienteSTR = Cliente_cbx.Text
            NombreEmpleadoSTR = Empleado_cbx.Text
            LocalSTR = LocalCbx.Text
            Tipo_De_PagoSTR = TipoDeVenta_cbx.Text

            facturaTmp.Total_ = total
            facturaTmp.Subtotal_ = subTotal
            facturaTmp.Impuesto_ = impuesto

        End If

    End Sub


    Private Sub PDF_Factura_Click(sender As Object, e As EventArgs) Handles PDF_Factura.Click




        If (Factura_Pedidos.Rows.Count > 0) Then
            Dim Font10 As New Font(FontFactory.GetFont(FontFactory.TIMES_ROMAN, 10, iTextSharp.text.Font.BOLD, BaseColor.GRAY))
            Dim Font8 As New Font(FontFactory.GetFont(FontFactory.TIMES_ROMAN, 8, iTextSharp.text.Font.NORMAL))
            Dim FontCells As New Font(FontFactory.GetFont(FontFactory.TIMES_ROMAN, 12, BaseColor.WHITE))
            Dim save As SaveFileDialog = New SaveFileDialog()
            save.Filter = "PDF (*.pdf)|*.pdf"
            save.FileName = "Factura" + facturaTmp.id_.ToString() + ".pdf"
            Dim ErrorMessage = False
            If (save.ShowDialog() = DialogResult.OK) Then
                If (File.Exists(save.FileName)) Then

                    Try
                        File.Delete(save.FileName)
                    Catch ex As Exception
                        ErrorMessage = True
                        MessageBox.Show("Unable to wride data in disk" + ex.Message)
                    End Try

                End If
                If (ErrorMessage <> True) Then
                    Try

                        'Tabla Encabezado'
                        Dim imageURL As String = "C:\Users\Marco\Desktop\Documentos TEC\DB_Ferreteria_LH\Images\title.png"
                        Dim imagePNG As iTextSharp.text.Image
                        imagePNG = iTextSharp.text.Image.GetInstance(imageURL)
                        imagePNG.ScaleToFit(110.0F, 140.0F)
                        imagePNG.SetAbsolutePosition(680, 510)

                        Dim pTable As New PdfPTable(Factura_Pedidos.Columns.Count)
                        pTable.DefaultCell.Padding = 5
                        pTable.WidthPercentage = 100
                        pTable.HorizontalAlignment = Element.ALIGN_LEFT

                        'Table Header'

                        For Each Facturas_PedidosColum In Factura_Pedidos.Columns
                            Dim paraCell As New Paragraph()
                            paraCell.Alignment = Element.ALIGN_CENTER
                            paraCell.Add(New Chunk(CStr(Facturas_PedidosColum.HeaderText), Font10))
                            Dim pCell = New PdfPCell()
                            pCell.Border = 0
                            pCell.BorderWidthTop = 0

                            pCell.AddElement(paraCell)
                            pTable.AddCell(pCell)
                        Next

                        For Each Facturas_PedidosRow In Factura_Pedidos.Rows
                            For Each Facturas_PedidosDCell In Facturas_PedidosRow.Cells
                                Dim paraCell2 As New Paragraph()
                                paraCell2.Alignment = Element.ALIGN_CENTER
                                paraCell2.Add(New Chunk(Facturas_PedidosDCell.Value.ToString(), Font8))
                                Dim pCell2 = New PdfPCell()
                                pCell2.Border = 0
                                pCell2.BorderWidthTop = 0
                                pCell2.AddElement(paraCell2)
                                pTable.AddCell(pCell2)

                            Next
                        Next

                        Dim fStream As New FileStream(save.FileName, FileMode.Create)

                        Using (fStream)
                            'HEADER'
                            Dim strHeader As String
                            strHeader = "Factura # " + facturaTmp.id_.ToString()
                            Dim doc As New Document(PageSize.A4.Rotate, 40, 40, 80, 20)
                            PdfWriter.GetInstance(doc, fStream)
                            Dim Font88 As New Font(FontFactory.GetFont(FontFactory.TIMES_ROMAN, 20, iTextSharp.text.Font.BOLD, BaseColor.BLUE))
                            Dim prgHeading As New Paragraph()
                            prgHeading.Alignment = Element.ALIGN_CENTER
                            prgHeading.Add(New Chunk(strHeader.ToUpper(), Font88))
                            'CLIENTE'
                            Dim nombreCliente As String
                            Dim idCliente As String
                            idCliente = "ID Cliente: " + facturaTmp.Cliente_.ToString()
                            nombreCliente = "Nombre Cliente: " + NombreClienteSTR
                            Dim cliente As New Paragraph()
                            cliente.Alignment = Element.ALIGN_LEFT
                            cliente.Add(New Chunk(idCliente, Font10))
                            Dim cliente2 As New Paragraph()
                            cliente2.Alignment = Element.ALIGN_LEFT
                            cliente2.Add(New Chunk(NombreClienteSTR, Font10))
                            'LOCAL Y EMPLEADO'
                            Dim local As New Paragraph()
                            Dim empleado As New Paragraph()
                            local.Add(New Chunk("Local " + LocalSTR, Font10))
                            empleado.Add(New Chunk("Empleado: " + NombreEmpleadoSTR, Font10))
                            'FECHA'
                            Dim fecha As New Date
                            fecha = Date.Now
                            fecha.ToUniversalTime()
                            Dim fechaPr As New Paragraph()
                            fechaPr.Add(New Chunk("Fecha:       " + fecha.ToString(), Font10))
                            fechaPr.Alignment = Element.ALIGN_RIGHT
                            'LINEA'
                            Dim linea As New Paragraph(New Chunk(New iTextSharp.text.pdf.draw.LineSeparator(0.0F, 100.0F, BaseColor.BLACK, Element.ALIGN_CENTER, 1)))
                            'TOTAL, SUBTOTAL, Y IMPUESTO'
                            Dim subtotal As New Paragraph(New Chunk("Subtotal: " + facturaTmp.Subtotal_.ToString(), Font10))
                            subtotal.Alignment = Element.ALIGN_RIGHT
                            Dim impuesto As New Paragraph(New Chunk("Impuesto: " + facturaTmp.Impuesto_.ToString(), Font10))
                            impuesto.Alignment = Element.ALIGN_RIGHT
                            Dim total As New Paragraph(New Chunk("Total: " + facturaTmp.Total_.ToString(), Font10))
                            total.Alignment = Element.ALIGN_RIGHT
                            'TIPO DE PAGO'
                            Dim tDP As New Paragraph()
                            tDP.Add(New Chunk("Tipo de Pago: " + Tipo_De_PagoSTR, Font10))

                            'ESTRUCTURA DEL PDF'
                            doc.Open()
                            doc.Add(prgHeading)
                            doc.Add(imagePNG)

                            doc.Add(local)
                            doc.Add(empleado)
                            doc.Add(cliente)
                            doc.Add(cliente2)
                            doc.Add(tDP)
                            doc.Add(fechaPr)
                            doc.Add(linea)
                            doc.Add(pTable)
                            doc.Add(New Chunk(vbCrLf, Font8))
                            doc.Add(linea)
                            doc.Add(subtotal)
                            doc.Add(impuesto)
                            doc.Add(total)

                            doc.Close()

                            fStream.Close()
                        End Using
                        MessageBox.Show("Gracias por su compra!", "Compra realizada")
                    Catch ex As Exception
                        MessageBox.Show("Error while exporting Data" + ex.Message)
                    End Try

                End If
            End If
        Else
            MessageBox.Show("No se pudo realizar la factura")
        End If

        Me.Close()
    End Sub


End Class