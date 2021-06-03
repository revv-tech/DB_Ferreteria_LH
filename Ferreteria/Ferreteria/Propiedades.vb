Public Class Propiedades
    Private id As String
    Private Nombre As String
    Private Existencia As Integer
    Private Descripcion As String
    Private Direccion As String
    Private Correo As String
    Private Telefono As String

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

    Public Property Existencia_ As String
        Get
            Return Existencia
        End Get

        Set(value As String)
            Existencia = value
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

End Class
