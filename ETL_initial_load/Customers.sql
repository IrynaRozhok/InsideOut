SELECT CUSTOMERID, 
              FIRSTNAME +' '+ LASTNAME AS FullName, 
              AGE, 
              INCOME, 
              GENDER, 
              CASE REGION
			  WHEN 1 THEN 'USA'
			  WHEN 2 THEN 'Abroad countries'
			  END AS REGION, 
              COUNTRY, 
              STATE, 
              CITY, 
              EMAIL
FROM CUSTOMERS;