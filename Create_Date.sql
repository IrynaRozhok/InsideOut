USE [DS2_DW]
GO

/****** Object:  Table [dbo].[DateDim]    Script Date: 10/22/2017 1:19:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DateDim](
	[DateID] [int] IDENTITY(1,1) NOT NULL,
	[FullDate] [datetime] NOT NULL,
	[Year] [smallint] NOT NULL,
	[HalfYear] [tinyint] NOT NULL,
	[Quarter] [tinyint] NOT NULL,
	[MonthNumOfYear] [tinyint] NOT NULL,
	[MonthName] [nvarchar](30) NOT NULL,
	[DayNumOfMonth] [tinyint] NOT NULL,
	[DayNameOfWeek] [nvarchar](30) NOT NULL,
	[WeekNumOfMonth] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


