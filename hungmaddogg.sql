USE [QLBAOHIEM2]
GO
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 02/07/2017 10:21:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUSTOMER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[ngaysinh] [date] NULL,
	[noithuongtru] [nvarchar](50) NULL,
	[soCMND] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CUSTOMER] PRIMARY KEY CLUSTERED 
(
	[soCMND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INSURRANCE]    Script Date: 02/07/2017 10:21:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INSURRANCE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[tengoiBH] [nvarchar](50) NULL,
	[thoihandong] [nvarchar](50) NULL,
	[mucphidong] [int] NULL,
	[mucdich] [nvarchar](50) NULL,
	[cachthucdong] [nvarchar](50) NOT NULL,
	[thoigianbatdau] [date] NULL,
	[thoigianketthuc] [date] NULL,
	[sanphamdikem] [nvarchar](50) NULL,
	[truonghopBH] [nvarchar](50) NULL,
	[thoigiantoithieuthamgia] [nvarchar](50) NULL,
	[thoigiantrocap] [nvarchar](50) NULL,
	[soCMND] [varchar](50) NULL,
 CONSTRAINT [Unique Key] UNIQUE NONCLUSTERED 
(
	[soCMND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[INSURRANCE]  WITH CHECK ADD  CONSTRAINT [FK_INSURRANCE_CUSTOMER] FOREIGN KEY([soCMND])
REFERENCES [dbo].[CUSTOMER] ([soCMND])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[INSURRANCE] CHECK CONSTRAINT [FK_INSURRANCE_CUSTOMER]
GO
