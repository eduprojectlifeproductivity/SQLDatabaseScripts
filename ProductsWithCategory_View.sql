USE [ShopifyDbDemo]
GO
/*
select * from vw_ProductsWithCategory
*/
CREATE VIEW vw_ProductsWithCategory AS
SELECT NAME, CategoryId
FROM  Products
WHERE CategoryId IS NOT NULL