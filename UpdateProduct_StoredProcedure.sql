USE [ShopifyDbDemo]
GO
/*
exec usp_UpdateProduct 'My New Shopify Product', 'My New Name for Shopify Product'
*/
CREATE PROCEDURE usp_UpdateProduct
@Name varchar(150),
@NewName varchar(150)
AS  
BEGIN  
    -- SET NOCOUNT ON added to prevent extra result sets from  
    -- interfering with SELECT statements.  
    SET NOCOUNT ON;  
  
    UPDATE [dbo].[Products] SET Name=@NewName
	WHERE Name = @Name
END  
GO  