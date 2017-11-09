SELECT DISTINCT TOP (5) PrDim.Title, PrDim.ProductCategoryName, DDim.MonthName, DDim.MonthNumOfYear, DDim.Year, Facts.NetAmountLine AS Sales
FROM   ProductDim AS PrDim INNER JOIN
             OrdersFacts AS Facts ON PrDim.ProductID = Facts.ProductID INNER JOIN
             DateDim AS DDim ON Facts.DateID = DDim.DateID
WHERE (PrDim.ProductCategoryName = @ProductCategoryName) AND (DDim.MonthName = @MonthName) AND (DDim.Year = @Year)
ORDER BY Sales DESC