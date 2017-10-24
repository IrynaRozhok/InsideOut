create procedure QuantitySales @Year int 
AS
SELECT SUM([Quantity]) as quantity, SUM([NetAmountLine]) as sales, DATENAME(month,FullDate) as [Month], [Year]
FROM [DS2DW].[dbo].[OrdersFacts] Facts JOIN
[DS2DW].[dbo].[DateDim] DateDim ON Facts.DateID=DateDim.DateID
WHERE [WeekNumOfMonth]=1
AND [Year]=@Year
GROUP BY  [Year], FullDate
ORDER BY FORMAT(FullDate,'MM')

GO
exec  QuantitySales '2009'