## InsideOut

This is our first BI project.
Our task:
  Customer needs to build datawarehouse (using Microsoft product stack). Also we need to make initial data loading to our datawarehouse, after initial data loading all data should be loaded on daily basis using SSIS. Based on datawarehouse we should build cube (SSAS) for data analysis and build report subsystem using different tools (Tableau, Tibco and SSRS).

Team Members:
- Alina
- Anya
- Iryna
- Ivan
- Julia
- Oksana

# Usage
Project is working on MS SQL Server 2014.
Run scripts from `1_InitialData` folder in following order:
1. create_database_DS2.sql
2. CreateNamesTable.sql
3. UpdateCustomerNames.sql
4. CountryStateCityTable.sql
5. UpdateCustomerStates.sql
6. UpdateCustomerCity.sql
7. USAStates.sql
