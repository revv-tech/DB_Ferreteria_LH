USE [master]
GO
/****** Object:  Database [FerreteriaLosHermanos]    Script Date: 12/5/2021 00:36:13 ******/
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
/****** Object:  Table [dbo].[Categorias]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[CategoriaID] [int] NOT NULL,
	[NombreCategoria] [nchar](25) NULL,
	[Descripcion] [nchar](100) NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[CategoriaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ClienteID] [int] NOT NULL,
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
/****** Object:  Table [dbo].[Empleados]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[EmpleadoID] [int] NOT NULL,
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
/****** Object:  Table [dbo].[Facturas]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facturas](
	[FacturaID] [int] NOT NULL,
	[Fecha] [date] NULL,
	[Direccion] [nchar](250) NULL,
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
/****** Object:  Table [dbo].[Ingresos]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingresos](
	[IngresoID] [int] NOT NULL,
	[LocalID] [int] NULL,
	[ProductoID] [int] NULL,
	[EmpleadoID] [int] NULL,
	[Cantidad] [int] NULL,
	[Fecha] [date] NULL,
 CONSTRAINT [PK_Ingresos] PRIMARY KEY CLUSTERED 
(
	[IngresoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventarios]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventarios](
	[InventarioID] [int] NOT NULL,
	[Stock] [int] NULL,
	[LocalID] [int] NULL,
	[ProductoID] [int] NULL,
 CONSTRAINT [PK_Inventarios] PRIMARY KEY CLUSTERED 
(
	[InventarioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Locales]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locales](
	[LocalID] [int] NOT NULL,
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
/****** Object:  Table [dbo].[Medidas]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medidas](
	[MedidaID] [int] NOT NULL,
	[Nombre] [nchar](20) NULL,
 CONSTRAINT [PK_Medidas] PRIMARY KEY CLUSTERED 
(
	[MedidaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedidos]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedidos](
	[PedidoID] [int] NOT NULL,
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
/****** Object:  Table [dbo].[Productos]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[ProductoID] [int] NOT NULL,
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
/****** Object:  Table [dbo].[Proveedores]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedores](
	[ProveedorID] [int] NOT NULL,
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
/****** Object:  Table [dbo].[TipoDeVenta]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDeVenta](
	[TipoVentaID] [int] NOT NULL,
	[Descripcion] [nchar](100) NOT NULL,
 CONSTRAINT [PK_TipoDeVenta] PRIMARY KEY CLUSTERED 
(
	[TipoVentaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Locales] FOREIGN KEY([LocalID])
REFERENCES [dbo].[Locales] ([LocalID])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Locales]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_Clientes] FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Clientes] ([ClienteID])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_Facturas_Clientes]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_Empleados1] FOREIGN KEY([EmpleadoID])
REFERENCES [dbo].[Empleados] ([EmpleadoID])
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
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_Facturas_TipoDeVenta]
GO
ALTER TABLE [dbo].[Ingresos]  WITH CHECK ADD  CONSTRAINT [FK_Ingresos_Empleados1] FOREIGN KEY([EmpleadoID])
REFERENCES [dbo].[Empleados] ([EmpleadoID])
GO
ALTER TABLE [dbo].[Ingresos] CHECK CONSTRAINT [FK_Ingresos_Empleados1]
GO
ALTER TABLE [dbo].[Ingresos]  WITH CHECK ADD  CONSTRAINT [FK_Ingresos_Locales1] FOREIGN KEY([LocalID])
REFERENCES [dbo].[Locales] ([LocalID])
GO
ALTER TABLE [dbo].[Ingresos] CHECK CONSTRAINT [FK_Ingresos_Locales1]
GO
ALTER TABLE [dbo].[Ingresos]  WITH CHECK ADD  CONSTRAINT [FK_Ingresos_Productos1] FOREIGN KEY([ProductoID])
REFERENCES [dbo].[Productos] ([ProductoID])
GO
ALTER TABLE [dbo].[Ingresos] CHECK CONSTRAINT [FK_Ingresos_Productos1]
GO
ALTER TABLE [dbo].[Inventarios]  WITH CHECK ADD  CONSTRAINT [FK_Inventarios_Locales1] FOREIGN KEY([LocalID])
REFERENCES [dbo].[Locales] ([LocalID])
GO
ALTER TABLE [dbo].[Inventarios] CHECK CONSTRAINT [FK_Inventarios_Locales1]
GO
ALTER TABLE [dbo].[Inventarios]  WITH CHECK ADD  CONSTRAINT [FK_Inventarios_Productos1] FOREIGN KEY([ProductoID])
REFERENCES [dbo].[Productos] ([ProductoID])
GO
ALTER TABLE [dbo].[Inventarios] CHECK CONSTRAINT [FK_Inventarios_Productos1]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Pedidos_Facturas] FOREIGN KEY([FacturaID])
REFERENCES [dbo].[Facturas] ([FacturaID])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Pedidos_Facturas]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Pedidos_Productos] FOREIGN KEY([ProductoID])
REFERENCES [dbo].[Productos] ([ProductoID])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Pedidos_Productos]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Categorias1] FOREIGN KEY([CategoriaID])
REFERENCES [dbo].[Categorias] ([CategoriaID])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Categorias1]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Medidas1] FOREIGN KEY([MedidaID])
REFERENCES [dbo].[Medidas] ([MedidaID])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Medidas1]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Proveedores1] FOREIGN KEY([ProvedorID])
REFERENCES [dbo].[Proveedores] ([ProveedorID])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Proveedores1]
GO
/****** Object:  StoredProcedure [dbo].[sp_EliminarCategorias]    Script Date: 12/5/2021 00:36:13 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarClientes]    Script Date: 12/5/2021 00:36:13 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarEmpleados]    Script Date: 12/5/2021 00:36:13 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarFacturas]    Script Date: 12/5/2021 00:36:13 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarIngresos]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_EliminarIngresos]
@ID int

AS

DELETE FROM Ingresos

WHERE @ID = IngresoID
GO
/****** Object:  StoredProcedure [dbo].[sp_EliminarInventarios]    Script Date: 12/5/2021 00:36:13 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarLocales]    Script Date: 12/5/2021 00:36:13 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarMedida]    Script Date: 12/5/2021 00:36:13 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarPedidos]    Script Date: 12/5/2021 00:36:13 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarProductos]    Script Date: 12/5/2021 00:36:13 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarProveedor]    Script Date: 12/5/2021 00:36:13 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarTipoDeVenta]    Script Date: 12/5/2021 00:36:13 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarCategorias]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertarCategorias]

@ID int, @nombre nchar(20), @descripcion nchar(100)

AS

INSERT INTO Categorias(CategoriaID, NombreCategoria,Descripcion) 
VALUES (@ID, @nombre, @descripcion)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarEmpleados]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertarEmpleados]

@ID int, @nombre nchar(100), @direccion nchar(250), @correo nchar(75), @fecha date, @LocalID int

AS

INSERT INTO Empleados(EmpleadoID, Nombre, Direccion, Correo, FechaNacimiento,LocalID) 
VALUES (@ID, @nombre, @direccion,@correo, @fecha, @LocalID)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarFacturas]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertarFacturas]

@ID int, @direccion nchar(250), @fecha date,@impuesto int, @subtotal int,@total int, @EmpleadoID int, @LocalID int, @ClienteID int, @TipoDePagoID int

AS

INSERT INTO Facturas(FacturaID, Direccion, Fecha, Impuesto,Subtotal, Total, EmpleadoID, LocalID, ClienteID ,TipoDePagoID) 

VALUES (@ID, @direccion, @fecha, @impuesto,@subtotal, @total, @EmpleadoID, @LocalID, @ClienteID ,@TipoDePagoID)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarIngresos]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertarIngresos]

@ID int, @cantidad int, @fecha date, @EmpleadoID int, @LocalID int, @ProductoID int

AS

INSERT INTO Ingresos(IngresoID, Cantidad, Fecha, EmpleadoID, LocalID, ProductoID) 
VALUES (@ID, @cantidad, @fecha,@EmpleadoID, @LocalID, @ProductoID)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarInventarios]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertarInventarios]

@ID int, @ProductoID int, @LocalID int, @Stock int

AS

INSERT INTO Inventarios(InventarioID, ProductoID, LocalID, Stock) 
VALUES (@ID, @ProductoID, @LocalID,@Stock)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarLocales]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertarLocales]

@ID int, @nombre nchar(100), @direccion nchar(250), @correo nchar(75), @telefono nchar(8)

AS

INSERT INTO Locales(LocalID, Nombre, Direccion, Correo, Telefono) 
VALUES (@ID, @nombre, @direccion,@correo, @telefono)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarMedidas]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertarMedidas] 

@ID int, @nombre nchar(20)

AS

INSERT INTO Medidas(MedidaID, Nombre) 
VALUES (@ID, @nombre)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarPedidos]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertarPedidos]

@ID int, @cantidad int, @precio int,@totalLinea int, @FacturaID int, @ProductoID int

AS

INSERT INTO Pedidos(PedidoID, Cantidad, Precio, TotalLinea, FacturaID, ProductoID) 

VALUES (@ID, @cantidad, @precio, @totalLinea,@FacturaID, @ProductoID)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarProdcutos]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertarProdcutos]

@ID int, @nombre nchar(20), @precio int,@ProveedorID int, @CategoriaID int, @MedidaID int

AS

INSERT INTO Productos(ProductoID, Nombre, Precio, ProvedorID, CategoriaID, MedidaID) 
VALUES (@ID, @nombre, @precio,@ProveedorID, @CategoriaID, @MedidaID)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarProveedor]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertarProveedor] 

@ID int, @nombre nchar(100),@direccion nchar(250),@correo nchar(75),@telefono nchar(8)

AS

INSERT INTO Proveedores(ProveedorID, NombreProveedor, Direccion, Correo, Telefono) 
VALUES (@ID, @nombre, @direccion, @correo, @telefono)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarTipoDeVenta]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertarTipoDeVenta]

@ID int, @descripcion nchar(100)

AS

INSERT INTO TipoDeVenta(TipoVentaID, Descripcion) 

VALUES (@ID, @descripcion)
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarCategorias]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ModificarCategorias]

@ID int, @nombre nchar(20), @descripcion nchar(100)

AS

BEGIN

UPDATE Categorias

SET CategoriaID = @ID, NombreCategoria = @nombre, Descripcion = @descripcion
WHERE CategoriaID = @ID

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarClientes]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ModificarClientes]

@ID int, @nombre nchar(100), @direccion nchar(250), @correo nchar(75), @telefono nchar(8)

AS

BEGIN

UPDATE Clientes

SET ClienteID = @ID, Nombre = @nombre, Direccion = @direccion, Correo = @correo, Telefono = @telefono
WHERE ClienteID = @ID

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarEmpleados]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ModificarEmpleados]

@ID int, @nombre nchar(100), @direccion nchar(250), @correo nchar(75), @fecha date, @LocalID int

AS

BEGIN

UPDATE Empleados

SET EmpleadoID = @ID, Nombre = @nombre, Direccion = @direccion, Correo = @correo, FechaNacimiento = @fecha, LocalID = @LocalID
WHERE @ID = EmpleadoID

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarFacturas]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ModificarFacturas]

@ID int, @direccion nchar(250), @fecha date,@impuesto int, @subtotal int,@total int, @EmpleadoID int, @LocalID int, @ClienteID int, @TipoDePagoID int

AS

BEGIN

UPDATE Facturas

SET FacturaID = @ID, Direccion = @direccion, Fecha = @fecha,Impuesto = @impuesto, Subtotal = @subtotal, Total = @total, EmpleadoID = @EmpleadoID, LocalID = @LocalID, @ClienteID = ClienteID, TipoDePagoID = @TipoDePagoID
WHERE FacturaID = @ID

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarIngresos]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ModificarIngresos]

@ID int, @cantidad int, @fecha date, @EmpleadoID int, @LocalID int, @ProductoID int

AS

BEGIN

UPDATE Ingresos

SET IngresoID = @ID, Cantidad = @cantidad, Fecha = @fecha, EmpleadoID = @EmpleadoID, LocalID = @LocalID, ProductoID = @ProductoID
WHERE IngresoID = @ID

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarInventarios]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ModificarInventarios]

@ID int, @ProductoID int, @LocalID int, @Stock int

AS

BEGIN

UPDATE Inventarios

SET @ID = InventarioID , @Stock = Stock, @LocalID = LocalID, @ProductoID = ProductoID
WHERE @ID = InventarioID

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarLocales]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ModificarLocales]

@ID int, @nombre nchar(100), @direccion nchar(250), @correo nchar(75), @telefono nchar(8)

AS

BEGIN

UPDATE Locales

SET LocalID = @ID, Nombre = @nombre, Direccion = @direccion, Correo = @correo, Telefono = @telefono
WHERE @ID = LocalID

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarMedidas]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ModificarMedidas]

@ID int, @nombre nchar(20)

AS

BEGIN

UPDATE Medidas

SET MedidaID = @ID, Nombre = @nombre
WHERE MedidaID = @ID

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarPedidos]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ModificarPedidos]

@ID int, @cantidad int, @precio int,@totalLinea int, @FacturaID int, @ProductoID int

AS

BEGIN

UPDATE Pedidos

SET PedidoID = @ID, Cantidad = @cantidad, Precio = @precio,TotalLinea = @totalLinea, FacturaID = @FacturaID, ProductoID = @ProductoID
WHERE PedidoID = @ID

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarProductos]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ModificarProductos]

@ID int, @nombre nchar(20), @precio int ,@ProveedorID int, @CategoriaID int, @MedidaID int

AS

BEGIN

UPDATE Productos

SET @ID = ProductoID, @nombre = Nombre, @precio = Precio,@ProveedorID = ProvedorID, @CategoriaID = CategoriaID, @MedidaID = MedidaID
WHERE ProductoID = @ID

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarProveedor]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ModificarProveedor]

@ID int, @nombre nchar(100),@direccion nchar(250),@correo nchar(75),@telefono nchar(8)

AS

BEGIN

UPDATE Proveedores

SET ProveedorID = @ID, NombreProveedor = @nombre, Direccion = @direccion, Correo = @correo, Telefono = @telefono
WHERE ProveedorID = @ID

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarTipoDeVenta]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ModificarTipoDeVenta]

@ID int, @descripcion nchar(100)

AS

BEGIN

UPDATE TipoDeVenta

SET TipoVentaID = @ID, Descripcion = @descripcion
WHERE TipoVentaID = @ID

END
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarCategorias]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarCategorias]

@ID int

AS

SELECT *

FROM Categorias

WHERE CategoriaID = @ID
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarClientes]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarClientes]

@ID int

AS

SELECT *

FROM Clientes

WHERE @ID = ClienteID
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarFacturas]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarFacturas]

@ID int

AS

SELECT *

FROM Facturas

WHERE @ID = FacturaID
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarIngresos]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarIngresos]

@ID int

AS

SELECT *

FROM Ingresos

WHERE @ID = IngresoID
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarInventarios]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarInventarios]

@ID int

AS

SELECT *

FROM Inventarios

WHERE @ID = InventarioID
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarLocales]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarLocales]

@ID int

AS

SELECT *

FROM Locales

WHERE @ID = LocalID
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarMedias]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarMedias]

@ID int

AS

SELECT *

FROM Medidas

WHERE MedidaID = @ID
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarPedidos]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarPedidos]

@ID int

AS

SELECT *

FROM Pedidos

WHERE @ID = PedidoID
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarProductos]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarProductos]

@ID int

AS

SELECT *

FROM Productos

WHERE ProductoID = @ID
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarProveedores]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarProveedores]

@ID int

AS

SELECT *

FROM Proveedores

WHERE ProveedorID = @ID
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarTipoDeVenta]    Script Date: 12/5/2021 00:36:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarTipoDeVenta]

@ID int

AS

SELECT *

FROM TipoDeVenta

WHERE @ID = TipoVentaID
GO
USE [master]
GO
ALTER DATABASE [FerreteriaLosHermanos] SET  READ_WRITE 
GO
