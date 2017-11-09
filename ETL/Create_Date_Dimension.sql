DECLARE @DateDim TABLE (
	[FullDate] [datetime] NOT NULL,
	[Year] [smallint] NOT NULL,
	[HalfYear] [tinyint] NOT NULL,
	[Quarter] [tinyint] NOT NULL,
	[MonthNumOfYear] [tinyint] NOT NULL,
	[MonthName] [nvarchar](30) NOT NULL,
	[DayNumOfMonth] [tinyint] NOT NULL,
	[DayNameOfWeek] [nvarchar](30) NOT NULL,
	[WeekNumOfMonth] [tinyint] NOT NULL)

DECLARE 
	@Start_Date datetime,
	@End_Date datetime
SET @Start_Date = '1899-12-31 00:00:00.000'
SET @End_Date = '2100-12-31 00:00:00.000'

WHILE (@Start_Date < @End_Date)
BEGIN 
	SET @Start_Date = DATEADD(day, 1, @Start_Date)
	INSERT INTO @DateDim 
	VALUES ( @Start_Date, 
	         DATEPART(year, @Start_Date), 
			 CASE
				 WHEN DATEPART(month, @Start_Date) BETWEEN 1 AND 6
				 THEN 1
				 WHEN DATEPART(month, @Start_Date) BETWEEN 7 AND 12
				 THEN 2
			 END,
			 DATEPART(quarter , @Start_Date),
             DATEPART(month, @Start_Date),
             DATENAME(month, @Start_Date),
             DATEPART(day , @Start_Date),
             DATENAME(weekday, @Start_Date),
			 CASE 
				WHEN DATEPART(day , @Start_Date) BETWEEN 1 AND 7
				THEN 1
				WHEN DATEPART(day , @Start_Date) BETWEEN 8 AND 14
				THEN 2
				WHEN DATEPART(day , @Start_Date) BETWEEN 15 AND 21
				THEN 3
				WHEN DATEPART(day , @Start_Date) BETWEEN 22 AND 28
				THEN 4
				WHEN DATEPART(day , @Start_Date) BETWEEN 29 AND 31
				THEN 5
			  END)
  END
  SELECT * FROM @DateDim
