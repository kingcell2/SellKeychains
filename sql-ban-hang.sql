--create database [SHOP]
--drop database [SHOP]
USE [SHOP]
GO
/****** Object:  Table [dbo].[bill]    Script Date: 11/10/2019 1:02:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date_order] [date] NULL,
	[total] [float] NULL,
	[name] [nvarchar](100) NULL,
	[phone] [nvarchar](20) NULL,
 CONSTRAINT [PK_bill] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[bill_detail]    Script Date: 11/10/2019 1:02:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill_detail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_bill] [int] NOT NULL,
	[id_product] [int] NOT NULL,
	[quantity] [float] NULL,
	[price] [float] NULL,
 CONSTRAINT [PK_bill_detail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[product]    Script Date: 11/10/2019 1:02:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[link] [nvarchar](255) NULL,
	[id_type] [int] NOT NULL,
	[price] [float] NULL,
	[description] [ntext] NULL,
	[discount] [float] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[product_type]    Script Date: 11/10/2019 1:02:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[image] [nvarchar](20) NULL,
 CONSTRAINT [PK_product_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[users]    Script Date: 11/10/2019 1:02:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[password] [nvarchar](255) NOT NULL,
	[name] [nvarchar](100) NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[users] ON 
INSERT [dbo].[users] ([id], [email], [password], [name]) VALUES (1, N'admin', N'admin', N'Trung')
SET IDENTITY_INSERT [dbo].[users] OFF


SET IDENTITY_INSERT [dbo].[product_type] ON 
INSERT [dbo].[product_type] ([id], [name], [image]) VALUES (1, N'Móc Khóa PUBG', null)
INSERT [dbo].[product_type] ([id], [name], [image]) VALUES (2, N'Mô Hình PUBG', null)
INSERT [dbo].[product_type] ([id], [name], [image]) VALUES (3, N'Sản Phẩm mới', null)
INSERT [dbo].[product_type] ([id], [name], [image]) VALUES (4, N'Hot', null)
SET IDENTITY_INSERT [dbo].[product_type] OFF


SET IDENTITY_INSERT [dbo].[product] ON 
INSERT [dbo].[product] ([id], [name], [link], [id_type], [price], [description], [discount]) VALUES (1, N'Bộ 3 Móc khóa Súng AR ', N'14.jpg', 1, 100000, N'Tuyệt vời', 0.1)
INSERT [dbo].[product] ([id], [name], [link], [id_type], [price], [description], [discount]) VALUES (2, N'Móc khóa hình chảo', N'15.jpg', 1, 100000, N'Tuyệt vời', 0.1)
INSERT [dbo].[product] ([id], [name], [link], [id_type], [price], [description], [discount]) VALUES (3, N'Móc khóa hình dao ', N'16.jpg', 1, 120000, N'Tuyệt vời', 0.25)
INSERT [dbo].[product] ([id], [name], [link], [id_type], [price], [description], [discount]) VALUES (4, N'Móc khóa giáp 3', N'17.jpg', 1, 120000, N'Tuyệt vời', 0.25)
INSERT [dbo].[product] ([id], [name], [link], [id_type], [price], [description], [discount]) VALUES (5, N'Móc khóa hình túi cứu thương', N'18.jpg', 1, 120000, N'Tuyệt vời', 0.25)
INSERT [dbo].[product] ([id], [name], [link], [id_type], [price], [description], [discount]) VALUES (6, N'Móc khóa hình máy bay', N'19.jpg', 1, 100000, N'Tuyệt vời', 0.1)
INSERT [dbo].[product] ([id], [name], [link], [id_type], [price], [description], [discount]) VALUES (7, N'Bộ 3 Móc khóa Súng Lục', N'20.jpg', 1, 120000, N'Tuyệt vời', 0.25)
INSERT [dbo].[product] ([id], [name], [link], [id_type], [price], [description], [discount]) VALUES (8, N'Móc khóa mũ 3', N'21.png', 1, 120000, N'Tuyệt vời', 0.25)
INSERT [dbo].[product] ([id], [name], [link], [id_type], [price], [description], [discount]) VALUES (9, N'Móc khóa hình xe đỡ đạn', N'22.jpg', 1, 120000, N'Tuyệt vời', 0.25)
INSERT [dbo].[product] ([id], [name], [link], [id_type], [price], [description], [discount]) VALUES (10, N'Combo móc khóa hình vật dụng PUBG', N'23.jpg', 1, 100000, N'Tuyệt vời', 0.1)
INSERT [dbo].[product] ([id], [name], [link], [id_type], [price], [description], [discount]) VALUES (11, N'Combo móc khóa hình chảo đủ màu', N'36.jpg', 1, 120000, N'Tuyệt vời', 0.1)
INSERT [dbo].[product] ([id], [name], [link], [id_type], [price], [description], [discount]) VALUES (12, N'Móc khóa hình Boom', N'7.jpg', 1, 120000, N'Tuyệt vời', 0.1)
INSERT [dbo].[product] ([id], [name], [link], [id_type], [price], [description], [discount]) VALUES (13, N'Combo móc khóa chảo, mũ, súng A1', N'12.jpg', 1, 120000, N'Tuyệt vời', 0.1)
INSERT [dbo].[product] ([id], [name], [link], [id_type], [price], [description], [discount]) VALUES (14, N'Combo móc khóa chảo, mũ, súng A2', N'13.jpg', 1, 120000, N'Tuyệt vời', 0.25)
INSERT [dbo].[product] ([id], [name], [link], [id_type], [price], [description], [discount]) VALUES (15, N'Mô hình trùm kín lúc lắc đầu', N'1.jpg', 2, 120000, N'Tuyệt vời', 0.25)
INSERT [dbo].[product] ([id], [name], [link], [id_type], [price], [description], [discount]) VALUES (16, N'Mô hình thanh niên nghiêm túc', N'2.jpg', 2, 120000, N'Tuyệt vời', 0.2)
INSERT [dbo].[product] ([id], [name], [link], [id_type], [price], [description], [discount]) VALUES (17, N'Mô hình người lớn sơ vin', N'3.jpg', 2, 200000 , N'Tuyệt vời', 0.2)
INSERT [dbo].[product] ([id], [name], [link], [id_type], [price], [description], [discount]) VALUES (18, N'Mô hình trùm kin người lớn', N'4.jpg', 2, 200000, N'Tuyệt vời', 0.15)
INSERT [dbo].[product] ([id], [name], [link], [id_type], [price], [description], [discount]) VALUES (19, N'Combo Mô hình thanh niên nghiêm túc', N'5.jpg', 2, 200000, N'Tuyệt vời', 0.15)
INSERT [dbo].[product] ([id], [name], [link], [id_type], [price], [description], [discount]) VALUES (20, N'Mô hình trùm kín lúc lắc bên hòm thính', N'6.jpg', 2, 200000, N'Tuyệt vời', 0.15)
INSERT [dbo].[product] ([id], [name], [link], [id_type], [price], [description], [discount]) VALUES (21, N'Mô hình người lớn nữ sơ vin', N'25.jpg', 2, 120000, N'Tuyệt vời', 0.1)
INSERT [dbo].[product] ([id], [name], [link], [id_type], [price], [description], [discount]) VALUES (22, N'Mô hình súng SKS', N'30.jpg', 3, 120000, N'Tuyệt vời', 0.1)
INSERT [dbo].[product] ([id], [name], [link], [id_type], [price], [description], [discount]) VALUES (23, N'Móc khóa súng K98', N'31.jpg', 3, 120000, N'Tuyệt vời', 0.1)
INSERT [dbo].[product] ([id], [name], [link], [id_type], [price], [description], [discount]) VALUES (24, N'Móc khóa sung M4A1', N'34.jpg', 3, 120000, N'Tuyệt vời', 0.1)
INSERT [dbo].[product] ([id], [name], [link], [id_type], [price], [description], [discount]) VALUES (25, N'Mô hình Tini đội nón', N'8.jpg', 3, 120000, N'Tuyệt vời', 0.1)
INSERT [dbo].[product] ([id], [name], [link], [id_type], [price], [description], [discount]) VALUES (26, N'Mô hình trùm kín lúc lắc đầu', N'1.jpg', 4, 120000, N'Tuyệt vời', 0.25)
INSERT [dbo].[product] ([id], [name], [link], [id_type], [price], [description], [discount]) VALUES (27, N'Mô hình thanh niên nghiêm túc', N'2.jpg', 4, 120000, N'Tuyệt vời', 0.2)
INSERT [dbo].[product] ([id], [name], [link], [id_type], [price], [description], [discount]) VALUES (28, N'Mô hình người lớn sơ vin', N'3.jpg', 4, 200000 , N'Tuyệt vời', 0.2)
INSERT [dbo].[product] ([id], [name], [link], [id_type], [price], [description], [discount]) VALUES (29, N'Mô hình trùm kin người lớn', N'4.jpg', 4, 200000, N'Tuyệt vời', 0.15)
INSERT [dbo].[product] ([id], [name], [link], [id_type], [price], [description], [discount]) VALUES (30, N'Combo Mô hình thanh niên nghiêm túc', N'5.jpg', 4, 200000, N'Tuyệt vời', 0.15)
INSERT [dbo].[product] ([id], [name], [link], [id_type], [price], [description], [discount]) VALUES (31, N'Mô hình trùm kín lúc lắc bên hòm thính', N'6.jpg', 4, 200000, N'Tuyệt vời', 0.15)

SET IDENTITY_INSERT [dbo].[bill] ON 
INSERT [dbo].[bill] ([id], [date_order], [total], [name], [phone]) VALUES (5, CAST(0x48400B00 AS Date), NULL, N'Hoàng Ngọc Trung', N'0397575050')
INSERT [dbo].[bill] ([id], [date_order], [total], [name], [phone]) VALUES (6, CAST(0x48400B00 AS Date), NULL, N'Ngô Thị Thanh Lan', N'0397575950')
SET IDENTITY_INSERT [dbo].[bill] OFF


SET IDENTITY_INSERT [dbo].[bill_detail] ON 
INSERT [dbo].[bill_detail] ([id], [id_bill], [id_product], [quantity], [price]) VALUES (4, 5, 2, 2, 100000)
INSERT [dbo].[bill_detail] ([id], [id_bill], [id_product], [quantity], [price]) VALUES (5, 6, 15, 1, 120000)
SET IDENTITY_INSERT [dbo].[bill_detail] OFF

ALTER TABLE [dbo].[bill] ADD  CONSTRAINT [DF_bill]  DEFAULT (getdate()) FOR [date_order]
GO
ALTER TABLE [dbo].[product] ADD  CONSTRAINT [DF_product_discount]  DEFAULT ((0.0)) FOR [discount]
GO
ALTER TABLE [dbo].[bill_detail]  WITH CHECK ADD  CONSTRAINT [FK_bill_detail_bill] FOREIGN KEY([id_bill])
REFERENCES [dbo].[bill] ([id])
GO
ALTER TABLE [dbo].[bill_detail] CHECK CONSTRAINT [FK_bill_detail_bill]
GO
ALTER TABLE [dbo].[bill_detail]  WITH CHECK ADD  CONSTRAINT [FK_bill_detail_product] FOREIGN KEY([id_product])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[bill_detail] CHECK CONSTRAINT [FK_bill_detail_product]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_product_type] FOREIGN KEY([id_type])
REFERENCES [dbo].[product_type] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_product_type]
