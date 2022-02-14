/*
exec usp_GetOrderProductsSoldByMonth 10
*/
CREATE PROCEDURE usp_GetOrderProductsSoldByMonth
@Month int
AS  
BEGIN  
   
   DECLARE @ReportName varchar(50) = 'Sales By Month'

   SELECT
   @ReportName + ' ' + DateName(m, MonthOrders.OrderDate) as ReportName,
   p.Name,
   MonthOrders.OrderDate,
   TotalQuntity 
FROM
   Products p 
   JOIN
      (
         SELECT
            o.OrderDate,
            ol.ProductId,
            sum(ol.Quantity) AS TotalQuntity 
         FROM
            Orders o 
            JOIN
               OrderLines ol 
               on o.OrderId = ol.OrderLineId 
         WHERE
            MONTH(o.OrderDate) = @Month
         GROUP BY
            o.OrderDate,
            ol.ProductId 
      )
      AS MonthOrders 
      ON p.ProductId = MonthOrders.ProductId

END  
GO  