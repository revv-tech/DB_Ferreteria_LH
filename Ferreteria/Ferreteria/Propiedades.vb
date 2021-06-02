Public Class Propiedades
    Private id As String
    Private Nombre As String
    Private Existencia As Integer
    Private Descripcion As String

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



End Class
