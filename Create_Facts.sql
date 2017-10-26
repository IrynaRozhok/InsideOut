USE [DS2_DW]
GO

/****** Object:  Table [dbo].[OrdersFacts]    Script Date: 10/22/2017 1:16:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OrdersFacts](
	[OrderID] [int] NOT NULL,
	[DateID] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[NetAmountLine] [money] NOT NULL,
	[TaxLine] [money] NOT NULL,
	[TotalAmountLine] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[DateID] ASC,
	[CustomerID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[OrdersFacts]  WITH CHECK ADD  CONSTRAINT [FK_CustomerDim_CustomerID] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[CustomerDim] ([CustomerID])
GO

ALTER TABLE [dbo].[OrdersFacts] CHECK CONSTRAINT [FK_CustomerDim_CustomerID]
GO

ALTER TABLE [dbo].[OrdersFacts]  WITH CHECK ADD  CONSTRAINT [FK_DateDim_DateID] FOREIGN KEY([DateID])
REFERENCES [dbo].[DateDim] ([DateID])
GO

ALTER TABLE [dbo].[OrdersFacts] CHECK CONSTRAINT [FK_DateDim_DateID]
GO

ALTER TABLE [dbo].[OrdersFacts]  WITH CHECK ADD  CONSTRAINT [FK_ProductDim_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[ProductDim] ([ProductID])
GO

ALTER TABLE [dbo].[OrdersFacts] CHECK CONSTRAINT [FK_ProductDim_ProductID]
GO


