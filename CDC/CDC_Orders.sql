USE DS2OLTP
GO 
EXEC sys.sp_cdc_enable_db;
GO

USE DS2OLTP
GO 
EXEC sys.sp_cdc_enable_table 
@source_schema = N'dbo', 
@source_name = N'ORDERS', 
@role_name = NULL, 
@supports_net_changes = 1; 
GO