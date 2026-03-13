-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ObtenerProducto]
	-- Add the parameters for the stored procedure here
    @Id as UNIQUEIDENTIFIER
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
      p.Id,
      p.Nombre AS Producto,
      p.Descripcion,
      p.Precio,
      p.Stock,
      p.CodigoBarras,
      sc.Nombre AS SubCategoria
FROM dbo.Producto p
INNER JOIN dbo.SubCategorias sc 
    ON p.IdSubCategoria = sc.Id
  WHERE p.Id = @Id;
END