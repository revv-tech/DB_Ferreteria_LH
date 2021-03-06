USE [master]
GO
/****** Object:  Database [FerreteriaLosHermanos]    Script Date: 24/6/2021 23:36:29 ******/
CREATE DATABASE [FerreteriaLosHermanos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FerreteriaLosHermanos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLSERVIDOR\MSSQL\DATA\FerreteriaLosHermanos.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FerreteriaLosHermanos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLSERVIDOR\MSSQL\DATA\FerreteriaLosHermanos_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [FerreteriaLosHermanos] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FerreteriaLosHermanos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FerreteriaLosHermanos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FerreteriaLosHermanos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FerreteriaLosHermanos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FerreteriaLosHermanos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FerreteriaLosHermanos] SET ARITHABORT OFF 
GO
ALTER DATABASE [FerreteriaLosHermanos] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FerreteriaLosHermanos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FerreteriaLosHermanos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FerreteriaLosHermanos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FerreteriaLosHermanos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FerreteriaLosHermanos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FerreteriaLosHermanos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FerreteriaLosHermanos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FerreteriaLosHermanos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FerreteriaLosHermanos] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FerreteriaLosHermanos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FerreteriaLosHermanos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FerreteriaLosHermanos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FerreteriaLosHermanos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FerreteriaLosHermanos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FerreteriaLosHermanos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FerreteriaLosHermanos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FerreteriaLosHermanos] SET RECOVERY FULL 
GO
ALTER DATABASE [FerreteriaLosHermanos] SET  MULTI_USER 
GO
ALTER DATABASE [FerreteriaLosHermanos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FerreteriaLosHermanos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FerreteriaLosHermanos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FerreteriaLosHermanos] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FerreteriaLosHermanos] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FerreteriaLosHermanos] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'FerreteriaLosHermanos', N'ON'
GO
ALTER DATABASE [FerreteriaLosHermanos] SET QUERY_STORE = OFF
GO
USE [FerreteriaLosHermanos]
GO
/****** Object:  Table [dbo].[Bitacora]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bitacora](
	[BitacoraID] [int] IDENTITY(1,1) NOT NULL,
	[ActualizacionID] [int] NOT NULL,
	[Fecha] [date] NULL,
	[UsuarioID] [int] NOT NULL,
	[TablaModificada] [varchar](40) NULL,
 CONSTRAINT [PK_Bitacora] PRIMARY KEY CLUSTERED 
(
	[BitacoraID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[CategoriaID] [int] IDENTITY(1,1) NOT NULL,
	[NombreCategoria] [nchar](25) NULL,
	[Descripcion] [nchar](100) NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[CategoriaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ClienteID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](100) NULL,
	[Direccion] [nchar](250) NULL,
	[Correo] [nchar](75) NULL,
	[Telefono] [nchar](8) NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[ClienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[EmpleadoID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](100) NULL,
	[Direccion] [nchar](250) NULL,
	[Correo] [nchar](75) NULL,
	[FechaNacimiento] [date] NULL,
	[LocalID] [int] NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[EmpleadoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facturas]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facturas](
	[FacturaID] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NULL,
	[Impuesto] [int] NULL,
	[Subtotal] [int] NULL,
	[Total] [int] NULL,
	[LocalID] [int] NULL,
	[EmpleadoID] [int] NULL,
	[ClienteID] [int] NULL,
	[TipoDePagoID] [int] NULL,
 CONSTRAINT [PK_Facturas] PRIMARY KEY CLUSTERED 
(
	[FacturaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventarios]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventarios](
	[InventarioID] [int] IDENTITY(1,1) NOT NULL,
	[Stock] [int] NULL,
	[LocalID] [int] NULL,
	[ProductoID] [int] NULL,
 CONSTRAINT [PK_Inventarios] PRIMARY KEY CLUSTERED 
(
	[InventarioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Locales]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locales](
	[LocalID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](100) NULL,
	[Direccion] [nchar](250) NULL,
	[Telefono] [nchar](8) NULL,
	[Correo] [nchar](75) NULL,
 CONSTRAINT [PK_Locales] PRIMARY KEY CLUSTERED 
(
	[LocalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medidas]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medidas](
	[MedidaID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nchar](20) NULL,
 CONSTRAINT [PK_Medidas] PRIMARY KEY CLUSTERED 
(
	[MedidaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedidos]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedidos](
	[PedidoID] [int] IDENTITY(1,1) NOT NULL,
	[Cantidad] [int] NULL,
	[Precio] [int] NULL,
	[TotalLinea] [int] NULL,
	[FacturaID] [int] NULL,
	[ProductoID] [int] NULL,
 CONSTRAINT [PK_Pedidos] PRIMARY KEY CLUSTERED 
(
	[PedidoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[ProductoID] [int] IDENTITY(1,1) NOT NULL,
	[ProvedorID] [int] NULL,
	[CategoriaID] [int] NULL,
	[MedidaID] [int] NULL,
	[Nombre] [nchar](45) NULL,
	[Precio] [int] NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[ProductoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedores](
	[ProveedorID] [int] IDENTITY(1,1) NOT NULL,
	[NombreProveedor] [nchar](100) NULL,
	[Direccion] [nchar](250) NULL,
	[Correo] [nchar](75) NULL,
	[Telefono] [nchar](8) NULL,
 CONSTRAINT [PK_Proveedores] PRIMARY KEY CLUSTERED 
(
	[ProveedorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoAcceso]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoAcceso](
	[AccesoID] [int] NOT NULL,
	[TipoAcceso] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TipoAcceso] PRIMARY KEY CLUSTERED 
(
	[AccesoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoActualizacion]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoActualizacion](
	[ActualizacionID] [int] NOT NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_TipoActualizacion] PRIMARY KEY CLUSTERED 
(
	[ActualizacionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDeVenta]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDeVenta](
	[TipoVentaID] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nchar](100) NOT NULL,
 CONSTRAINT [PK_TipoDeVenta] PRIMARY KEY CLUSTERED 
(
	[TipoVentaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[UsuarioID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Contraseña] [varchar](50) NULL,
	[AccesoID] [int] NULL,
	[EmpleadoID] [int] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[UsuarioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bitacora]  WITH CHECK ADD  CONSTRAINT [FK_Bitacora_TipoActualizacion] FOREIGN KEY([ActualizacionID])
REFERENCES [dbo].[TipoActualizacion] ([ActualizacionID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bitacora] CHECK CONSTRAINT [FK_Bitacora_TipoActualizacion]
GO
ALTER TABLE [dbo].[Bitacora]  WITH CHECK ADD  CONSTRAINT [FK_Bitacora_Usuario] FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Usuario] ([UsuarioID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bitacora] CHECK CONSTRAINT [FK_Bitacora_Usuario]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Locales] FOREIGN KEY([LocalID])
REFERENCES [dbo].[Locales] ([LocalID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Locales]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_Clientes] FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Clientes] ([ClienteID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_Facturas_Clientes]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_Empleados1] FOREIGN KEY([EmpleadoID])
REFERENCES [dbo].[Empleados] ([EmpleadoID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_Facturas_Empleados1]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_Locales1] FOREIGN KEY([LocalID])
REFERENCES [dbo].[Locales] ([LocalID])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_Facturas_Locales1]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_TipoDeVenta] FOREIGN KEY([TipoDePagoID])
REFERENCES [dbo].[TipoDeVenta] ([TipoVentaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_Facturas_TipoDeVenta]
GO
ALTER TABLE [dbo].[Inventarios]  WITH CHECK ADD  CONSTRAINT [FK_Inventarios_Locales1] FOREIGN KEY([LocalID])
REFERENCES [dbo].[Locales] ([LocalID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Inventarios] CHECK CONSTRAINT [FK_Inventarios_Locales1]
GO
ALTER TABLE [dbo].[Inventarios]  WITH CHECK ADD  CONSTRAINT [FK_Inventarios_Productos1] FOREIGN KEY([ProductoID])
REFERENCES [dbo].[Productos] ([ProductoID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Inventarios] CHECK CONSTRAINT [FK_Inventarios_Productos1]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Pedidos_Facturas] FOREIGN KEY([FacturaID])
REFERENCES [dbo].[Facturas] ([FacturaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Pedidos_Facturas]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Pedidos_Productos] FOREIGN KEY([ProductoID])
REFERENCES [dbo].[Productos] ([ProductoID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Pedidos_Productos]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Categorias1] FOREIGN KEY([CategoriaID])
REFERENCES [dbo].[Categorias] ([CategoriaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Categorias1]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Medidas1] FOREIGN KEY([MedidaID])
REFERENCES [dbo].[Medidas] ([MedidaID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Medidas1]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Proveedores1] FOREIGN KEY([ProvedorID])
REFERENCES [dbo].[Proveedores] ([ProveedorID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Proveedores1]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Empleados] FOREIGN KEY([EmpleadoID])
REFERENCES [dbo].[Empleados] ([EmpleadoID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Empleados]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_TipoAcceso] FOREIGN KEY([AccesoID])
REFERENCES [dbo].[TipoAcceso] ([AccesoID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_TipoAcceso]
GO
/****** Object:  StoredProcedure [dbo].[sp_CalcularSubTotalXFactura]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CalcularSubTotalXFactura] @FacturaID int
AS
BEGIN
    SELECT SUM(TotalLinea)
    FROM Pedidos
    WHERE FacturaID = @FacturaID
END
GO
/****** Object:  StoredProcedure [dbo].[sp_EliminarBitacora]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EliminarBitacora] @ID int

AS
BEGIN

DELETE FROM Bitacora
WHERE BitacoraID = @ID

END
GO
/****** Object:  StoredProcedure [dbo].[sp_EliminarCategorias]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EliminarCategorias]

@ID int

AS

DELETE FROM Categorias

WHERE CategoriaID = @ID
GO
/****** Object:  StoredProcedure [dbo].[sp_EliminarClientes]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EliminarClientes]

@ID int

AS

DELETE FROM Clientes

WHERE @ID = ClienteID
GO
/****** Object:  StoredProcedure [dbo].[sp_EliminarEmpleados]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EliminarEmpleados]

@ID int

AS

DELETE FROM Empleados

WHERE @ID = EmpleadoID
GO
/****** Object:  StoredProcedure [dbo].[sp_EliminarFacturas]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EliminarFacturas]
@ID int

AS

DELETE FROM Facturas

WHERE @ID = FacturaID
GO
/****** Object:  StoredProcedure [dbo].[sp_EliminarInventarios]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EliminarInventarios]

@ID int

AS

DELETE FROM Inventarios

WHERE @ID = InventarioID
GO
/****** Object:  StoredProcedure [dbo].[sp_EliminarLocales]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EliminarLocales]

@ID int

AS

DELETE FROM Locales

WHERE @ID = LocalID
GO
/****** Object:  StoredProcedure [dbo].[sp_EliminarMedida]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EliminarMedida]

@ID int

AS

DELETE FROM Medidas

WHERE MedidaID = @ID
GO
/****** Object:  StoredProcedure [dbo].[sp_EliminarPedidos]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_EliminarPedidos]
@ID int

AS

DELETE FROM Pedidos

WHERE @ID = PedidoID
GO
/****** Object:  StoredProcedure [dbo].[sp_EliminarProductos]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EliminarProductos]

@ID int

AS

DELETE FROM Productos

WHERE ProductoID = @ID
GO
/****** Object:  StoredProcedure [dbo].[sp_EliminarProveedor]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EliminarProveedor]

@ID int

AS

DELETE FROM Proveedores

WHERE ProveedorID = @ID
GO
/****** Object:  StoredProcedure [dbo].[sp_EliminarTipoDeVenta]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EliminarTipoDeVenta]
@ID int

AS

DELETE FROM TipoDeVenta

WHERE @ID = TipoVentaID
GO
/****** Object:  StoredProcedure [dbo].[sp_FacturaXCliente]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_FacturaXCliente] @ClienteID int
AS
BEGIN
    SELECT F.FacturaID, F.Fecha, L.Nombre AS 'Local', E.Nombre AS 'Empleado', F.Subtotal, F.Impuesto, F.Total, TV.Descripcion
    FROM Facturas F
    INNER JOIN Locales L ON F.LocalID = L.LocalID
    INNER JOIN Empleados E ON F.EmpleadoID = E.EmpleadoID
    /*INNER JOIN Clientes C ON F.ClienteID = C.ClienteID*/
    INNER JOIN TipoDeVenta TV ON F.TipoDePagoID = TV.TipoVentaID
    WHERE F.ClienteID = @ClienteID
END
GO
/****** Object:  StoredProcedure [dbo].[sp_FacturaXLocal]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_FacturaXLocal] @LocalID int
AS
BEGIN
    SELECT F.FacturaID, F.Fecha, E.Nombre AS 'Empleado', C.ClienteID AS 'Cliente',F.Subtotal, F.Impuesto, F.Total, TV.Descripcion
    FROM Facturas F
    INNER JOIN Empleados E ON F.EmpleadoID = E.EmpleadoID
    INNER JOIN Clientes C ON F.ClienteID = C.ClienteID
    INNER JOIN TipoDeVenta TV ON F.TipoDePagoID = TV.TipoVentaID
    WHERE F.LocalID = @LocalID
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarCategorias]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertarCategorias]

@nombre nchar(100), @descripcion nchar(100)

AS

INSERT INTO Categorias(NombreCategoria,Descripcion) 
VALUES (@nombre, @descripcion)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarClientes]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertarClientes]

@nombre nchar(100), @direccion nchar(100),@correo nchar(250), @telefono nchar(8)

AS

INSERT INTO Clientes(Nombre,Direccion,Correo,Telefono) 
VALUES (@nombre, @direccion,@correo,@telefono)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarEmpleados]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertarEmpleados]

@nombre nchar(100), @direccion nchar(250), @correo nchar(75), @fecha date, @LocalID int

AS

INSERT INTO Empleados(Nombre, Direccion, Correo, FechaNacimiento,LocalID) 
VALUES (@nombre, @direccion,@correo, @fecha, @LocalID)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarFacturas]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertarFacturas]

@fecha date, @impuesto int, @subtotal int,@total int, @EmpleadoID int, @LocalID int, @ClienteID int, @TipoDePagoID int

AS

INSERT INTO Facturas(Fecha, Impuesto,Subtotal, Total, EmpleadoID, LocalID, ClienteID ,TipoDePagoID) 

VALUES (@fecha, @impuesto,@subtotal, @total, @EmpleadoID, @LocalID, @ClienteID ,@TipoDePagoID)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarInventarios]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertarInventarios]

@ProductoID int, @LocalID int, @Stock int

AS

INSERT INTO Inventarios(ProductoID, LocalID, Stock) 
VALUES (@ProductoID, @LocalID,@Stock)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarInventarioXLocal]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertarInventarioXLocal] @ProductoID int
AS 
BEGIN
    INSERT INTO Inventarios
    SELECT DISTINCT 0, LocalID, @ProductoID FROM Locales
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarInventarioXProducto]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertarInventarioXProducto] @LocalID int
AS
BEGIN
    INSERT INTO Inventarios
    SELECT DISTINCT 0, @LocalID, ProductoID FROM Productos
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarLocales]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertarLocales]

@nombre nchar(100), @direccion nchar(250), @correo nchar(75), @telefono nchar(8)

AS

INSERT INTO Locales(Nombre, Direccion, Correo, Telefono) 
VALUES (@nombre, @direccion,@correo, @telefono)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarMedidas]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertarMedidas] 

 @nombre nchar(20)

AS

INSERT INTO Medidas(Nombre) 
VALUES (@nombre)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarPedidos]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertarPedidos]

@cantidad int, @precio int,@totalLinea int, @FacturaID int, @ProductoID int

AS

INSERT INTO Pedidos(Cantidad, Precio, TotalLinea, FacturaID, ProductoID) 

VALUES (@cantidad, @precio, @totalLinea,@FacturaID, @ProductoID)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarProductos]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertarProductos]

@nombre nchar(45), @precio int,@ProveedorID int, @CategoriaID int, @MedidaID int

AS

INSERT INTO Productos(Nombre, Precio, ProvedorID, CategoriaID, MedidaID) 
VALUES (@nombre, @precio,@ProveedorID, @CategoriaID, @MedidaID)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarProveedor]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertarProveedor] 

@nombre nchar(100),@direccion nchar(250),@correo nchar(75),@telefono nchar(8)

AS

INSERT INTO Proveedores(NombreProveedor, Direccion, Correo, Telefono) 
VALUES ( @nombre, @direccion, @correo, @telefono)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarTipoDeVenta]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertarTipoDeVenta]

@descripcion nchar(100)

AS

INSERT INTO TipoDeVenta(Descripcion) 

VALUES (@descripcion)
GO
/****** Object:  StoredProcedure [dbo].[sp_MaxFacturas]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_MaxFacturas]
AS
BEGIN
	select max(FacturaID) from Facturas
END
GO
/****** Object:  StoredProcedure [dbo].[sp_MaxLocalesID]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MaxLocalesID] 
AS
BEGIN
	select max(LocalID) from Locales
END
GO
/****** Object:  StoredProcedure [dbo].[sp_MaxProductoID]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_MaxProductoID] 
AS
BEGIN
	select max(ProductoID) from Productos
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarCategorias]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ModificarCategorias]

@ID int, @nombre nchar(100), @descripcion nchar(250)

AS

BEGIN

UPDATE Categorias

SET  NombreCategoria = @nombre, Descripcion = @descripcion
WHERE @ID = CategoriaID

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarClientes]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ModificarClientes]


@ID int, @nombre nchar(100), @direccion nchar(100),@correo nchar(250), @telefono nchar(8)
AS

BEGIN

UPDATE Clientes

SET  Nombre = @nombre , Direccion = @direccion, Correo = @correo, Telefono = @telefono
WHERE @ID = ClienteID

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarEmpleados]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ModificarEmpleados]

@ID int, @nombre nchar(100), @direccion nchar(250), @correo nchar(75), @fecha date, @LocalID int

AS

BEGIN

UPDATE Empleados

SET  Nombre = @nombre , Direccion = @direccion, Correo = @correo , FechaNacimiento = @fecha ,LocalID = @LocalID
WHERE @ID = EmpleadoID

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarInventarios]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ModificarInventarios]

@ProductoID int, @LocalID int, @Stock int

AS

BEGIN

UPDATE Inventarios

SET  Stock = @Stock 
WHERE LocalID = @LocalID and ProductoID = @ProductoID 

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarLocales]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ModificarLocales]


@ID int, @nombre nchar(100), @direccion nchar(100),@correo nchar(250), @telefono nchar(8)
AS

BEGIN

UPDATE Locales

SET  Nombre = @nombre , Direccion = @direccion, Correo = @correo, Telefono = @telefono
WHERE @ID = LocalID

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarMedidas]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ModificarMedidas]

@ID int, @nombre nchar(100)

AS

BEGIN

UPDATE Medidas

SET  Nombre = @nombre 
WHERE @ID = MedidaID

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarProductos]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ModificarProductos]

@ID int, @nombre nchar(45), @precio int ,@ProveedorID int, @CategoriaID int, @MedidaID int

AS

BEGIN

UPDATE Productos

SET Nombre = @Nombre,Precio =  @precio,ProvedorID = @ProveedorID,CategoriaID =  @CategoriaID,MedidaID =  @MedidaID
WHERE ProductoID = @ID

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarProveedores]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ModificarProveedores]


@ID int, @nombre nchar(100), @direccion nchar(100),@correo nchar(250), @telefono nchar(8)
AS

BEGIN

UPDATE Proveedores

SET  NombreProveedor = @nombre , Direccion = @direccion, Correo = @correo, Telefono = @telefono
WHERE @ID = ProveedorID

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarTiposDeVenta]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ModificarTiposDeVenta]

@ID int, @descripcion nchar(100)

AS

BEGIN

UPDATE TipoDeVenta

SET Descripcion = @descripcion
WHERE TipoVentaID = @ID

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarTotalesFacturas]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ModificarTotalesFacturas]

@ID int, @impuesto int, @subtotal int,@total int

AS

BEGIN

UPDATE Facturas

SET Impuesto = @impuesto , Subtotal = @subtotal, Total = @total

WHERE FacturaID = @ID

END

GO
/****** Object:  StoredProcedure [dbo].[sp_MostrarPedidosXCliente]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_MostrarPedidosXCliente] @ClienteID int
AS
BEGIN
    SELECT F.FacturaID, Pe.PedidoID, Pr.Nombre, Pe.Cantidad, Pe.TotalLinea
    FROM Pedidos Pe
    INNER JOIN Facturas F ON F.FacturaID = Pe.FacturaID
    INNER JOIN Productos Pr ON Pr.ProductoID = Pe.ProductoID
    WHERE F.ClienteID = @ClienteID
    ORDER BY F.FacturaID, Pe.PedidoID
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ReducirInventariosXProductoYLocal]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ReducirInventariosXProductoYLocal] @Cant int, @ProductoID int, @LocalID int
AS
BEGIN
    UPDATE Inventarios
    SET Stock -= @Cant
    WHERE ProductoID = @ProductoID AND LocalID = @LocalID
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarBitacora]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_SeleccionarBitacora]

AS

SELECT *

FROM Bitacora
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarCategorias]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarCategorias]

AS

SELECT *

FROM Categorias

GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarCategoriasID]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarCategoriasID]

@ID int

AS

SELECT *

FROM Categorias

WHERE @ID = CategoriaID
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarClientes]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarClientes]

as 

SELECT *

FROM Clientes
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarClientesID]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarClientesID]

@ID int

AS

SELECT *

FROM Clientes

WHERE @ID = ClienteID
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarEmpleados]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarEmpleados]


AS

SELECT *

FROM Empleados
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarEmpleadosID]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarEmpleadosID]

@ID int

AS

SELECT *

FROM Empleados

WHERE @ID = EmpleadoID
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarEmpleadosXLocal]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarEmpleadosXLocal] @LocalID int
AS
BEGIN
    SELECT *
    FROM Empleados
    WHERE LocalID = @LocalID
    ORDER BY Nombre
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarFacturas]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarFacturas]



AS

SELECT *

FROM Facturas

GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarInventarios]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarInventarios]



AS

SELECT *

FROM Inventarios

GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarInventarioXLocal]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarInventarioXLocal] @LocalID int
AS
BEGIN
    SELECT P.ProductoID, P.Nombre, C.NombreCategoria, P.Precio, I.Stock
    FROM Categorias C
    INNER JOIN Productos P ON C.CategoriaID = P.CategoriaID
    INNER JOIN Inventarios I ON P.ProductoID = I.ProductoID
    INNER JOIN Locales L ON I.LocalID = L.LocalID
    WHERE L.LocalID = @LocalID
    ORDER BY C.NombreCategoria, P.Nombre
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarInventarioXProducto]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarInventarioXProducto] @ProductoID int
AS
BEGIN
    SELECT P.ProductoID, P.Nombre, C.NombreCategoria, P.Precio, I.Stock, L.Nombre
    FROM Categorias C
    INNER JOIN Productos P ON C.CategoriaID = P.CategoriaID
    INNER JOIN Inventarios I ON P.ProductoID = I.ProductoID
    INNER JOIN Locales L ON I.LocalID = L.LocalID
    WHERE P.ProductoID = @ProductoID
    ORDER BY I.Stock DESC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarLocales]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarLocales]


AS

SELECT *

FROM Locales

GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarLocalesID]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarLocalesID]

@ID int

AS

SELECT *

FROM Locales

WHERE @ID = LocalID
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarMedias]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarMedias]

AS

SELECT *

FROM Medidas
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarMedidasID]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarMedidasID]

@ID int

AS

SELECT *

FROM Medidas

WHERE @ID = MedidaID
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarPedidos]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarPedidos]



AS

SELECT *

FROM Pedidos

GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarPedidosID]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarPedidosID]

@ID int

AS

SELECT *

FROM Pedidos

WHERE @ID = PedidoID
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarPedidosXFactura]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarPedidosXFactura] @FacturaID int
AS
BEGIN
    SELECT Pd.PedidoID, Pr.Nombre, Pd.Cantidad, Pd.TotalLinea
    FROM Productos Pr
    INNER JOIN Pedidos Pd ON Pd.ProductoID = Pr.ProductoID
    WHERE Pd.FacturaID = @FacturaID
    ORDER BY Pr.Nombre
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarProductos]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarProductos]

AS

SELECT *

FROM Productos
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarProductosID]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarProductosID]

@ID int

AS

SELECT *

FROM Productos

WHERE @ID = ProductoID
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarProveedores]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarProveedores]



AS

SELECT *

FROM Proveedores

GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarProveedoresID]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarProveedoresID]

@ID int

AS

SELECT *

FROM Proveedores

WHERE @ID = ProveedorID
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarTipoDeVenta]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarTipoDeVenta]



AS

SELECT *

FROM TipoDeVenta

GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarTipoDeVentaID]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarTipoDeVentaID]

@ID int

AS

SELECT *

FROM TipoDeVenta

WHERE @ID = TipoVentaID
GO
/****** Object:  StoredProcedure [dbo].[sp_StockLocalXProducto]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_StockLocalXProducto] @LocalID int, @ProductoID int
AS
BEGIN
    SELECT Stock
    FROM Inventarios
    WHERE LocalID = @LocalID AND ProductoID = @ProductoID
END
GO
/****** Object:  StoredProcedure [dbo].[sp_StockProductoXLocal]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_StockProductoXLocal] @ProductoID int, @LocalID int
AS
BEGIN
    SELECT Stock
    FROM Inventarios
    WHERE LocalID = @LocalID AND ProductoID = @ProductoID
END
GO
/****** Object:  Trigger [dbo].[tr_AgregarCategorias]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_AgregarCategorias] ON [dbo].[Categorias]
FOR INSERT
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(1, GETDATE(), 1, 'Categorias') 
END
GO
ALTER TABLE [dbo].[Categorias] ENABLE TRIGGER [tr_AgregarCategorias]
GO
/****** Object:  Trigger [dbo].[tr_EliminarCategorias]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_EliminarCategorias] ON [dbo].[Categorias]
FOR DELETE		/* INSERT - UPDATE - DELETE */
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(3, GETDATE(), 1, 'Categorias') 
END
GO
ALTER TABLE [dbo].[Categorias] ENABLE TRIGGER [tr_EliminarCategorias]
GO
/****** Object:  Trigger [dbo].[tr_ModificarCategorias]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_ModificarCategorias] ON [dbo].[Categorias]
FOR UPDATE
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(2, GETDATE(), 1, 'Categorias') 
END
GO
ALTER TABLE [dbo].[Categorias] ENABLE TRIGGER [tr_ModificarCategorias]
GO
/****** Object:  Trigger [dbo].[tr_AgregarClientes]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_AgregarClientes] ON [dbo].[Clientes]
FOR INSERT
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(1, GETDATE(), 1, 'Clientes')
END
GO
ALTER TABLE [dbo].[Clientes] ENABLE TRIGGER [tr_AgregarClientes]
GO
/****** Object:  Trigger [dbo].[tr_EliminarClientes]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_EliminarClientes] ON [dbo].[Clientes]
FOR DELETE
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(3, GETDATE(), 1, 'Clientes')
END
GO
ALTER TABLE [dbo].[Clientes] ENABLE TRIGGER [tr_EliminarClientes]
GO
/****** Object:  Trigger [dbo].[tr_ModificarClientes]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_ModificarClientes] ON [dbo].[Clientes]
FOR UPDATE
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(2, GETDATE(), 1, 'Clientes')
END
GO
ALTER TABLE [dbo].[Clientes] ENABLE TRIGGER [tr_ModificarClientes]
GO
/****** Object:  Trigger [dbo].[tr_AgregarEmpleado]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_AgregarEmpleado] ON [dbo].[Empleados]
FOR INSERT		/* INSERT - UPDATE - DELETE */
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(1, GETDATE(), 1, 'Empleados') 
END
GO
ALTER TABLE [dbo].[Empleados] ENABLE TRIGGER [tr_AgregarEmpleado]
GO
/****** Object:  Trigger [dbo].[tr_EliminarEmpleado]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_EliminarEmpleado] ON [dbo].[Empleados]
FOR DELETE		/* INSERT - UPDATE - DELETE */
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(3, GETDATE(), 1, 'Empleados') 
END
GO
ALTER TABLE [dbo].[Empleados] ENABLE TRIGGER [tr_EliminarEmpleado]
GO
/****** Object:  Trigger [dbo].[tr_ModificarEmpleado]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_ModificarEmpleado] ON [dbo].[Empleados]
FOR UPDATE		/* INSERT - UPDATE - DELETE */
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(2, GETDATE(), 1, 'Empleados') 
END
GO
ALTER TABLE [dbo].[Empleados] ENABLE TRIGGER [tr_ModificarEmpleado]
GO
/****** Object:  Trigger [dbo].[tr_AgregarFactura]    Script Date: 24/6/2021 23:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_AgregarFactura] ON [dbo].[Facturas]
FOR INSERT		/* INSERT - UPDATE - DELETE */
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(1, GETDATE(), 1, 'Facturas') 
END
GO
ALTER TABLE [dbo].[Facturas] ENABLE TRIGGER [tr_AgregarFactura]
GO
/****** Object:  Trigger [dbo].[tr_EliminarFactura]    Script Date: 24/6/2021 23:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_EliminarFactura] ON [dbo].[Facturas]
FOR DELETE		/* INSERT - UPDATE - DELETE */
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(3, GETDATE(), 1, 'Facturas') 
END
GO
ALTER TABLE [dbo].[Facturas] ENABLE TRIGGER [tr_EliminarFactura]
GO
/****** Object:  Trigger [dbo].[tr_ModificarFactura]    Script Date: 24/6/2021 23:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_ModificarFactura] ON [dbo].[Facturas]
FOR UPDATE		/* INSERT - UPDATE - DELETE */
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(2, GETDATE(), 1, 'Facturas') 
END
GO
ALTER TABLE [dbo].[Facturas] ENABLE TRIGGER [tr_ModificarFactura]
GO
/****** Object:  Trigger [dbo].[tr_AgregarInventarios]    Script Date: 24/6/2021 23:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_AgregarInventarios] ON [dbo].[Inventarios]
FOR INSERT		/* INSERT - UPDATE - DELETE */
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(1, GETDATE(), 1, 'Inventarios') 
END
GO
ALTER TABLE [dbo].[Inventarios] ENABLE TRIGGER [tr_AgregarInventarios]
GO
/****** Object:  Trigger [dbo].[tr_EliminarInventarios]    Script Date: 24/6/2021 23:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_EliminarInventarios] ON [dbo].[Inventarios]
FOR DELETE		/* INSERT - UPDATE - DELETE */
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(3, GETDATE(), 1, 'Inventarios') 
END
GO
ALTER TABLE [dbo].[Inventarios] ENABLE TRIGGER [tr_EliminarInventarios]
GO
/****** Object:  Trigger [dbo].[tr_ModificarInventarios]    Script Date: 24/6/2021 23:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_ModificarInventarios] ON [dbo].[Inventarios]
FOR UPDATE		/* INSERT - UPDATE - DELETE */
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(2, GETDATE(), 1, 'Inventarios') 
END
GO
ALTER TABLE [dbo].[Inventarios] ENABLE TRIGGER [tr_ModificarInventarios]
GO
/****** Object:  Trigger [dbo].[tr_AgregarLocales]    Script Date: 24/6/2021 23:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_AgregarLocales] ON [dbo].[Locales]
FOR INSERT		/* INSERT - UPDATE - DELETE */
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(1, GETDATE(), 1, 'Locales') 
END
GO
ALTER TABLE [dbo].[Locales] ENABLE TRIGGER [tr_AgregarLocales]
GO
/****** Object:  Trigger [dbo].[tr_EliminarLocales]    Script Date: 24/6/2021 23:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_EliminarLocales] ON [dbo].[Locales]
FOR DELETE		/* INSERT - UPDATE - DELETE */
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(3, GETDATE(), 1, 'Locales') 
END
GO
ALTER TABLE [dbo].[Locales] ENABLE TRIGGER [tr_EliminarLocales]
GO
/****** Object:  Trigger [dbo].[tr_ModificarLocales]    Script Date: 24/6/2021 23:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_ModificarLocales] ON [dbo].[Locales]
FOR UPDATE		/* INSERT - UPDATE - DELETE */
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(2, GETDATE(), 1, 'Locales') 
END
GO
ALTER TABLE [dbo].[Locales] ENABLE TRIGGER [tr_ModificarLocales]
GO
/****** Object:  Trigger [dbo].[tr_AgregarMedidas]    Script Date: 24/6/2021 23:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_AgregarMedidas] ON [dbo].[Medidas]
FOR INSERT		/* INSERT - UPDATE - DELETE */
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(1, GETDATE(), 1, 'Medidas') 
END
GO
ALTER TABLE [dbo].[Medidas] ENABLE TRIGGER [tr_AgregarMedidas]
GO
/****** Object:  Trigger [dbo].[tr_EliminarMedidas]    Script Date: 24/6/2021 23:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_EliminarMedidas] ON [dbo].[Medidas]
FOR DELETE		/* INSERT - UPDATE - DELETE */
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(3, GETDATE(), 1, 'Medidas') 
END
GO
ALTER TABLE [dbo].[Medidas] ENABLE TRIGGER [tr_EliminarMedidas]
GO
/****** Object:  Trigger [dbo].[tr_ModificarMedidas]    Script Date: 24/6/2021 23:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_ModificarMedidas] ON [dbo].[Medidas]
FOR UPDATE		/* INSERT - UPDATE - DELETE */
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(2, GETDATE(), 1, 'Medidas') 
END
GO
ALTER TABLE [dbo].[Medidas] ENABLE TRIGGER [tr_ModificarMedidas]
GO
/****** Object:  Trigger [dbo].[tr_AgregarPedidos]    Script Date: 24/6/2021 23:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_AgregarPedidos] ON [dbo].[Pedidos]
FOR INSERT		/* INSERT - UPDATE - DELETE */
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(1, GETDATE(), 1, 'Pedidos') 
END
GO
ALTER TABLE [dbo].[Pedidos] ENABLE TRIGGER [tr_AgregarPedidos]
GO
/****** Object:  Trigger [dbo].[tr_EliminarPedidos]    Script Date: 24/6/2021 23:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_EliminarPedidos] ON [dbo].[Pedidos]
FOR DELETE		/* INSERT - UPDATE - DELETE */
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(3, GETDATE(), 1, 'Pedidos') 
END
GO
ALTER TABLE [dbo].[Pedidos] ENABLE TRIGGER [tr_EliminarPedidos]
GO
/****** Object:  Trigger [dbo].[tr_ModificarPedidos]    Script Date: 24/6/2021 23:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_ModificarPedidos] ON [dbo].[Pedidos]
FOR UPDATE		/* INSERT - UPDATE - DELETE */
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(2, GETDATE(), 1, 'Pedidos') 
END
GO
ALTER TABLE [dbo].[Pedidos] ENABLE TRIGGER [tr_ModificarPedidos]
GO
/****** Object:  Trigger [dbo].[tr_AgregarProductos]    Script Date: 24/6/2021 23:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_AgregarProductos] ON [dbo].[Productos]
FOR INSERT		/* INSERT - UPDATE - DELETE */
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(1, GETDATE(), 1, 'Productos') 
END
GO
ALTER TABLE [dbo].[Productos] ENABLE TRIGGER [tr_AgregarProductos]
GO
/****** Object:  Trigger [dbo].[tr_EliminarProductos]    Script Date: 24/6/2021 23:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_EliminarProductos] ON [dbo].[Productos]
FOR DELETE		/* INSERT - UPDATE - DELETE */
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(3, GETDATE(), 1, 'Productos') 
END
GO
ALTER TABLE [dbo].[Productos] ENABLE TRIGGER [tr_EliminarProductos]
GO
/****** Object:  Trigger [dbo].[tr_ModificarProductos]    Script Date: 24/6/2021 23:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_ModificarProductos] ON [dbo].[Productos]
FOR UPDATE		/* INSERT - UPDATE - DELETE */
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(2, GETDATE(), 1, 'Productos') 
END
GO
ALTER TABLE [dbo].[Productos] ENABLE TRIGGER [tr_ModificarProductos]
GO
/****** Object:  Trigger [dbo].[tr_AgregarProveedores]    Script Date: 24/6/2021 23:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_AgregarProveedores] ON [dbo].[Proveedores]
FOR INSERT		/* INSERT - UPDATE - DELETE */
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(1, GETDATE(), 1, 'Proveedores') 
END
GO
ALTER TABLE [dbo].[Proveedores] ENABLE TRIGGER [tr_AgregarProveedores]
GO
/****** Object:  Trigger [dbo].[tr_EliminarProveedores]    Script Date: 24/6/2021 23:36:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_EliminarProveedores] ON [dbo].[Proveedores]
FOR DELETE		/* INSERT - UPDATE - DELETE */
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(3, GETDATE(), 1, 'Proveedores') 
END
GO
ALTER TABLE [dbo].[Proveedores] ENABLE TRIGGER [tr_EliminarProveedores]
GO
/****** Object:  Trigger [dbo].[tr_ModificarProveedores]    Script Date: 24/6/2021 23:36:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_ModificarProveedores] ON [dbo].[Proveedores]
FOR UPDATE		/* INSERT - UPDATE - DELETE */
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(2, GETDATE(), 1, 'Proveedores') 
END
GO
ALTER TABLE [dbo].[Proveedores] ENABLE TRIGGER [tr_ModificarProveedores]
GO
/****** Object:  Trigger [dbo].[tr_AgregarTipoAcceso]    Script Date: 24/6/2021 23:36:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_AgregarTipoAcceso] ON [dbo].[TipoAcceso]
FOR INSERT		/* INSERT - UPDATE - DELETE */
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(1, GETDATE(), 1, 'TipoAcceso') 
END
GO
ALTER TABLE [dbo].[TipoAcceso] ENABLE TRIGGER [tr_AgregarTipoAcceso]
GO
/****** Object:  Trigger [dbo].[tr_EliminarTipoAcceso]    Script Date: 24/6/2021 23:36:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_EliminarTipoAcceso] ON [dbo].[TipoAcceso]
FOR DELETE		/* INSERT - UPDATE - DELETE */
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(3, GETDATE(), 1, 'TipoAcceso') 
END
GO
ALTER TABLE [dbo].[TipoAcceso] ENABLE TRIGGER [tr_EliminarTipoAcceso]
GO
/****** Object:  Trigger [dbo].[tr_ModificarTipoAcceso]    Script Date: 24/6/2021 23:36:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_ModificarTipoAcceso] ON [dbo].[TipoAcceso]
FOR UPDATE		/* INSERT - UPDATE - DELETE */
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(2, GETDATE(), 1, 'TipoAcceso') 
END
GO
ALTER TABLE [dbo].[TipoAcceso] ENABLE TRIGGER [tr_ModificarTipoAcceso]
GO
/****** Object:  Trigger [dbo].[tr_AgregarTipoActualizacion]    Script Date: 24/6/2021 23:36:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_AgregarTipoActualizacion] ON [dbo].[TipoActualizacion]
FOR INSERT		/* INSERT - UPDATE - DELETE */
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(1, GETDATE(), 1, 'TipoActualizacion') 
END
GO
ALTER TABLE [dbo].[TipoActualizacion] ENABLE TRIGGER [tr_AgregarTipoActualizacion]
GO
/****** Object:  Trigger [dbo].[tr_EliminarTipoActualizacion]    Script Date: 24/6/2021 23:36:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_EliminarTipoActualizacion] ON [dbo].[TipoActualizacion]
FOR DELETE		/* INSERT - UPDATE - DELETE */
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(3, GETDATE(), 1, 'TipoActualizacion') 
END
GO
ALTER TABLE [dbo].[TipoActualizacion] ENABLE TRIGGER [tr_EliminarTipoActualizacion]
GO
/****** Object:  Trigger [dbo].[tr_ModificarTipoActualizacion]    Script Date: 24/6/2021 23:36:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_ModificarTipoActualizacion] ON [dbo].[TipoActualizacion]
FOR UPDATE		/* INSERT - UPDATE - DELETE */
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(2, GETDATE(), 1, 'TipoActualizacion') 
END
GO
ALTER TABLE [dbo].[TipoActualizacion] ENABLE TRIGGER [tr_ModificarTipoActualizacion]
GO
/****** Object:  Trigger [dbo].[tr_AgregarTipoDeVenta]    Script Date: 24/6/2021 23:36:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_AgregarTipoDeVenta] ON [dbo].[TipoDeVenta]
FOR INSERT		/* INSERT - UPDATE - DELETE */
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(1, GETDATE(), 1, 'TipoDeVenta') 
END
GO
ALTER TABLE [dbo].[TipoDeVenta] ENABLE TRIGGER [tr_AgregarTipoDeVenta]
GO
/****** Object:  Trigger [dbo].[tr_EliminarTipoDeVenta]    Script Date: 24/6/2021 23:36:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_EliminarTipoDeVenta] ON [dbo].[TipoDeVenta]
FOR DELETE		/* INSERT - UPDATE - DELETE */
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(3, GETDATE(), 1, 'TipoDeVenta') 
END
GO
ALTER TABLE [dbo].[TipoDeVenta] ENABLE TRIGGER [tr_EliminarTipoDeVenta]
GO
/****** Object:  Trigger [dbo].[tr_ModificarTipoDeVenta]    Script Date: 24/6/2021 23:36:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tr_ModificarTipoDeVenta] ON [dbo].[TipoDeVenta]
FOR UPDATE		/* INSERT - UPDATE - DELETE */
NOT FOR REPLICATION
AS

BEGIN
    INSERT INTO Bitacora(ActualizacionID, Fecha, UsuarioID, TablaModificada)
    VALUES(2, GETDATE(), 1, 'TipoDeVenta') 
END
GO
ALTER TABLE [dbo].[TipoDeVenta] ENABLE TRIGGER [tr_ModificarTipoDeVenta]
GO
USE [master]
GO
ALTER DATABASE [FerreteriaLosHermanos] SET  READ_WRITE 
GO
