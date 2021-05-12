
/*======================================================================*/
CREATE PROCEDURE sp_InsertarTipoDeVenta

@ID int, @descripcion nchar(100)

AS

INSERT INTO TipoDeVenta(TipoVentaID, Descripcion) 

VALUES (@ID, @descripcion)

/*======================================================================*/

CREATE PROCEDURE sp_ModificarTipoDeVenta

@ID int, @descripcion nchar(100)

AS

BEGIN

UPDATE TipoDeVenta

SET TipoVentaID = @ID, Descripcion = @descripcion
WHERE TipoVentaID = @ID

END
/*======================================================================*/

CREATE PROCEDURE sp_SeleccionarTipoDeVenta

@ID int

AS

SELECT *

FROM TipoDeVenta

WHERE @ID = TipoVentaID

/*======================================================================*/

CREATE PROCEDURE sp_EliminarTipoDeVenta
@ID int

AS

DELETE FROM TipoDeVenta

WHERE @ID = TipoVentaID