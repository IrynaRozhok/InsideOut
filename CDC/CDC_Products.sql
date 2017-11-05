USE DS2OLTP
GO
EXEC sp_changedbowner 'sa'
GO 

USE DS2OLTP
GO 
EXEC sys.sp_cdc_enable_db;
GO

USE DS2OLTP
GO 
EXEC sys.sp_cdc_enable_table 
@source_schema = N'dbo', 
@source_name = N'PRODUCTS', 
@role_name = NULL, 
@supports_net_changes = 1; 
GO