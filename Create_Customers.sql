USE [DS2_DW]
GO

/****** Object:  Table [dbo].[CustomerDim]    Script Date: 10/22/2017 1:17:01 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[CustomerDim](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerBusinessID] [int] NOT NULL,
	[FullName] [varchar](120) NOT NULL,
	[Age] [tinyint] NOT NULL,
	[Income] [int] NOT NULL,
	[Gender] [char](1) NOT NULL,
	[RegionName] [varchar](50) NOT NULL,
	[Country] [varchar](50) NOT NULL,
	[State] [varchar](50) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[Email] [varchar](130) NOT NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


