Public Class Propiedades

    Private id As String
    Private Nombre As String
    Private Descripcion As String
    Private Direccion As String
    Private Correo As String
    Private Telefono As String
    Private local_ID As Integer
    Private empleado_ID As Integer
    Private producto_ID As Integer
    Private categoria_ID As Integer
    Private proveedor_ID As Integer
    Private cliente_ID As Integer
    Private tipodepago_ID As Integer
    Private factura_ID As Integer
    Private subtotal As Integer
    Private impuesto As Integer
    Private total As Integer
    Private medida_ID As Integer
    Private fecha As Date
    Private CantidadIngreso As Integer
    Private PrecioProducto As Integer


    Public Property id_ As String
        Get
            Return id
        End Get

        Set(value As String)
            id = value
        End Set
    End Property

    Public Property Nombre_ As String
        Get
            Return Nombre
        End Get

        Set(value As String)
            Nombre = value
        End Set
    End Property
    Public Property Precio_Producto As Integer
        Get
            Return PrecioProducto
        End Get

        Set(value As Integer)
            PrecioProducto = value
        End Set
    End Property


    Public Property Descripcion_ As String
        Get
            Return Descripcion
        End Get

        Set(value As String)
            Descripcion = value
        End Set

    End Property

    Public Property Direccion_ As String
        Get
            Return Direccion
        End Get

        Set(value As String)
            Direccion = value
        End Set
    End Property

    Public Property Correo_ As String
        Get
            Return Correo
        End Get

        Set(value As String)
            Correo = value
        End Set
    End Property

    Public Property Telefono_ As String
        Get
            Return Telefono
        End Get

        Set(value As String)
            Telefono = value
        End Set
    End Property

    Public Property LocalId As Integer
        Get
            Return local_ID
        End Get

        Set(value As Integer)
            local_ID = value
        End Set
    End Property

    Public Property EmpleadoID As Integer
        Get
            Return empleado_ID
        End Get

        Set(value As Integer)
            empleado_ID = value
        End Set
    End Property

    Public Property FacturaID_ As Integer
        Get
            Return factura_ID
        End Get

        Set(value As Integer)
            factura_ID = value
        End Set
    End Property

    Public Property ProductoID As Integer
        Get
            Return producto_ID
        End Get

        Set(value As Integer)
            producto_ID = value
        End Set
    End Property


    Public Property ProveedorID As Integer
        Get
            Return proveedor_ID

        End Get

        Set(value As Integer)
            proveedor_ID = value
        End Set
    End Property

    Public Property CategoriaID As Integer
        Get
            Return categoria_ID

        End Get

        Set(value As Integer)
            categoria_ID = value
        End Set
    End Property

    Public Property MedidaID As Integer
        Get
            Return medida_ID

        End Get

        Set(value As Integer)
            medida_ID = value
        End Set
    End Property

    Public Property Fecha_ As Date
        Get
            Return fecha
        End Get

        Set(value As Date)
            fecha = value
        End Set
    End Property

    Public Property Cantidad_Ingreso As Integer
        Get
            Return CantidadIngreso
        End Get

        Set(value As Integer)
            CantidadIngreso = value
        End Set
    End Property

    Public Property Cliente_ As Integer
        Get
            Return cliente_ID
        End Get

        Set(value As Integer)
            cliente_ID = value
        End Set
    End Property

    Public Property TipodePago_ As Integer
        Get
            Return tipodepago_ID
        End Get

        Set(value As Integer)
            tipodepago_ID = value
        End Set
    End Property

    Public Property Subtotal_ As Integer
        Get
            Return subtotal
        End Get

        Set(value As Integer)
            subtotal = value
        End Set
    End Property

    Public Property Impuesto_ As Integer
        Get
            Return impuesto
        End Get

        Set(value As Integer)
            impuesto = value
        End Set
    End Property

    Public Property Total_ As Integer
        Get
            Return total
        End Get

        Set(value As Integer)
            total = value
        End Set
    End Property




End Class
