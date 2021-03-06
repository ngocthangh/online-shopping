USE [master]
GO
/****** Object:  Database [onlineshopping]    Script Date: 8/24/2017 7:24:25 AM ******/
CREATE DATABASE [onlineshopping]
GO
USE [onlineshopping]
GO
/****** Object:  Table [dbo].[address]    Script Date: 8/24/2017 7:24:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[address](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[address_line_one] [varchar](100) NULL,
	[address_line_two] [varchar](100) NULL,
	[city] [varchar](20) NULL,
	[state] [varchar](20) NULL,
	[country] [varchar](20) NULL,
	[postal_code] [varchar](10) NULL,
	[is_billing] [bit] NULL,
	[is_shipping] [bit] NULL,
 CONSTRAINT [pk_address_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cart]    Script Date: 8/24/2017 7:24:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[grand_total] [decimal](10, 2) NULL,
	[cart_lines] [int] NULL,
 CONSTRAINT [pk_cart_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[category]    Script Date: 8/24/2017 7:24:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[description] [varchar](255) NULL,
	[image_url] [varchar](50) NULL,
	[is_active] [bit] NULL,
 CONSTRAINT [pk_category_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[product]    Script Date: 8/24/2017 7:24:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](20) NULL,
	[name] [varchar](50) NULL,
	[brand] [varchar](50) NULL,
	[description] [varchar](255) NULL,
	[unit_price] [decimal](10, 2) NULL,
	[quantity] [int] NULL,
	[is_active] [bit] NULL,
	[category_id] [int] NULL,
	[supplier_id] [int] NULL,
	[purchases] [int] NULL DEFAULT ((0)),
	[views] [int] NULL DEFAULT ((0)),
 CONSTRAINT [pk_product_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[user_detail]    Script Date: 8/24/2017 7:24:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user_detail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[role] [varchar](50) NULL,
	[enabled] [bit] NULL,
	[password] [varchar](60) NULL,
	[email] [varchar](100) NULL,
	[contact_number] [varchar](15) NULL,
 CONSTRAINT [pk_user_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[address] ON 

INSERT [dbo].[address] ([id], [user_id], [address_line_one], [address_line_two], [city], [state], [country], [postal_code], [is_billing], [is_shipping]) VALUES (1, 2, N'102 Sabarmati Society, Mahatma Gandhi Road', N'Near Salt Lake, Gandhi Nagar', N'Ahmedabad', N'Gujarat', N'India', N'111111', 1, 0)
SET IDENTITY_INSERT [dbo].[address] OFF
SET IDENTITY_INSERT [dbo].[cart] ON 

INSERT [dbo].[cart] ([id], [user_id], [grand_total], [cart_lines]) VALUES (1, NULL, CAST(0.00 AS Decimal(10, 2)), 0)
SET IDENTITY_INSERT [dbo].[cart] OFF
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([id], [name], [description], [image_url], [is_active]) VALUES (1, N'Laptop', N'This is description for Laptop category!', N'CAT_1.png', 1)
INSERT [dbo].[category] ([id], [name], [description], [image_url], [is_active]) VALUES (2, N'Television', N'This is description for Television category!', N'CAT_2.png', 1)
INSERT [dbo].[category] ([id], [name], [description], [image_url], [is_active]) VALUES (3, N'Mobile', N'This is description for Mobile category!', N'CAT_3.png', 1)
INSERT [dbo].[category] ([id], [name], [description], [image_url], [is_active]) VALUES (4, N'Computer', N'This is description', N'CAT_4.png', 1)
SET IDENTITY_INSERT [dbo].[category] OFF
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [code], [name], [brand], [description], [unit_price], [quantity], [is_active], [category_id], [supplier_id], [purchases], [views]) VALUES (1, N'PRDABC123DEFX', N'iPhone 5s', N'apple', N'This is one of the best phone available in the market right now!', CAST(18000.00 AS Decimal(10, 2)), 5, 1, 3, 2, 0, 0)
INSERT [dbo].[product] ([id], [code], [name], [brand], [description], [unit_price], [quantity], [is_active], [category_id], [supplier_id], [purchases], [views]) VALUES (2, N'PRDDEF123DEFX', N'Samsung Galaxy S7', N'samsung', N'A smart phone by samsung!', CAST(32000.00 AS Decimal(10, 2)), 2, 0, 3, 3, 0, 0)
INSERT [dbo].[product] ([id], [code], [name], [brand], [description], [unit_price], [quantity], [is_active], [category_id], [supplier_id], [purchases], [views]) VALUES (3, N'PRDPQR123WGTX', N'Google Pixel', N'google', N'This is one of the best android smart phone available in the market right now!', CAST(57000.00 AS Decimal(10, 2)), 5, 1, 3, 2, 0, 0)
INSERT [dbo].[product] ([id], [code], [name], [brand], [description], [unit_price], [quantity], [is_active], [category_id], [supplier_id], [purchases], [views]) VALUES (4, N'PRDMNO123PQRX', N' Macbook Pro', N'apple', N'This is one of the best laptops available in the market right now!', CAST(54000.00 AS Decimal(10, 2)), 3, 1, 1, 2, 0, 0)
INSERT [dbo].[product] ([id], [code], [name], [brand], [description], [unit_price], [quantity], [is_active], [category_id], [supplier_id], [purchases], [views]) VALUES (5, N'PRDABCXYZDEFX', N'Dell Latitude E6510', N'dell', N'This is one of the best laptop series from dell that can be used!', CAST(48000.00 AS Decimal(10, 2)), 5, 1, 1, 3, 0, 0)
INSERT [dbo].[product] ([id], [code], [name], [brand], [description], [unit_price], [quantity], [is_active], [category_id], [supplier_id], [purchases], [views]) VALUES (6, N'PRD8BC9583656', N'Oppo Selfie S53', N'Oppo', N'This is some description for oppo mobile phones!', CAST(25000.00 AS Decimal(10, 2)), 0, 1, 3, 3, 0, 0)
SET IDENTITY_INSERT [dbo].[product] OFF
SET IDENTITY_INSERT [dbo].[user_detail] ON 

INSERT [dbo].[user_detail] ([id], [first_name], [last_name], [role], [enabled], [password], [email], [contact_number]) VALUES (1, N'Virat', N'Kohli', N'ADMIN', 1, N'$2a$06$W4wwF/YpQDo2R0dqmuCQZuucz6Zziu1nz4QW3CcXU55v52pSLZRo2', N'vk@gmail.com', N'8888888888')
INSERT [dbo].[user_detail] ([id], [first_name], [last_name], [role], [enabled], [password], [email], [contact_number]) VALUES (2, N'Ravindra', N'Jadeja', N'SUPPLIER', 1, N'$2a$06$tDhJUf7ZVvvHg753qrKHC.tNL27ubll6ynmLnkmGnZ1JPBsY9lLNO', N'rj@gmail.com', N'9999999999')
INSERT [dbo].[user_detail] ([id], [first_name], [last_name], [role], [enabled], [password], [email], [contact_number]) VALUES (3, N'Ravichandra', N'Ashwin', N'SUPPLIER', 1, N'$2a$06$THt6Msnv5v88pZhyGRqjY.tADo0Hc75nHsq5xE1MjmTBO2N3/2EdK', N'ra@gmail.com', N'7777777777')
SET IDENTITY_INSERT [dbo].[user_detail] OFF
ALTER TABLE [dbo].[address]  WITH CHECK ADD  CONSTRAINT [fk_address_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[user_detail] ([id])
GO
ALTER TABLE [dbo].[address] CHECK CONSTRAINT [fk_address_user_id]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [fk_cart_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[user_detail] ([id])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [fk_cart_user_id]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [fk_product_category_id] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [fk_product_category_id]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [fk_product_supplier_id] FOREIGN KEY([supplier_id])
REFERENCES [dbo].[user_detail] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [fk_product_supplier_id]
GO
USE [master]
GO
ALTER DATABASE [onlineshopping] SET  READ_WRITE 
GO
