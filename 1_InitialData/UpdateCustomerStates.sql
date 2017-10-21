DECLARE @EMP_ID AS INT 

DECLARE cur CURSOR FOR
    select [CUSTOMERID] from [DS2OLTP].[dbo].[CUSTOMERS] 
    


OPEN cur;
FETCH FROM cur INTO @EMP_ID


WHILE (@@FETCH_STATUS = 0)
BEGIN

  update [DS2OLTP].[dbo].[CUSTOMERS] 
  set [DS2OLTP].[dbo].[CUSTOMERS].[CITY] = 
    (
       select top 1 [City]
    from [DS2OLTP].[dbo].[NEW]
       where [DS2OLTP].[dbo].[NEW].[State]=[DS2OLTP].[dbo].[CUSTOMERS].[STATE]
    order by newid()
    )
    where [DS2OLTP].[dbo].[CUSTOMERS].[CUSTOMERID] = @EMP_ID 
    
    FETCH NEXT FROM cur INTO @EMP_ID
END

CLOSE cur
DEALLOCATE cur