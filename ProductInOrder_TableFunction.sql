USE [ShopifyDbDemo]
GO
/*
select * from [dbo].[udf_ProductInOrder](4)
*/
ALTER FUNCTION [dbo].[udf_ProductInOrder] (
    @month INT
)
RETURNS TABLE
AS
RETURN
    SELECT 
        p.Name,
        DATENAME(m,o.OrderDate) as OrderMonth,
        ol.Price,
		ol.Quantity,
		ol.Price * ol.Quantity as TotalPerProductLine
    FROM
        Orders o 
			join OrderLines ol on o.OrderId=ol.OrderId
			join Products p on p.ProductId=ol.ProductId
    WHERE
        MONTH(o.OrderDate) = @month;		
