USE [ShopifyDbDemo]
go
/*
exec usp_GetAllProducts 
*/
CREATE PROCEDURE usp_GetAllProducts
AS  
BEGIN  
    -- SET NOCOUNT ON added to prevent extra result sets from  
    -- interfering with SELECT statements.  
    SET NOCOUNT ON;  
  
    SELECT * FROM [dbo].[Products] 	
END  
GO  