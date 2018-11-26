CREATE TABLE [dbo].[Category](
	[Id] [int] NOT NULL PRIMARY KEY,
	[Name] [nvarchar](50) NOT NULL
)

CREATE TABLE [dbo].[Product](
	[Id] [int] NOT NULL PRIMARY KEY,
	[Name] [nvarchar](50) NOT NULL
)

CREATE TABLE [dbo].[ProductCategories](
	[Id] [int] NOT NULL PRIMARY KEY,
	[ProductId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	CONSTRAINT [FK_ProductCategories_Product] FOREIGN KEY([ProductId]) REFERENCES [dbo].[Product] ([Id]),
	CONSTRAINT [FK_ProductCategories_Category] FOREIGN KEY([CategoryId]) REFERENCES [dbo].[Category] ([Id])
)
GO

CREATE INDEX [IX_ProductCategories_ProductId] ON [dbo].[ProductCategories] ([ProductId])
GO

CREATE INDEX [IX_ProductCategories_CategoryId] ON [dbo].[ProductCategories] ([CategoryId])
GO