USE [ShopifyDbDemo]
GO
/*
exec usp_DeleteProduct 'My New Shopify Product'
*/
CREATE PROCEDURE usp_DeleteProduct
@Name varchar(150)
AS  
BEGIN  
    -- SET NOCOUNT ON added to prevent extra result sets from  
    -- interfering with SELECT statements.  
    SET NOCOUNT ON;  
  
    DELETE FROM [dbo].[Products] 
	WHERE Name = @Name
END  
GO  