USE [FerreteriaLosHermanos]
GO
/****** Object:  StoredProcedure [dbo].[sp_EliminarBitacora]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarCategorias]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarClientes]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarEmpleados]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarFacturas]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarIngresos]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarInventarios]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarLocales]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarMedida]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarPedidos]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarProductos]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarProveedor]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_EliminarTipoDeVenta]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarCategorias]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarClientes]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarEmpleados]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarFacturas]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarIngresos]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarInventarios]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarLocales]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarMedidas]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarPedidos]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarProductos]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarProveedor]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_InsertarTipoDeVenta]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ModificarClientes]    Script Date: 17/6/2021 19:15:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ModificarClientes]


@ID int, @nombre nchar(20), @direccion nchar(100),@correo nchar(250), @telefono nchar(8)
AS

BEGIN

UPDATE Clientes

SET  Nombre = @nombre , Direccion = @direccion, Correo = @correo, Telefono = @telefono
WHERE @ID = ClienteID

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarEmpleados]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ModificarInventarios]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ModificarLocales]    Script Date: 17/6/2021 19:15:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ModificarLocales]


@ID int, @nombre nchar(20), @direccion nchar(100),@correo nchar(250), @telefono nchar(8)
AS

BEGIN

UPDATE Locales

SET  Nombre = @nombre , Direccion = @direccion, Correo = @correo, Telefono = @telefono
WHERE @ID = LocalID

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarMedidas]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ModificarProductos]    Script Date: 17/6/2021 19:15:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ModificarProductos]

@ID int, @nombre nchar(20), @precio int ,@ProveedorID int, @CategoriaID int, @MedidaID int

AS

BEGIN

UPDATE Productos

SET  Nombre = @nombre, Precio = @precio ,ProvedorID = @ProveedorID, CategoriaID = @CategoriaID, MedidaID = @MedidaID
WHERE ProductoID = @ID

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarProveedores]    Script Date: 17/6/2021 19:15:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ModificarProveedores]


@ID int, @nombre nchar(20), @direccion nchar(100),@correo nchar(250), @telefono nchar(8)
AS

BEGIN

UPDATE Proveedores

SET  NombreProveedor = @nombre , Direccion = @direccion, Correo = @correo, Telefono = @telefono
WHERE @ID = ProveedorID

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarTiposDeVenta]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarCategorias]    Script Date: 17/6/2021 19:15:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarCategorias]

AS

SELECT *

FROM Categorias

GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarCategoriasID]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarClientes]    Script Date: 17/6/2021 19:15:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarClientes]

as 

SELECT *

FROM Clientes
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarClientesID]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarEmpleados]    Script Date: 17/6/2021 19:15:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarEmpleados]

AS

SELECT *

FROM Empleados
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarEmpleadosID]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarFacturas]    Script Date: 17/6/2021 19:15:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarFacturas]



AS

SELECT *

FROM Facturas

GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarIngresos]    Script Date: 17/6/2021 19:15:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarIngresos]



AS

SELECT *

FROM Ingresos
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarInventarios]    Script Date: 17/6/2021 19:15:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarInventarios]



AS

SELECT *

FROM Inventarios

GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarLocales]    Script Date: 17/6/2021 19:15:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarLocales]


AS

SELECT *

FROM Locales

GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarLocalesID]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarMedias]    Script Date: 17/6/2021 19:15:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarMedias]

AS

SELECT *

FROM Medidas
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarMedidasID]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarPedidos]    Script Date: 17/6/2021 19:15:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarPedidos]



AS

SELECT *

FROM Pedidos

GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarPedidosID]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarProductos]    Script Date: 17/6/2021 19:15:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarProductos]

AS

SELECT *

FROM Productos
GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarProductosID]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarProveedores]    Script Date: 17/6/2021 19:15:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarProveedores]



AS

SELECT *

FROM Proveedores

GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarProveedoresID]    Script Date: 17/6/2021 19:15:46 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarTipoDeVenta]    Script Date: 17/6/2021 19:15:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarTipoDeVenta]



AS

SELECT *

FROM TipoDeVenta

GO
/****** Object:  StoredProcedure [dbo].[sp_SeleccionarTipoDeVentaID]    Script Date: 17/6/2021 19:15:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SeleccionarTipoDeVentaID]

@ID int

AS

SELECT *

FROM TipoDeVenta

WHERE TipoVentaID = @ID
GO
