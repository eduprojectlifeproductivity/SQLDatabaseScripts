USE [ShopifyDbDemo]
GO
/*
SELECT [dbo].[udf_GetCalculatedTaxAmount] (1,10,20) 
SELECT OrderId, ProductId, Quantity, Price, [dbo].[udf_GetCalculatedTaxAmount] (Quantity, Price, TaxRate) as CalculatedTaxAmount FROM OrderLines 
*/
ALTER FUNCTION [dbo].[udf_GetCalculatedTaxAmount](
    @quantity DEC(18,2),
    @price DEC(18,2),
    @taxRate DEC(18,2)
)
RETURNS DEC(18,2)
AS 
BEGIN
    RETURN @taxRate/100*(@quantity * @price) ;
END;