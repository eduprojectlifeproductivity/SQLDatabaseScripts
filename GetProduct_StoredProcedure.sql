USE [ShopifyDbDemo]
go
/*
exec usp_GetProduct 'My New Shopify Product'
*/
CREATE PROCEDURE usp_GetProduct
@Name varchar(150)
AS  
BEGIN  
    -- SET NOCOUNT ON added to prevent extra result sets from  
    -- interfering with SELECT statements.  
    SET NOCOUNT ON;  
  
    SELECT * FROM [dbo].[Products] 
	WHERE Name = @Name
END  
GO  