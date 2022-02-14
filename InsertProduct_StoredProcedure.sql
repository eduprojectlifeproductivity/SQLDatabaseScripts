/*
exec usp_InsertProduct 'My New Shopify Product', 1
*/
CREATE PROCEDURE usp_InsertProduct
@Name varchar(150),  
@CategoryId int  
AS  
BEGIN  
    -- SET NOCOUNT ON added to prevent extra result sets from  
    -- interfering with SELECT statements.  
    SET NOCOUNT ON;  
  
    Insert into [dbo].[Products] (Name, CategoryId)   
           Values (@Name, @CategoryId)
END  
GO  