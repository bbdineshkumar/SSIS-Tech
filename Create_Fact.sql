USE [AdventureWorksDW]
GO

/****** Object:  Table [dbo].[FactSales_USD_NZD]    Script Date: 3/2/2021 7:34:56 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactSales_USD_NZD](
	[ProductKey] [int] NOT NULL,
	[OrderDateKey] [int] NOT NULL,
	[DueDateKey] [int] NOT NULL,
	[ShipDateKey] [int] NOT NULL,
	[CustomerKey] [int] NOT NULL,
	[PromotionKey] [int] NOT NULL,
	[CurrencyKey] [int] NOT NULL,
	[SalesTerritoryKey] [int] NOT NULL,
	[SalesOrderNumber] [nvarchar](30) NOT NULL,
	[SalesOrderlineNumber] [nvarchar](20) NOT NULL,
	[Color] [nvarchar](20) NOT NULL,
	[RevisionNumber] [tinyint] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[DueDate] [datetime] NOT NULL,
	[ShipDate] [datetime]NOT NULL,
	[ProductStandardCost] [money] NOT NULL,
	[OrderQuantity] [smallint] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[UnitPriceDiscountPct] [float] NOT NULL,
	[FinalUnitAmount] [money] NOT NULL,
	[FinalProductCost] [money] NOT NULL,
	[TaxAmt] [money] NOT NULL,
	[Freight] [money] NOT NULL,
	[SalesAmount_USD] [money] NOT NULL,
	[NZD_Current_rate] [money] NOT NULL,
	[SalesAmount_NZD] [money] NOT NULL,
 CONSTRAINT [PK_FactSales_USD_NZD_SalesOrderNumber_SalesOrderLineNumber] PRIMARY KEY CLUSTERED 
(
	[SalesOrderNumber] ASC,
	[SalesOrderlineNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[FactSales_USD_NZD]  WITH CHECK ADD  CONSTRAINT [FK_FactSales_USD_NZD_DimCurrency] FOREIGN KEY([CurrencyKey])
REFERENCES [dbo].[DimCurrency] ([CurrencyKey])
GO

ALTER TABLE [dbo].[FactSales_USD_NZD] CHECK CONSTRAINT [FK_FactSales_USD_NZD_DimCurrency]
GO

ALTER TABLE [dbo].[FactSales_USD_NZD]  WITH CHECK ADD  CONSTRAINT [FK_FactSales_USD_NZD_DimCustomer] FOREIGN KEY([CustomerKey])
REFERENCES [dbo].[DimCustomer] ([CustomerKey])
GO

ALTER TABLE [dbo].[FactSales_USD_NZD] CHECK CONSTRAINT [FK_FactSales_USD_NZD_DimCustomer]
GO

ALTER TABLE [dbo].[FactSales_USD_NZD]  WITH CHECK ADD  CONSTRAINT [FK_FactSales_USD_NZD_DimDate] FOREIGN KEY([OrderDateKey])
REFERENCES [dbo].[DimDate] ([DateKey])
GO

ALTER TABLE [dbo].[FactSales_USD_NZD] CHECK CONSTRAINT [FK_FactSales_USD_NZD_DimDate]
GO

ALTER TABLE [dbo].[FactSales_USD_NZD]  WITH CHECK ADD  CONSTRAINT [FK_FactSales_USD_NZD_DimDate1] FOREIGN KEY([DueDateKey])
REFERENCES [dbo].[DimDate] ([DateKey])
GO

ALTER TABLE [dbo].[FactSales_USD_NZD] CHECK CONSTRAINT [FK_FactSales_USD_NZD_DimDate1]
GO

ALTER TABLE [dbo].[FactSales_USD_NZD]  WITH CHECK ADD  CONSTRAINT [FK_FactSales_USD_NZD_DimDate2] FOREIGN KEY([ShipDateKey])
REFERENCES [dbo].[DimDate] ([DateKey])
GO

ALTER TABLE [dbo].[FactSales_USD_NZD] CHECK CONSTRAINT [FK_FactSales_USD_NZD_DimDate2]
GO

ALTER TABLE [dbo].[FactSales_USD_NZD]  WITH CHECK ADD  CONSTRAINT [FK_FactSales_USD_NZD_DimProduct] FOREIGN KEY([ProductKey])
REFERENCES [dbo].[DimProduct] ([ProductKey])
GO

ALTER TABLE [dbo].[FactSales_USD_NZD] CHECK CONSTRAINT [FK_FactSales_USD_NZD_DimProduct]
GO

ALTER TABLE [dbo].[FactSales_USD_NZD]  WITH CHECK ADD  CONSTRAINT [FK_FactSales_USD_NZD_DimPromotion] FOREIGN KEY([PromotionKey])
REFERENCES [dbo].[DimPromotion] ([PromotionKey])
GO

ALTER TABLE [dbo].[FactSales_USD_NZD] CHECK CONSTRAINT [FK_FactSales_USD_NZD_DimPromotion]
GO

ALTER TABLE [dbo].[FactSales_USD_NZD]  WITH CHECK ADD  CONSTRAINT [FK_FactSales_USD_NZD_DimSalesTerritory] FOREIGN KEY([SalesTerritoryKey])
REFERENCES [dbo].[DimSalesTerritory] ([SalesTerritoryKey])
GO

ALTER TABLE [dbo].[FactSales_USD_NZD] CHECK CONSTRAINT [FK_FactSales_USD_NZD_DimSalesTerritory]
GO


