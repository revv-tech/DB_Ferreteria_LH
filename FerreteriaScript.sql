USE [master]
GO
/****** Object:  Database [FerreteriaLosHermanos]    Script Date: 15/6/2021 17:14:37 ******/
CREATE DATABASE [FerreteriaLosHermanos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FerreteriaLosHermanos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLSERVIDOR\MSSQL\DATA\F_LosHermanos.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FerreteriaLosHermanos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLSERVIDOR\MSSQL\DATA\F_LosHermanos_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
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
/****** Object:  Table [dbo].[Bitacora]    Script Date: jue. 10 jun. 2021 05:14:17 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bitacora](
	[BitacoraID] [int] NOT NULL,
	[ActualizacionID] [int] NOT NULL,
	[Fecha] [date] NULL,
	[UsuarioID] [int] NOT NULL,
 CONSTRAINT [PK_Bitacora] PRIMARY KEY CLUSTERED 
(
	[BitacoraID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  Table [dbo].[Clientes]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  Table [dbo].[Empleados]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  Table [dbo].[Facturas]    Script Date: 15/6/2021 17:14:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facturas](
	[FacturaID] [int] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [dbo].[Ingresos]    Script Date: 15/6/2021 17:14:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingresos](
	[IngresoID] [int] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [dbo].[Inventarios]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  Table [dbo].[Locales]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  Table [dbo].[Medidas]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  Table [dbo].[Pedidos]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  Table [dbo].[Productos]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  Table [dbo].[Proveedores]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  Table [dbo].[TipoAcceso]    Script Date: jue. 10 jun. 2021 05:14:17 p.m. ******/
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
/****** Object:  Table [dbo].[TipoActualizacion]    Script Date: jue. 10 jun. 2021 05:14:17 p.m. ******/
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
/****** Object:  Table [dbo].[TipoDeVenta]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  Table [dbo].[Usuario]    Script Date: jue. 10 jun. 2021 05:14:17 p.m. ******/
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
SET IDENTITY_INSERT [dbo].[Categorias] ON 

INSERT [dbo].[Categorias] ([CategoriaID], [NombreCategoria], [Descripcion]) VALUES (1, N'Pinturas                 ', N'Pinturas de Colores                                                                                 ')
INSERT [dbo].[Categorias] ([CategoriaID], [NombreCategoria], [Descripcion]) VALUES (2, N'Herramientas             ', N'Todo tipo de artefacto que desempeñe una función                                                    ')
INSERT [dbo].[Categorias] ([CategoriaID], [NombreCategoria], [Descripcion]) VALUES (3, N'Liquidos Quimicos        ', N'Liquidos creados especialmente para productos                                                       ')
SET IDENTITY_INSERT [dbo].[Categorias] OFF
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Correo], [Telefono]) VALUES (1, N'Natalia Tijerino                                                                                    ', N'Coyol de Alajuela                                                                                                                                                                                                                                         ', N'tijenati@gmail.com                                                         ', N'88746932')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Correo], [Telefono]) VALUES (2, N'Juan Carlos Brenes A                                                                                ', N'Limon, Costa Rica                                                                                                                                                                                                                                         ', N'juancabreazo@gmail,com                                                     ', N'22632973')
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[Empleados] ON 

INSERT [dbo].[Empleados] ([EmpleadoID], [Nombre], [Direccion], [Correo], [FechaNacimiento], [LocalID]) VALUES (2, N'Pedro Viquez Almagro                                                                                ', N'Oreamuno de Cartago                                                                                                                                                                                                                                       ', N'pepevi@gmail.com                                                           ', CAST(N'1963-12-01' AS Date), 1)
INSERT [dbo].[Empleados] ([EmpleadoID], [Nombre], [Direccion], [Correo], [FechaNacimiento], [LocalID]) VALUES (3, N'Ignacio Santos Sevilla                                                                              ', N'San Rafael de Escazu, San Jose                                                                                                                                                                                                                            ', N'ignaciosant@gmail.com                                                      ', CAST(N'1965-06-06' AS Date), 2)
SET IDENTITY_INSERT [dbo].[Empleados] OFF
GO
SET IDENTITY_INSERT [dbo].[Facturas] ON 

INSERT [dbo].[Facturas] ([FacturaID], [Fecha], [Direccion], [Impuesto], [Subtotal], [Total], [LocalID], [EmpleadoID], [ClienteID], [TipoDePagoID]) VALUES (2, CAST(N'2021-06-06' AS Date), N'Alajuela, Coyol, Urbanizacion Lomas 2000                                                                                                                                                                                                                  ', 13, 7900, 8500, 2, 2, 1, 2)
SET IDENTITY_INSERT [dbo].[Facturas] OFF
GO
SET IDENTITY_INSERT [dbo].[Ingresos] ON 

INSERT [dbo].[Ingresos] ([IngresoID], [LocalID], [ProductoID], [EmpleadoID], [Cantidad], [Fecha]) VALUES (1, 2, 5, 2, 12, CAST(N'2021-06-06' AS Date))
SET IDENTITY_INSERT [dbo].[Ingresos] OFF
GO
SET IDENTITY_INSERT [dbo].[Locales] ON 

INSERT [dbo].[Locales] ([LocalID], [Nombre], [Direccion], [Telefono], [Correo]) VALUES (1, N'Ferreteria Los Hermano Cartago                                                                      ', N'Oreamuno de Cartago                                                                                                                                                                                                                                       ', N'22647891', N'lhf_cartago@hotmail.com                                                    ')
INSERT [dbo].[Locales] ([LocalID], [Nombre], [Direccion], [Telefono], [Correo]) VALUES (2, N'Ferreteria Los Hermanos Coyol                                                                       ', N'Coyol Alajuela                                                                                                                                                                                                                                            ', N'23654796', N'lhf_coyol@hotmail.com                                                      ')
INSERT [dbo].[Locales] ([LocalID], [Nombre], [Direccion], [Telefono], [Correo]) VALUES (3, N'Ferreteria Los Hermanos San Joaquin                                                                 ', N'300 mts al norte del restaurante Pollos Max                                                                                                                                                                                                               ', N'22556983', N'flh_sjheredia@gmail.com                                                    ')
SET IDENTITY_INSERT [dbo].[Locales] OFF
GO
SET IDENTITY_INSERT [dbo].[Medidas] ON 

INSERT [dbo].[Medidas] ([MedidaID], [Nombre]) VALUES (1, N'Metros              ')
INSERT [dbo].[Medidas] ([MedidaID], [Nombre]) VALUES (2, N'Pies                ')
INSERT [dbo].[Medidas] ([MedidaID], [Nombre]) VALUES (3, N'Kilos               ')
INSERT [dbo].[Medidas] ([MedidaID], [Nombre]) VALUES (4, N'Gramos              ')
INSERT [dbo].[Medidas] ([MedidaID], [Nombre]) VALUES (5, N'Metros Cubicos      ')
SET IDENTITY_INSERT [dbo].[Medidas] OFF
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([ProductoID], [ProvedorID], [CategoriaID], [MedidaID], [Nombre], [Precio]) VALUES (5, 2, 2, 4, N'Martillo                                     ', 7500)
INSERT [dbo].[Productos] ([ProductoID], [ProvedorID], [CategoriaID], [MedidaID], [Nombre], [Precio]) VALUES (6, 1, 3, 5, N'Gasolina                                     ', 750)
INSERT [dbo].[Productos] ([ProductoID], [ProvedorID], [CategoriaID], [MedidaID], [Nombre], [Precio]) VALUES (7, 1, 2, 4, N'Hacha                                        ', 8750)
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO
SET IDENTITY_INSERT [dbo].[Proveedores] ON 

INSERT [dbo].[Proveedores] ([ProveedorID], [NombreProveedor], [Direccion], [Correo], [Telefono]) VALUES (1, N'Pedro Vasquez                                                                                       ', N'Heredia, San Joaquin                                                                                                                                                                                                                                      ', N'pvasquez@gmail.com                                                         ', N'85769188')
INSERT [dbo].[Proveedores] ([ProveedorID], [NombreProveedor], [Direccion], [Correo], [Telefono]) VALUES (2, N'Marco Reveiz                                                                                        ', N'Heredia, San Rafael                                                                                                                                                                                                                                       ', N'revvace@gmail.com                                                          ', N'85769188')
INSERT [dbo].[Proveedores] ([ProveedorID], [NombreProveedor], [Direccion], [Correo], [Telefono]) VALUES (3, N'Sebastian Lopez Herrera                                                                             ', N'San Joaquin de Heredia, frente a Max Pollos                                                                                                                                                                                                               ', N'thelopezepol@outlook.es                                                    ', N'85769852')
INSERT [dbo].[Proveedores] ([ProveedorID], [NombreProveedor], [Direccion], [Correo], [Telefono]) VALUES (4, N'Brandon Rojas Perez                                                                                 ', N'Paraiso de Cartago, Residencial Vistas de Dulce Nombre                                                                                                                                                                                                    ', N'brojasperez@gmail.com                                                      ', N'78546932')
SET IDENTITY_INSERT [dbo].[Proveedores] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoDeVenta] ON 

INSERT [dbo].[TipoDeVenta] ([TipoVentaID], [Descripcion]) VALUES (1, N'Sinpe Movil                                                                                         ')
INSERT [dbo].[TipoDeVenta] ([TipoVentaID], [Descripcion]) VALUES (2, N'Tarjeta de Credito                                                                                  ')
INSERT [dbo].[TipoDeVenta] ([TipoVentaID], [Descripcion]) VALUES (3, N'Tarjeta de Debito                                                                                   ')
INSERT [dbo].[TipoDeVenta] ([TipoVentaID], [Descripcion]) VALUES (4, N'Efectivo                                                                                            ')
SET IDENTITY_INSERT [dbo].[TipoDeVenta] OFF
GO
ALTER TABLE [dbo].[Bitacora]  WITH CHECK ADD  CONSTRAINT [FK_Bitacora_TipoActualizacion] FOREIGN KEY([ActualizacionID])
REFERENCES [dbo].[TipoActualizacion] ([ActualizacionID])
GO
ALTER TABLE [dbo].[Bitacora] CHECK CONSTRAINT [FK_Bitacora_TipoActualizacion]
GO
ALTER TABLE [dbo].[Bitacora]  WITH CHECK ADD  CONSTRAINT [FK_Bitacora_Usuario] FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Usuario] ([UsuarioID])
GO
ALTER TABLE [dbo].[Bitacora] CHECK CONSTRAINT [FK_Bitacora_Usuario]
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
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Empleados] FOREIGN KEY([EmpleadoID])
REFERENCES [dbo].[Empleados] ([EmpleadoID])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Empleados]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_TipoAcceso] FOREIGN KEY([AccesoID])
REFERENCES [dbo].[TipoAcceso] ([AccesoID])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_TipoAcceso]
GO
/****** Object:  StoredProcedure [dbo].[sp_EliminarBitacora]    Script Date: jue. 10 jun. 2021 05:14:17 p.m. ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarCategorias]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarClientes]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarEmpleados]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarFacturas]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarIngresos]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarInventarios]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarLocales]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarMedida]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarPedidos]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarProductos]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarProveedor]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarTipoDeVenta]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarCategorias]    Script Date: 15/6/2021 17:14:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertarCategorias]

@nombre nchar(20), @descripcion nchar(100)

AS

INSERT INTO Categorias(NombreCategoria,Descripcion) 
VALUES (@nombre, @descripcion)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarClientes]    Script Date: 15/6/2021 17:14:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertarClientes]

@nombre nchar(20), @direccion nchar(100),@correo nchar(250), @telefono nchar(8)

AS

INSERT INTO Clientes(Nombre,Direccion,Correo,Telefono) 
VALUES (@nombre, @direccion,@correo,@telefono)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarEmpleados]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarFacturas]    Script Date: 15/6/2021 17:14:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertarFacturas]

@direccion nchar(250), @fecha date,@impuesto int, @subtotal int,@total int, @EmpleadoID int, @LocalID int, @ClienteID int, @TipoDePagoID int

AS

INSERT INTO Facturas(Direccion, Fecha, Impuesto,Subtotal, Total, EmpleadoID, LocalID, ClienteID ,TipoDePagoID) 

VALUES (@direccion, @fecha, @impuesto,@subtotal, @total, @EmpleadoID, @LocalID, @ClienteID ,@TipoDePagoID)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarIngresos]    Script Date: 15/6/2021 17:14:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertarIngresos]

@cantidad int, @fecha date, @EmpleadoID int, @LocalID int, @ProductoID int

AS

INSERT INTO Ingresos(Cantidad, Fecha, EmpleadoID, LocalID, ProductoID) 
VALUES (@cantidad, @fecha,@EmpleadoID, @LocalID, @ProductoID)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarInventarios]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarLocales]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarMedidas]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarPedidos]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarProductos]    Script Date: 15/6/2021 17:14:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertarProductos]

@nombre nchar(20), @precio int,@ProveedorID int, @CategoriaID int, @MedidaID int

AS

INSERT INTO Productos(Nombre, Precio, ProvedorID, CategoriaID, MedidaID) 
VALUES (@nombre, @precio,@ProveedorID, @CategoriaID, @MedidaID)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertarProveedor]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarTipoDeVenta]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ModificarInventarios]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ModificarProductos]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarCategorias]    Script Date: 15/6/2021 17:14:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarCategorias]

AS

SELECT *

FROM Categorias

GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarCategoriasID]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarClientes]    Script Date: 15/6/2021 17:14:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarClientes]

as 

SELECT *

FROM Clientes
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarFacturas]    Script Date: 15/6/2021 17:14:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarFacturas]



AS

SELECT *

FROM Facturas

GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarIngresos]    Script Date: 15/6/2021 17:14:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarIngresos]



AS

SELECT *

FROM Ingresos
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarInventarios]    Script Date: 15/6/2021 17:14:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarInventarios]



AS

SELECT *

FROM Inventarios

GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarLocales]    Script Date: 15/6/2021 17:14:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarLocales]


AS

SELECT *

FROM Locales

GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarLocalesID]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarMedias]    Script Date: 15/6/2021 17:14:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarMedias]

AS

SELECT *

FROM Medidas
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarPedidos]    Script Date: 15/6/2021 17:14:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarPedidos]



AS

SELECT *

FROM Pedidos

GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarPedidosID]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarProductos]    Script Date: 15/6/2021 17:14:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarProductos]

AS

SELECT *

FROM Productos
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarProductosID]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarProveedores]    Script Date: 15/6/2021 17:14:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarProveedores]



AS

SELECT *

FROM Proveedores

GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarProveedoresID]    Script Date: 15/6/2021 17:14:38 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarTipoDeVenta]    Script Date: 15/6/2021 17:14:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarTipoDeVenta]



AS

SELECT *

FROM TipoDeVenta

GO
USE [master]
GO
ALTER DATABASE [FerreteriaLosHermanos] SET  READ_WRITE 
GO
