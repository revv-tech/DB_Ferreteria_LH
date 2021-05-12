USE [master]
GO
/****** Object:  Database [FerreteriaLosHermanos]    Script Date: 11/5/2021 18:41:38 ******/
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
/****** Object:  Table [dbo].[Categorias]    Script Date: 11/5/2021 18:41:38 ******/
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
/****** Object:  Table [dbo].[Clientes]    Script Date: 11/5/2021 18:41:38 ******/
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
/****** Object:  Table [dbo].[Empleados]    Script Date: 11/5/2021 18:41:38 ******/
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
/****** Object:  Table [dbo].[Facturas]    Script Date: 11/5/2021 18:41:38 ******/
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
/****** Object:  Table [dbo].[Ingresos]    Script Date: 11/5/2021 18:41:38 ******/
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
/****** Object:  Table [dbo].[Inventarios]    Script Date: 11/5/2021 18:41:38 ******/
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
/****** Object:  Table [dbo].[Locales]    Script Date: 11/5/2021 18:41:38 ******/
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
/****** Object:  Table [dbo].[Medidas]    Script Date: 11/5/2021 18:41:38 ******/
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
/****** Object:  Table [dbo].[Pedidos]    Script Date: 11/5/2021 18:41:38 ******/
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
/****** Object:  Table [dbo].[Productos]    Script Date: 11/5/2021 18:41:38 ******/
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
/****** Object:  Table [dbo].[Proveedores]    Script Date: 11/5/2021 18:41:38 ******/
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
/****** Object:  Table [dbo].[TipoDeVenta]    Script Date: 11/5/2021 18:41:38 ******/
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
USE [master]
GO
ALTER DATABASE [FerreteriaLosHermanos] SET  READ_WRITE 
GO
