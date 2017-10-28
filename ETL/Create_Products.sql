USE [DS2_DW]
GO

/****** Object:  Table [dbo].[ProductDim]    Script Date: 10/22/2017 1:20:50 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[ProductDim](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductBusinessID] [int] NOT NULL,
	[ProductCategoryName] [varchar](50) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[Actor] [varchar](50) NOT NULL,
	[Price] [money] NOT NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


