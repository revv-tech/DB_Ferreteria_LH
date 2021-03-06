USE [master]
GO
/****** Object:  Database [FerreteriaLosHermanos]    Script Date: 24/6/2021 23:33:50 ******/
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
/****** Object:  Table [dbo].[Bitacora]    Script Date: 24/6/2021 23:33:50 ******/
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
/****** Object:  Table [dbo].[Categorias]    Script Date: 24/6/2021 23:33:50 ******/
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
/****** Object:  Table [dbo].[Clientes]    Script Date: 24/6/2021 23:33:50 ******/
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
/****** Object:  Table [dbo].[Empleados]    Script Date: 24/6/2021 23:33:50 ******/
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
/****** Object:  Table [dbo].[Facturas]    Script Date: 24/6/2021 23:33:50 ******/
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
/****** Object:  Table [dbo].[Inventarios]    Script Date: 24/6/2021 23:33:50 ******/
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
/****** Object:  Table [dbo].[Locales]    Script Date: 24/6/2021 23:33:50 ******/
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
/****** Object:  Table [dbo].[Medidas]    Script Date: 24/6/2021 23:33:50 ******/
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
/****** Object:  Table [dbo].[Pedidos]    Script Date: 24/6/2021 23:33:50 ******/
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
/****** Object:  Table [dbo].[Productos]    Script Date: 24/6/2021 23:33:50 ******/
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
/****** Object:  Table [dbo].[Proveedores]    Script Date: 24/6/2021 23:33:50 ******/
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
/****** Object:  Table [dbo].[TipoAcceso]    Script Date: 24/6/2021 23:33:50 ******/
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
/****** Object:  Table [dbo].[TipoActualizacion]    Script Date: 24/6/2021 23:33:50 ******/
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
/****** Object:  Table [dbo].[TipoDeVenta]    Script Date: 24/6/2021 23:33:50 ******/
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
/****** Object:  Table [dbo].[Usuario]    Script Date: 24/6/2021 23:33:50 ******/
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
SET IDENTITY_INSERT [dbo].[Bitacora] ON 

INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (1, 1, CAST(N'2021-06-20' AS Date), 1, N'Locales')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (2, 1, CAST(N'2021-06-20' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (3, 1, CAST(N'2021-06-21' AS Date), 1, N'Clientes')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (4, 2, CAST(N'2021-06-21' AS Date), 1, N'Clientes')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (5, 1, CAST(N'2021-06-21' AS Date), 1, N'Clientes')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (6, 1, CAST(N'2021-06-21' AS Date), 1, N'Clientes')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (7, 1, CAST(N'2021-06-21' AS Date), 1, N'Proveedores')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (8, 1, CAST(N'2021-06-21' AS Date), 1, N'Proveedores')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (9, 1, CAST(N'2021-06-21' AS Date), 1, N'Proveedores')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (10, 1, CAST(N'2021-06-21' AS Date), 1, N'Proveedores')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (11, 1, CAST(N'2021-06-21' AS Date), 1, N'Proveedores')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (12, 2, CAST(N'2021-06-21' AS Date), 1, N'Proveedores')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (13, 2, CAST(N'2021-06-21' AS Date), 1, N'Proveedores')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (14, 1, CAST(N'2021-06-21' AS Date), 1, N'Categorias')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (15, 2, CAST(N'2021-06-21' AS Date), 1, N'Categorias')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (16, 1, CAST(N'2021-06-21' AS Date), 1, N'Categorias')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (17, 1, CAST(N'2021-06-21' AS Date), 1, N'Categorias')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (18, 1, CAST(N'2021-06-21' AS Date), 1, N'Categorias')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (19, 1, CAST(N'2021-06-21' AS Date), 1, N'Categorias')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (20, 1, CAST(N'2021-06-21' AS Date), 1, N'Medidas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (21, 1, CAST(N'2021-06-21' AS Date), 1, N'Medidas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (22, 1, CAST(N'2021-06-21' AS Date), 1, N'Medidas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (23, 1, CAST(N'2021-06-21' AS Date), 1, N'Medidas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (24, 1, CAST(N'2021-06-21' AS Date), 1, N'Medidas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (25, 1, CAST(N'2021-06-21' AS Date), 1, N'Medidas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (26, 1, CAST(N'2021-06-21' AS Date), 1, N'Medidas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (27, 1, CAST(N'2021-06-21' AS Date), 1, N'Productos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (28, 1, CAST(N'2021-06-21' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (29, 1, CAST(N'2021-06-21' AS Date), 1, N'Locales')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (30, 1, CAST(N'2021-06-21' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (31, 1, CAST(N'2021-06-21' AS Date), 1, N'Locales')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (32, 1, CAST(N'2021-06-21' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (33, 1, CAST(N'2021-06-21' AS Date), 1, N'Locales')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (34, 1, CAST(N'2021-06-21' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (35, 1, CAST(N'2021-06-21' AS Date), 1, N'Productos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (36, 1, CAST(N'2021-06-21' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (37, 1, CAST(N'2021-06-21' AS Date), 1, N'Productos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (38, 1, CAST(N'2021-06-21' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (39, 1, CAST(N'2021-06-21' AS Date), 1, N'Productos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (40, 1, CAST(N'2021-06-21' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (41, 1, CAST(N'2021-06-21' AS Date), 1, N'Categorias')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (42, 1, CAST(N'2021-06-21' AS Date), 1, N'Productos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (43, 1, CAST(N'2021-06-21' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (44, 1, CAST(N'2021-06-21' AS Date), 1, N'Productos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (45, 1, CAST(N'2021-06-21' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (46, 1, CAST(N'2021-06-21' AS Date), 1, N'Productos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (47, 1, CAST(N'2021-06-21' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (48, 2, CAST(N'2021-06-21' AS Date), 1, N'Productos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (49, 1, CAST(N'2021-06-21' AS Date), 1, N'Productos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (50, 1, CAST(N'2021-06-21' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (51, 2, CAST(N'2021-06-21' AS Date), 1, N'Productos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (52, 1, CAST(N'2021-06-21' AS Date), 1, N'Productos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (53, 1, CAST(N'2021-06-21' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (54, 1, CAST(N'2021-06-21' AS Date), 1, N'Categorias')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (55, 1, CAST(N'2021-06-21' AS Date), 1, N'Proveedores')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (56, 1, CAST(N'2021-06-21' AS Date), 1, N'Medidas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (57, 1, CAST(N'2021-06-21' AS Date), 1, N'Productos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (58, 1, CAST(N'2021-06-21' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (59, 2, CAST(N'2021-06-21' AS Date), 1, N'Productos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (60, 1, CAST(N'2021-06-21' AS Date), 1, N'Productos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (61, 1, CAST(N'2021-06-21' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (62, 1, CAST(N'2021-06-21' AS Date), 1, N'Productos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (63, 1, CAST(N'2021-06-21' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (64, 1, CAST(N'2021-06-21' AS Date), 1, N'Productos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (65, 1, CAST(N'2021-06-21' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (66, 1, CAST(N'2021-06-21' AS Date), 1, N'Productos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (67, 1, CAST(N'2021-06-21' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (68, 1, CAST(N'2021-06-21' AS Date), 1, N'Empleados')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (69, 1, CAST(N'2021-06-21' AS Date), 1, N'Empleados')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (70, 1, CAST(N'2021-06-21' AS Date), 1, N'Empleados')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (71, 1, CAST(N'2021-06-21' AS Date), 1, N'Empleados')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (72, 1, CAST(N'2021-06-21' AS Date), 1, N'TipoDeVenta')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (73, 1, CAST(N'2021-06-21' AS Date), 1, N'TipoDeVenta')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (74, 1, CAST(N'2021-06-21' AS Date), 1, N'TipoDeVenta')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (75, 1, CAST(N'2021-06-21' AS Date), 1, N'TipoDeVenta')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (76, 1, CAST(N'2021-06-21' AS Date), 1, N'TipoDeVenta')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (77, 1, CAST(N'2021-06-21' AS Date), 1, N'Clientes')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (78, 1, CAST(N'2021-06-21' AS Date), 1, N'Clientes')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (79, 1, CAST(N'2021-06-21' AS Date), 1, N'Clientes')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (80, 1, CAST(N'2021-06-21' AS Date), 1, N'Clientes')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (81, 2, CAST(N'2021-06-21' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (82, 2, CAST(N'2021-06-21' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (83, 2, CAST(N'2021-06-21' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (84, 2, CAST(N'2021-06-21' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (85, 2, CAST(N'2021-06-21' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (86, 2, CAST(N'2021-06-22' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (87, 1, CAST(N'2021-06-22' AS Date), 1, N'Productos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (88, 1, CAST(N'2021-06-22' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (89, 2, CAST(N'2021-06-22' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (90, 1, CAST(N'2021-06-22' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (91, 1, CAST(N'2021-06-22' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (92, 1, CAST(N'2021-06-22' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (93, 1, CAST(N'2021-06-22' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (94, 1, CAST(N'2021-06-22' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (95, 1, CAST(N'2021-06-22' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (96, 1, CAST(N'2021-06-22' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (97, 1, CAST(N'2021-06-22' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (98, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (99, 1, CAST(N'2021-06-22' AS Date), 1, N'Facturas')
GO
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (100, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (101, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (102, 1, CAST(N'2021-06-22' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (103, 1, CAST(N'2021-06-22' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (104, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (105, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (106, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (107, 1, CAST(N'2021-06-22' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (108, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (109, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (110, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (111, 1, CAST(N'2021-06-22' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (112, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (113, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (114, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (115, 1, CAST(N'2021-06-22' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (116, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (117, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (118, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (119, 1, CAST(N'2021-06-22' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (120, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (121, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (122, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (123, 1, CAST(N'2021-06-22' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (124, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (125, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (126, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (127, 1, CAST(N'2021-06-22' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (128, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (129, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (130, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (131, 1, CAST(N'2021-06-22' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (132, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (133, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (134, 1, CAST(N'2021-06-22' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (135, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (136, 1, CAST(N'2021-06-22' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (137, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (138, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (139, 1, CAST(N'2021-06-22' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (140, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (141, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (142, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (143, 1, CAST(N'2021-06-22' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (144, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (145, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (146, 1, CAST(N'2021-06-22' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (147, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (148, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (149, 1, CAST(N'2021-06-22' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (150, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (151, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (152, 1, CAST(N'2021-06-22' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (153, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (154, 1, CAST(N'2021-06-22' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (155, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (156, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (157, 1, CAST(N'2021-06-22' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (158, 1, CAST(N'2021-06-22' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (159, 1, CAST(N'2021-06-22' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (160, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (161, 1, CAST(N'2021-06-22' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (162, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (163, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (164, 1, CAST(N'2021-06-22' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (165, 1, CAST(N'2021-06-22' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (166, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (167, 1, CAST(N'2021-06-22' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (168, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (169, 1, CAST(N'2021-06-22' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (170, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (171, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (172, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (173, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (174, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (175, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (176, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (177, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (178, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (179, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (180, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (181, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (182, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (183, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (184, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (185, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (186, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (187, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (188, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (189, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (190, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (191, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (192, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (193, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (194, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (195, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (196, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (197, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (198, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (199, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
GO
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (200, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (201, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (202, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (203, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (204, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (205, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (206, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (207, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (208, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (209, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (210, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (211, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (212, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (213, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (214, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (215, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (216, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (217, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (218, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (219, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (220, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (221, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (222, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (223, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (224, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (225, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (226, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (227, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (228, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (229, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (230, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (231, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (232, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (233, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (234, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (235, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (236, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (237, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (238, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (239, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (240, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (241, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (242, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (243, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (244, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (245, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (246, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (247, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (248, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (249, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (250, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (251, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (252, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (253, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (254, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (255, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (256, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (257, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (258, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (259, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (260, 1, CAST(N'2021-06-23' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (261, 1, CAST(N'2021-06-23' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (262, 1, CAST(N'2021-06-24' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (263, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (264, 1, CAST(N'2021-06-24' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (265, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (266, 1, CAST(N'2021-06-24' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (267, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (268, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (269, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (270, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (271, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (272, 1, CAST(N'2021-06-24' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (273, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (274, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (275, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (276, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (277, 1, CAST(N'2021-06-24' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (278, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (279, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (280, 1, CAST(N'2021-06-24' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (281, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (282, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (283, 1, CAST(N'2021-06-24' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (284, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (285, 1, CAST(N'2021-06-24' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (286, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (287, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (288, 1, CAST(N'2021-06-24' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (289, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (290, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (291, 1, CAST(N'2021-06-24' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (292, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (293, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (294, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (295, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (296, 1, CAST(N'2021-06-24' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (297, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (298, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (299, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
GO
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (300, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (301, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (302, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (303, 1, CAST(N'2021-06-24' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (304, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (305, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (306, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (307, 1, CAST(N'2021-06-24' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (308, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (309, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (310, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (311, 1, CAST(N'2021-06-24' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (312, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (313, 1, CAST(N'2021-06-24' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (314, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (315, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (316, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (317, 1, CAST(N'2021-06-24' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (318, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (319, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (320, 1, CAST(N'2021-06-24' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (321, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (322, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (323, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (324, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (325, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (326, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (327, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (328, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (329, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (330, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (331, 1, CAST(N'2021-06-24' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (332, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (333, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (334, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (335, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (336, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (337, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (338, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (339, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (340, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (341, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (342, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (343, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (344, 1, CAST(N'2021-06-24' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (345, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (346, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (347, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (348, 1, CAST(N'2021-06-24' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (349, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (350, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (351, 1, CAST(N'2021-06-24' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (352, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (353, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (354, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (355, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (356, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (357, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (358, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (359, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (360, 1, CAST(N'2021-06-24' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (361, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (362, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (363, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (364, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (365, 1, CAST(N'2021-06-24' AS Date), 1, N'Empleados')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (366, 1, CAST(N'2021-06-24' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (367, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (368, 2, CAST(N'2021-06-24' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (369, 2, CAST(N'2021-06-24' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (370, 1, CAST(N'2021-06-24' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (371, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (372, 2, CAST(N'2021-06-24' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (373, 1, CAST(N'2021-06-24' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (374, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (375, 2, CAST(N'2021-06-24' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (376, 2, CAST(N'2021-06-24' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (377, 1, CAST(N'2021-06-24' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (378, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (379, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (380, 2, CAST(N'2021-06-24' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (381, 1, CAST(N'2021-06-24' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (382, 2, CAST(N'2021-06-24' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (383, 2, CAST(N'2021-06-24' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (384, 1, CAST(N'2021-06-24' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (385, 1, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (386, 1, CAST(N'2021-06-24' AS Date), 1, N'Clientes')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (387, 2, CAST(N'2021-06-24' AS Date), 1, N'Clientes')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (388, 3, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (389, 3, CAST(N'2021-06-24' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (390, 3, CAST(N'2021-06-24' AS Date), 1, N'Clientes')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (391, 3, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (392, 3, CAST(N'2021-06-24' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (393, 3, CAST(N'2021-06-24' AS Date), 1, N'Clientes')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (394, 1, CAST(N'2021-06-24' AS Date), 1, N'Proveedores')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (395, 2, CAST(N'2021-06-24' AS Date), 1, N'Proveedores')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (396, 3, CAST(N'2021-06-24' AS Date), 1, N'Proveedores')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (397, 3, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (398, 3, CAST(N'2021-06-24' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (399, 3, CAST(N'2021-06-24' AS Date), 1, N'Productos')
GO
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (400, 3, CAST(N'2021-06-24' AS Date), 1, N'Proveedores')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (401, 1, CAST(N'2021-06-24' AS Date), 1, N'Productos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (402, 1, CAST(N'2021-06-24' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (403, 2, CAST(N'2021-06-24' AS Date), 1, N'Productos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (404, 2, CAST(N'2021-06-24' AS Date), 1, N'Productos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (405, 3, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (406, 3, CAST(N'2021-06-24' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (407, 3, CAST(N'2021-06-24' AS Date), 1, N'Productos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (408, 2, CAST(N'2021-06-24' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (409, 2, CAST(N'2021-06-24' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (410, 2, CAST(N'2021-06-24' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (411, 2, CAST(N'2021-06-24' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (412, 3, CAST(N'2021-06-24' AS Date), 1, N'Categorias')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (413, 3, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (414, 3, CAST(N'2021-06-24' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (415, 3, CAST(N'2021-06-24' AS Date), 1, N'Productos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (416, 3, CAST(N'2021-06-24' AS Date), 1, N'Categorias')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (417, 3, CAST(N'2021-06-24' AS Date), 1, N'Medidas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (418, 3, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (419, 3, CAST(N'2021-06-24' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (420, 3, CAST(N'2021-06-24' AS Date), 1, N'Empleados')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (421, 1, CAST(N'2021-06-24' AS Date), 1, N'Empleados')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (422, 2, CAST(N'2021-06-24' AS Date), 1, N'Empleados')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (423, 3, CAST(N'2021-06-24' AS Date), 1, N'Pedidos')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (424, 3, CAST(N'2021-06-24' AS Date), 1, N'Facturas')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (425, 3, CAST(N'2021-06-24' AS Date), 1, N'Empleados')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (426, 3, CAST(N'2021-06-24' AS Date), 1, N'Inventarios')
INSERT [dbo].[Bitacora] ([BitacoraID], [ActualizacionID], [Fecha], [UsuarioID], [TablaModificada]) VALUES (427, 3, CAST(N'2021-06-24' AS Date), 1, N'Locales')
SET IDENTITY_INSERT [dbo].[Bitacora] OFF
GO
SET IDENTITY_INSERT [dbo].[Categorias] ON 

INSERT [dbo].[Categorias] ([CategoriaID], [NombreCategoria], [Descripcion]) VALUES (2, N'Construcción             ', N'Materiales de construcción                                                                          ')
INSERT [dbo].[Categorias] ([CategoriaID], [NombreCategoria], [Descripcion]) VALUES (3, N'Herramientas             ', N'Herramientas del hogar                                                                              ')
INSERT [dbo].[Categorias] ([CategoriaID], [NombreCategoria], [Descripcion]) VALUES (5, N'Madera                   ', N'Stacks de madera                                                                                    ')
INSERT [dbo].[Categorias] ([CategoriaID], [NombreCategoria], [Descripcion]) VALUES (6, N'Accesorios de Puerta     ', N'Accesorios que sirven para armar todo tipo de puerta                                                ')
INSERT [dbo].[Categorias] ([CategoriaID], [NombreCategoria], [Descripcion]) VALUES (7, N'Pinturas                 ', N'Pinturas de colores                                                                                 ')
SET IDENTITY_INSERT [dbo].[Categorias] OFF
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Correo], [Telefono]) VALUES (2, N'Marco Reveiz Rojas                                                                                  ', N'Heredia, Heredia. Frente al Automercado de Carretera a Barva. Residencial Villa Sole.                                                                                                                                                                     ', N'revvro@gmail.com                                                           ', N'85769188')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Correo], [Telefono]) VALUES (4, N'Miguel Artavia Fernandez                                                                            ', N'Guachipelin, residencial Outsource Living                                                                                                                                                                                                                 ', N'miguelart@miart.es                                                         ', N'85856969')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Correo], [Telefono]) VALUES (5, N'Sonny Liston                                                                                        ', N'Heredia, Heredia Centro casa de porton amarillo a la par del BAC                                                                                                                                                                                          ', N'sonnyliston@gmail.com                                                      ', N'70518686')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Correo], [Telefono]) VALUES (6, N'Jose Granados Vasquez                                                                               ', N'Guanacaste, Cartagena                                                                                                                                                                                                                                     ', N'jogranados@gmail.com                                                       ', N'8888696 ')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Correo], [Telefono]) VALUES (7, N'Bernardo Soto Brenes                                                                                ', N'Alajuela, 500 mts del centro comercial Plaza Real                                                                                                                                                                                                         ', N'bersotobre@gmail.com                                                       ', N'78795511')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Correo], [Telefono]) VALUES (8, N'Marco Rojas Reveiz                                                                                  ', N'Residencial Villa Sole                                                                                                                                                                                                                                    ', N'revvrop@gmail.com                                                          ', N'88946521')
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[Empleados] ON 

INSERT [dbo].[Empleados] ([EmpleadoID], [Nombre], [Direccion], [Correo], [FechaNacimiento], [LocalID]) VALUES (3, N'Randall Brenes                                                                                      ', N'Apartamentos frente a las escaleres de la salida de buses del Tecnologico de Costa Rica                                                                                                                                                                   ', N'el_chiqui@gmail.com                                                        ', CAST(N'1985-02-02' AS Date), 2)
INSERT [dbo].[Empleados] ([EmpleadoID], [Nombre], [Direccion], [Correo], [FechaNacimiento], [LocalID]) VALUES (4, N'Gonzalo Rojas Brenes                                                                                ', N'Heredia, al costado oeste de la escuela Cleto Flores                                                                                                                                                                                                      ', N'gonzaloro@hotmail.com                                                      ', CAST(N'1982-02-27' AS Date), 4)
INSERT [dbo].[Empleados] ([EmpleadoID], [Nombre], [Direccion], [Correo], [FechaNacimiento], [LocalID]) VALUES (5, N'Carlos Alvarado                                                                                     ', N'Casa Presidencial                                                                                                                                                                                                                                         ', N'charlieAlva@gmail.com                                                      ', CAST(N'1983-02-02' AS Date), 1)
INSERT [dbo].[Empleados] ([EmpleadoID], [Nombre], [Direccion], [Correo], [FechaNacimiento], [LocalID]) VALUES (6, N'Sebastian Lopez Herrera                                                                             ', N'En el restaurante Max Pollos, el mejor restaurante dle mundo                                                                                                                                                                                              ', N'thelopezepol@outlook.es                                                    ', CAST(N'2001-11-08' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Empleados] OFF
GO
SET IDENTITY_INSERT [dbo].[Facturas] ON 

INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (4, CAST(N'2021-06-22' AS Date), 0, 0, 0, 2, 3, 5, 2)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (5, CAST(N'2021-06-22' AS Date), 0, 0, 0, 4, 4, 6, 3)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (6, CAST(N'2021-06-22' AS Date), 0, 0, 0, 2, 3, 2, 4)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (7, CAST(N'2021-06-22' AS Date), 0, 0, 0, 2, 3, 2, 4)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (9, CAST(N'2021-06-22' AS Date), 0, 0, 0, 2, 3, 2, 4)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (11, CAST(N'2021-06-22' AS Date), 0, 0, 0, 2, 3, 6, 3)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (12, CAST(N'2021-06-22' AS Date), 0, 0, 0, 2, 3, 6, 4)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (14, CAST(N'2021-06-22' AS Date), 0, 0, 0, 2, 3, 4, 3)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (16, CAST(N'2021-06-22' AS Date), 0, 0, 0, 2, 3, 7, 3)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (20, CAST(N'2021-06-22' AS Date), 0, 0, 0, 2, 3, 5, 2)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (24, CAST(N'2021-06-22' AS Date), 0, 0, 0, 2, 3, 2, 4)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (25, CAST(N'2021-06-22' AS Date), 0, 0, 0, 2, 3, 2, 4)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (26, CAST(N'2021-06-22' AS Date), 0, 0, 0, 2, 3, 2, 4)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (27, CAST(N'2021-06-22' AS Date), 0, 0, 0, 2, 3, 2, 4)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (29, CAST(N'2021-06-22' AS Date), 0, 0, 0, 2, 3, 2, 4)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (30, CAST(N'2021-06-22' AS Date), 0, 0, 0, 2, 3, 2, 4)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (31, CAST(N'2021-06-22' AS Date), 0, 0, 0, 2, 3, 2, 3)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (35, CAST(N'2021-06-23' AS Date), 0, 0, 0, 2, 3, 2, 4)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (36, CAST(N'2021-06-23' AS Date), 0, 0, 0, 2, 3, 2, 2)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (42, CAST(N'2021-06-23' AS Date), 0, 0, 0, 2, 3, 2, 2)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (45, CAST(N'2021-06-23' AS Date), 0, 0, 0, 2, 3, 2, 3)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (47, CAST(N'2021-06-23' AS Date), 0, 0, 0, 2, 3, 2, 2)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (50, CAST(N'2021-06-23' AS Date), 0, 0, 0, 2, 3, 2, 3)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (51, CAST(N'2021-06-23' AS Date), 0, 0, 0, 2, 3, 2, 4)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (52, CAST(N'2021-06-23' AS Date), 0, 0, 0, 2, 3, 2, 2)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (53, CAST(N'2021-06-23' AS Date), 0, 0, 0, 2, 3, 2, 2)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (61, CAST(N'2021-06-23' AS Date), 0, 0, 0, 2, 3, 2, 2)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (62, CAST(N'2021-06-23' AS Date), 0, 0, 0, 2, 3, 2, 3)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (65, CAST(N'2021-06-23' AS Date), 0, 0, 0, 2, 3, 2, 2)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (67, CAST(N'2021-06-23' AS Date), 0, 0, 0, 2, 3, 2, 2)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (69, CAST(N'2021-06-23' AS Date), 0, 0, 0, 2, 3, 2, 1)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (70, CAST(N'2021-06-23' AS Date), 0, 0, 0, 2, 3, 2, 2)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (73, CAST(N'2021-06-23' AS Date), 0, 0, 0, 2, 3, 2, 3)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (74, CAST(N'2021-06-23' AS Date), 0, 0, 0, 4, 4, 2, 2)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (76, CAST(N'2021-06-24' AS Date), 0, 0, 0, 2, 3, 2, 2)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (81, CAST(N'2021-06-24' AS Date), 0, 0, 0, 2, 3, 2, 2)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (84, CAST(N'2021-06-24' AS Date), 0, 0, 0, 2, 3, 2, 2)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (85, CAST(N'2021-06-24' AS Date), 0, 0, 0, 2, 3, 2, 2)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (88, CAST(N'2021-06-24' AS Date), 0, 0, 0, 2, 3, 2, 2)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (90, CAST(N'2021-06-24' AS Date), 0, 0, 0, 2, 3, 2, 2)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (97, CAST(N'2021-06-24' AS Date), 0, 0, 0, 1, 5, 2, 2)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (100, CAST(N'2021-06-24' AS Date), 0, 0, 0, 1, 5, 2, 2)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (101, CAST(N'2021-06-24' AS Date), 0, 0, 0, 1, 5, 2, 3)
INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (102, CAST(N'2021-06-24' AS Date), 0, 0, 0, 1, 5, 2, 4)
SET IDENTITY_INSERT [dbo].[Facturas] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventarios] ON 

INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (5, 0, 1, 2)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (6, 0, 2, 2)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (8, 0, 4, 2)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (9, 0, 1, 3)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (10, 30, 2, 3)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (12, 0, 4, 3)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (17, -1, 1, 5)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (18, 0, 2, 5)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (20, 0, 4, 5)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (25, 0, 1, 7)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (26, 0, 2, 7)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (28, 0, 4, 7)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (29, 0, 1, 8)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (30, 0, 2, 8)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (32, 0, 4, 8)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (33, -1, 1, 9)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (34, 0, 2, 9)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (36, 0, 4, 9)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (37, 0, 1, 10)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (38, 0, 2, 10)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (40, 0, 4, 10)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (41, 0, 1, 11)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (42, 0, 2, 11)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (44, 0, 4, 11)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (45, 12, 1, 12)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (46, 12, 2, 12)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (48, 12, 4, 12)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (49, 0, 1, 13)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (50, 0, 2, 13)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (52, 0, 4, 13)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (53, -1, 1, 14)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (54, 0, 2, 14)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (56, 0, 4, 14)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (57, 18, 1, 15)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (58, 0, 2, 15)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (60, 0, 4, 15)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (61, 0, 1, 16)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (62, 0, 2, 16)
INSERT [dbo].[Inventarios] ([InventarioID], [Stock], [LocalID], [ProductoID]) VALUES (64, 0, 4, 16)
SET IDENTITY_INSERT [dbo].[Inventarios] OFF
GO
SET IDENTITY_INSERT [dbo].[Locales] ON 

INSERT [dbo].[Locales] ([LocalID], [Nombre], [Direccion], [Telefono], [Correo]) VALUES (1, N'Ferreteria Los Hermanos San Joaquin                                                                 ', N'Frente al restaurante Max Pollos, casa con porton negro.                                                                                                                                                                                                  ', N'20326566', N'flh_sanjoaquin@gmail.com                                                   ')
INSERT [dbo].[Locales] ([LocalID], [Nombre], [Direccion], [Telefono], [Correo]) VALUES (2, N'Ferreteria Los Hermanos Cartago Centro                                                              ', N'Esquina norte frente a las Ruinas de Cartago. Antiguo Almacen Jerusalem                                                                                                                                                                                   ', N'25258741', N'flh_cartagocentro@gmail.com                                                ')
INSERT [dbo].[Locales] ([LocalID], [Nombre], [Direccion], [Telefono], [Correo]) VALUES (4, N'Ferreteria Los Hermanos Heredia Centro                                                              ', N'Continuo a la escuela Braulio Carillo en Heredia Centro.                                                                                                                                                                                                  ', N'22632978', N'flh_herediacentro@gmail.com                                                ')
SET IDENTITY_INSERT [dbo].[Locales] OFF
GO
SET IDENTITY_INSERT [dbo].[Medidas] ON 

INSERT [dbo].[Medidas] ([MedidaID], [Nombre]) VALUES (2, N'Kilos               ')
INSERT [dbo].[Medidas] ([MedidaID], [Nombre]) VALUES (3, N'Litros              ')
INSERT [dbo].[Medidas] ([MedidaID], [Nombre]) VALUES (4, N'Gramos              ')
INSERT [dbo].[Medidas] ([MedidaID], [Nombre]) VALUES (5, N'Stack               ')
INSERT [dbo].[Medidas] ([MedidaID], [Nombre]) VALUES (6, N'Decena              ')
INSERT [dbo].[Medidas] ([MedidaID], [Nombre]) VALUES (7, N'Unidad              ')
INSERT [dbo].[Medidas] ([MedidaID], [Nombre]) VALUES (8, N'Galon               ')
SET IDENTITY_INSERT [dbo].[Medidas] OFF
GO
SET IDENTITY_INSERT [dbo].[Pedidos] ON 

INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (9, 1, 15000, 15000, 9, 3)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (10, 2, 21950, 43900, 11, 12)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (12, 2, 1000, 2000, 11, 2)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (13, 1, 21950, 21950, 12, 11)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (14, 2, 2150, 4300, 12, 9)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (19, 1, 2150, 2150, 14, 9)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (20, 1, 50000, 50000, 14, 8)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (21, 1, 12500, 12500, 14, 14)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (25, 2, 2150, 4300, 16, 9)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (26, 1, 21950, 21950, 16, 12)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (34, 1, 12500, 12500, 20, 14)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (35, 1, 11895, 11895, 20, 7)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (43, 2, 21950, 43900, 24, 12)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (44, 2, 21950, 43900, 24, 11)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (46, 1, 50000, 50000, 26, 8)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (48, 1, 11895, 11895, 29, 7)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (50, 1, 11895, 11895, 30, 7)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (57, 1, 11895, 11895, 35, 7)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (58, 1, 7500, 7500, 35, 15)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (62, 2, 11895, 23790, 42, 7)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (80, 2, 7500, 15000, 50, 15)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (81, 2, 11895, 23790, 51, 7)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (82, 1, 3150, 3150, 51, 5)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (83, 2, 11895, 23790, 52, 7)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (84, 2, 11895, 23790, 53, 7)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (92, 2, 7500, 15000, 61, 15)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (96, 2, 7500, 15000, 65, 15)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (107, 2, 7500, 15000, 76, 15)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (126, 5, 7500, 37500, 84, 15)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (127, 3, 1000, 3000, 84, 2)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (128, 1, 7500, 7500, 84, 15)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (130, 1, 15000, 15000, 85, 3)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (131, 1, 7500, 7500, 85, 15)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (134, 1, 11895, 11895, 85, 7)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (135, 1, 3150, 3150, 85, 5)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (146, 1, 50000, 50000, 90, 8)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (147, 1, 11895, 11895, 90, 7)
INSERT [dbo].[Pedidos] ([PedidoID], [Cantidad], [Precio], [TotalLinea], [FacturaID], [ProductoID]) VALUES (190, 2, 7500, 15000, 100, 15)
SET IDENTITY_INSERT [dbo].[Pedidos] OFF
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([ProductoID], [ProvedorID], [CategoriaID], [MedidaID], [Nombre], [Precio]) VALUES (2, 1, 5, 2, N'Tronco de Madera                             ', 1000)
INSERT [dbo].[Productos] ([ProductoID], [ProvedorID], [CategoriaID], [MedidaID], [Nombre], [Precio]) VALUES (3, 3, 2, 7, N'Pico de Piedra                               ', 15000)
INSERT [dbo].[Productos] ([ProductoID], [ProvedorID], [CategoriaID], [MedidaID], [Nombre], [Precio]) VALUES (5, 3, 6, 5, N'Bisagra                                      ', 3150)
INSERT [dbo].[Productos] ([ProductoID], [ProvedorID], [CategoriaID], [MedidaID], [Nombre], [Precio]) VALUES (7, 3, 6, 7, N'Llavín en esfera                             ', 11895)
INSERT [dbo].[Productos] ([ProductoID], [ProvedorID], [CategoriaID], [MedidaID], [Nombre], [Precio]) VALUES (8, 3, 3, 7, N'Pico de Hierro                               ', 50000)
INSERT [dbo].[Productos] ([ProductoID], [ProvedorID], [CategoriaID], [MedidaID], [Nombre], [Precio]) VALUES (9, 3, 3, 7, N'Candado                                      ', 2150)
INSERT [dbo].[Productos] ([ProductoID], [ProvedorID], [CategoriaID], [MedidaID], [Nombre], [Precio]) VALUES (10, 6, 7, 8, N'Pinturas de Cancha Verde                     ', 21950)
INSERT [dbo].[Productos] ([ProductoID], [ProvedorID], [CategoriaID], [MedidaID], [Nombre], [Precio]) VALUES (11, 6, 7, 8, N'Pinturas de Cancha Azul                      ', 21950)
INSERT [dbo].[Productos] ([ProductoID], [ProvedorID], [CategoriaID], [MedidaID], [Nombre], [Precio]) VALUES (12, 6, 7, 8, N'Pinturas de Cancha Roja                      ', 21950)
INSERT [dbo].[Productos] ([ProductoID], [ProvedorID], [CategoriaID], [MedidaID], [Nombre], [Precio]) VALUES (13, 6, 7, 8, N'Pintura para Piscina                         ', 28950)
INSERT [dbo].[Productos] ([ProductoID], [ProvedorID], [CategoriaID], [MedidaID], [Nombre], [Precio]) VALUES (14, 3, 3, 7, N'Martillo de Acero                            ', 12500)
INSERT [dbo].[Productos] ([ProductoID], [ProvedorID], [CategoriaID], [MedidaID], [Nombre], [Precio]) VALUES (15, 5, 2, 7, N'Block de Cemento                             ', 7500)
INSERT [dbo].[Productos] ([ProductoID], [ProvedorID], [CategoriaID], [MedidaID], [Nombre], [Precio]) VALUES (16, 3, 3, 7, N'Llave Suiza Roja                             ', 35000)
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO
SET IDENTITY_INSERT [dbo].[Proveedores] ON 

INSERT [dbo].[Proveedores] ([ProveedorID], [NombreProveedor], [Direccion], [Correo], [Telefono]) VALUES (1, N'Maderas Roble                                                                                       ', N'500 mts este del restaurante El Roble, Heredia, Carrizal                                                                                                                                                                                                  ', N'maderasroble@hotmail.com                                                   ', N'23235964')
INSERT [dbo].[Proveedores] ([ProveedorID], [NombreProveedor], [Direccion], [Correo], [Telefono]) VALUES (3, N'Herramientas Polo                                                                                   ', N'Alajuela, Alajuela, 100 mts este y 100 mts sur del Banco la Mutual.                                                                                                                                                                                       ', N'herramientaspolo@hotmail.com                                               ', N'23237796')
INSERT [dbo].[Proveedores] ([ProveedorID], [NombreProveedor], [Direccion], [Correo], [Telefono]) VALUES (5, N'Materiales Bosque Verde                                                                             ', N'Heredia, San Rafael, segunda salida al pasar el Residencial Villa Castela. Porton Negro con letrero                                                                                                                                                       ', N'materialesbv@mbv.com                                                       ', N'22556678')
INSERT [dbo].[Proveedores] ([ProveedorID], [NombreProveedor], [Direccion], [Correo], [Telefono]) VALUES (6, N'Pinturas Coyol                                                                                      ', N'Carretera Coyol, frente al restaurante Doña Dina                                                                                                                                                                                                          ', N'pinturas_coyol@pinturasco.com                                              ', N'22226565')
INSERT [dbo].[Proveedores] ([ProveedorID], [NombreProveedor], [Direccion], [Correo], [Telefono]) VALUES (7, N'Cementos Alajuela                                                                                   ', N'Plaza Real                                                                                                                                                                                                                                                ', N'cementos_alajuela@gmail.com                                                ', N'25256562')
SET IDENTITY_INSERT [dbo].[Proveedores] OFF
GO
INSERT [dbo].[TipoAcceso] ([AccesoID], [TipoAcceso]) VALUES (1, N'MASTER')
GO
INSERT [dbo].[TipoActualizacion] ([ActualizacionID], [Descripcion]) VALUES (1, N'AGREGAR')
INSERT [dbo].[TipoActualizacion] ([ActualizacionID], [Descripcion]) VALUES (2, N'MODIFICAR')
INSERT [dbo].[TipoActualizacion] ([ActualizacionID], [Descripcion]) VALUES (3, N'ELIMINAR')
GO
SET IDENTITY_INSERT [dbo].[TipoDeVenta] ON 

INSERT [dbo].[TipoDeVenta] ([TipoVentaID], [Descripcion]) VALUES (1, N'Sinpe Móvil                                                                                         ')
INSERT [dbo].[TipoDeVenta] ([TipoVentaID], [Descripcion]) VALUES (2, N'Tarjeta de Crédito                                                                                  ')
INSERT [dbo].[TipoDeVenta] ([TipoVentaID], [Descripcion]) VALUES (3, N'Tarjeta de Débito                                                                                   ')
INSERT [dbo].[TipoDeVenta] ([TipoVentaID], [Descripcion]) VALUES (4, N'Efectivo                                                                                            ')
INSERT [dbo].[TipoDeVenta] ([TipoVentaID], [Descripcion]) VALUES (5, N'Cupón de Cambio                                                                                     ')
SET IDENTITY_INSERT [dbo].[TipoDeVenta] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([UsuarioID], [Nombre], [Contraseña], [AccesoID], [EmpleadoID]) VALUES (1, N'Master', N'admin12345', 1, NULL)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
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
/****** Object:  StoredProcedure [dbo].[sp_CalcularSubTotalXFactura]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarBitacora]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarCategorias]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarClientes]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarEmpleados]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarFacturas]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarInventarios]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarLocales]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarMedida]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarPedidos]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarProductos]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarProveedor]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarTipoDeVenta]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_FacturaXCliente]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_FacturaXLocal]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarCategorias]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarClientes]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarEmpleados]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarFacturas]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarInventarios]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarInventarioXLocal]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarInventarioXProducto]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarLocales]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarMedidas]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarPedidos]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarProductos]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarProveedor]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarTipoDeVenta]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_MaxFacturas]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_MaxLocalesID]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_MaxProductoID]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ModificarCategorias]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ModificarClientes]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ModificarEmpleados]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ModificarInventarios]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ModificarLocales]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ModificarMedidas]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ModificarProductos]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ModificarProveedores]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ModificarTiposDeVenta]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ModificarTotalesFacturas]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_MostrarPedidosXCliente]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ReducirInventariosXProductoYLocal]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarBitacora]    Script Date: 24/6/2021 23:33:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_SeleccionarBitacora]

AS

SELECT *

FROM Bitacora
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarCategorias]    Script Date: 24/6/2021 23:33:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarCategorias]

AS

SELECT *

FROM Categorias

GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarCategoriasID]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarClientes]    Script Date: 24/6/2021 23:33:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarClientes]

as 

SELECT *

FROM Clientes
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarClientesID]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarEmpleados]    Script Date: 24/6/2021 23:33:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarEmpleados]


AS

SELECT *

FROM Empleados
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarEmpleadosID]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarEmpleadosXLocal]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarFacturas]    Script Date: 24/6/2021 23:33:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarFacturas]



AS

SELECT *

FROM Facturas

GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarInventarios]    Script Date: 24/6/2021 23:33:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarInventarios]



AS

SELECT *

FROM Inventarios

GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarInventarioXLocal]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarInventarioXProducto]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarLocales]    Script Date: 24/6/2021 23:33:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarLocales]


AS

SELECT *

FROM Locales

GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarLocalesID]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarMedias]    Script Date: 24/6/2021 23:33:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarMedias]

AS

SELECT *

FROM Medidas
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarMedidasID]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarPedidos]    Script Date: 24/6/2021 23:33:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarPedidos]



AS

SELECT *

FROM Pedidos

GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarPedidosID]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarPedidosXFactura]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarProductos]    Script Date: 24/6/2021 23:33:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarProductos]

AS

SELECT *

FROM Productos
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarProductosID]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarProveedores]    Script Date: 24/6/2021 23:33:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarProveedores]



AS

SELECT *

FROM Proveedores

GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarProveedoresID]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarTipoDeVenta]    Script Date: 24/6/2021 23:33:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarTipoDeVenta]



AS

SELECT *

FROM TipoDeVenta

GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarTipoDeVentaID]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_StockLocalXProducto]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_StockProductoXLocal]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  Trigger [dbo].[tr_AgregarCategorias]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  Trigger [dbo].[tr_EliminarCategorias]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  Trigger [dbo].[tr_ModificarCategorias]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  Trigger [dbo].[tr_AgregarClientes]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  Trigger [dbo].[tr_EliminarClientes]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  Trigger [dbo].[tr_ModificarClientes]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  Trigger [dbo].[tr_AgregarEmpleado]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  Trigger [dbo].[tr_EliminarEmpleado]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  Trigger [dbo].[tr_ModificarEmpleado]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  Trigger [dbo].[tr_AgregarFactura]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  Trigger [dbo].[tr_EliminarFactura]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  Trigger [dbo].[tr_ModificarFactura]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  Trigger [dbo].[tr_AgregarInventarios]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  Trigger [dbo].[tr_EliminarInventarios]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  Trigger [dbo].[tr_ModificarInventarios]    Script Date: 24/6/2021 23:33:51 ******/
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
/****** Object:  Trigger [dbo].[tr_AgregarLocales]    Script Date: 24/6/2021 23:33:52 ******/
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
/****** Object:  Trigger [dbo].[tr_EliminarLocales]    Script Date: 24/6/2021 23:33:52 ******/
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
/****** Object:  Trigger [dbo].[tr_ModificarLocales]    Script Date: 24/6/2021 23:33:52 ******/
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
/****** Object:  Trigger [dbo].[tr_AgregarMedidas]    Script Date: 24/6/2021 23:33:52 ******/
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
/****** Object:  Trigger [dbo].[tr_EliminarMedidas]    Script Date: 24/6/2021 23:33:52 ******/
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
/****** Object:  Trigger [dbo].[tr_ModificarMedidas]    Script Date: 24/6/2021 23:33:52 ******/
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
/****** Object:  Trigger [dbo].[tr_AgregarPedidos]    Script Date: 24/6/2021 23:33:52 ******/
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
/****** Object:  Trigger [dbo].[tr_EliminarPedidos]    Script Date: 24/6/2021 23:33:52 ******/
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
/****** Object:  Trigger [dbo].[tr_ModificarPedidos]    Script Date: 24/6/2021 23:33:52 ******/
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
/****** Object:  Trigger [dbo].[tr_AgregarProductos]    Script Date: 24/6/2021 23:33:52 ******/
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
/****** Object:  Trigger [dbo].[tr_EliminarProductos]    Script Date: 24/6/2021 23:33:52 ******/
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
/****** Object:  Trigger [dbo].[tr_ModificarProductos]    Script Date: 24/6/2021 23:33:52 ******/
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
/****** Object:  Trigger [dbo].[tr_AgregarProveedores]    Script Date: 24/6/2021 23:33:52 ******/
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
/****** Object:  Trigger [dbo].[tr_EliminarProveedores]    Script Date: 24/6/2021 23:33:52 ******/
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
/****** Object:  Trigger [dbo].[tr_ModificarProveedores]    Script Date: 24/6/2021 23:33:52 ******/
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
/****** Object:  Trigger [dbo].[tr_AgregarTipoAcceso]    Script Date: 24/6/2021 23:33:52 ******/
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
/****** Object:  Trigger [dbo].[tr_EliminarTipoAcceso]    Script Date: 24/6/2021 23:33:52 ******/
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
/****** Object:  Trigger [dbo].[tr_ModificarTipoAcceso]    Script Date: 24/6/2021 23:33:52 ******/
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
/****** Object:  Trigger [dbo].[tr_AgregarTipoActualizacion]    Script Date: 24/6/2021 23:33:52 ******/
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
/****** Object:  Trigger [dbo].[tr_EliminarTipoActualizacion]    Script Date: 24/6/2021 23:33:53 ******/
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
/****** Object:  Trigger [dbo].[tr_ModificarTipoActualizacion]    Script Date: 24/6/2021 23:33:53 ******/
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
/****** Object:  Trigger [dbo].[tr_AgregarTipoDeVenta]    Script Date: 24/6/2021 23:33:53 ******/
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
/****** Object:  Trigger [dbo].[tr_EliminarTipoDeVenta]    Script Date: 24/6/2021 23:33:53 ******/
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
/****** Object:  Trigger [dbo].[tr_ModificarTipoDeVenta]    Script Date: 24/6/2021 23:33:53 ******/
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
