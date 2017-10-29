SELECT DISTINCT TOP (5) PrDim.Actor, PrDim.ProductCategoryName, DDim.MonthName, DDim.MonthNumOfYear, DDim.Year, Facts.NetAmountLine as Sales
FROM   ProductDim AS PrDim INNER JOIN
             OrdersFacts AS Facts ON PrDim.ProductID = Facts.ProductID INNER JOIN
             DateDim AS DDim ON Facts.DateID = DDim.DateID
WHERE (PrDim.ProductCategoryName = @ProductCategoryName) AND (DDim.MonthName = @MonthName) AND (DDim.Year = @Year)
ORDER BY Facts.NetAmountLine DESC