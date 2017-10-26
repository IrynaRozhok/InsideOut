USE DS2 
GO 
EXEC sys.sp_cdc_enable_db;
GO

USE DS2 
GO 
EXEC sys.sp_cdc_enable_table 
@source_schema = N'dbo ', 
@source_name = N'CUSTOMERS', 
@role_name = NULL, 
@supports_net_changes = 1; 
GO

