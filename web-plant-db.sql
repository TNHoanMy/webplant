
USE [master]
GO

CREATE DATABASE [WebPlant]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LaptopEL', FILENAME = N'E:\DB\WebPlantess.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1084KB )
 LOG ON 
( NAME = N'LaptopEL_log', FILENAME = N'E:\DB\WebPlantess_0.ldf' , SIZE = 1600KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WebPlant] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebPlant].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebPlant] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebPlant] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebPlant] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebPlant] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebPlant] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebPlant] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [WebPlant] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebPlant] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebPlant] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebPlant] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebPlant] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebPlant] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebPlant] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebPlant] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebPlant] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WebPlant] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebPlant] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebPlant] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebPlant] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebPlant] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebPlant] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [WebPlant] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebPlant] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebPlant] SET  MULTI_USER 
GO
ALTER DATABASE [WebPlant] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebPlant] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebPlant] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebPlant] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WebPlant] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'WebPlant', N'ON'
GO
USE [WebPlant]
GO
/****** Object:  Table [dbo].[Categorys]    Script Date: 3/23/2084 7:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
USE WebPlant
GO
CREATE TABLE [dbo].[Categorys](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[ParentId] [int] NULL,
	[Orders] [int] NULL,
	[Metakey] [nvarchar](max) NULL,
	[Metadesc] [nvarchar](max) NULL,
	[Created_at] [datetime] NULL,
	[Created_by] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_dbo.Categorys] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 3/23/2084 7:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Phone] [int] NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Detail] [nvarchar](max) NOT NULL,
	[Flag] [int] NOT NULL,
	[Reply] [nvarchar](max) NULL,
	[Created_at] [datetime] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_dbo.Contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Links]    Script Date: 3/23/2084 7:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Links](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
	[TableId] [int] NULL,
 CONSTRAINT [PK_dbo.Links] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Menus]    Script Date: 3/23/2084 7:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Link] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
	[TableId] [int] NULL,
	[ParentId] [int] NULL,
	[Position] [nvarchar](max) NULL,
	[Orders] [int] NOT NULL,
	[Created_at] [datetime] NULL,
	[Created_by] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Menus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 3/23/2084 7:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Amount] [float] NOT NULL,
 CONSTRAINT [PK_dbo.OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/23/2084 7:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](max) NULL,
	[CustemerId] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ExportDate] [datetime] NULL,
	[DeliveryAddress] [nvarchar](max) NULL,
	[DeliveryName] [nvarchar](max) NULL,
	[DeliveryPhone] [nvarchar](max) NULL,
	[DeliveryEmail] [nvarchar](max) NULL,
	[Updated_by] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Status] [int] NULL,
	[Trash] [int] NULL,
	[DeliveryPaymentMethod] [nvarchar](max) NULL,
	[StatusPayment] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Posts]    Script Date: 3/23/2084 7:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Topid] [int] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Slug] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NULL,
	[Img] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
	[MetaKey] [nvarchar](max) NULL,
	[MetaDesc] [nvarchar](max) NULL,
	[Created_At] [datetime] NOT NULL,
	[Created_By] [int] NULL,
	[Updated_At] [datetime] NOT NULL,
	[Updated_By] [int] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Posts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/23/2084 7:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[CateID] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[NewPromotion] [nvarchar](max) NULL,
	[Installment] [int] NOT NULL,
	[Discount] [int] NULL,
	[Detail] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Specification] [nvarchar](max) NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ProPrice] [float] NOT NULL,
	[MetaKey] [nvarchar](max) NULL,
	[MetaDesc] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[Created_at] [datetime] NOT NULL,
	[Created_by] [int] NOT NULL,
	[Updated_at] [datetime] NOT NULL,
	[Updated_by] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sliders]    Script Date: 3/23/2084 7:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sliders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Link] [nvarchar](max) NULL,
	[Position] [nvarchar](max) NULL,
	[Img] [nvarchar](max) NULL,
	[Orders] [int] NULL,
	[Created_at] [datetime] NULL,
	[Created_by] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_dbo.Sliders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Topics]    Script Date: 3/23/2084 7:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topics](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[ParentId] [int] NULL,
	[Orders] [int] NULL,
	[Metakey] [nvarchar](max) NULL,
	[Metadesc] [nvarchar](max) NULL,
	[Created_at] [datetime] NULL,
	[Created_by] [int] NULL,
	[Updated_at] [datetime] NULL,
	[Updated_by] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_dbo.Topics] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/23/2084 7:51:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Gender] [int] NOT NULL,
	[Phone] [int] NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Access] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Created_at] [datetime] NOT NULL,
	[Created_by] [int] NOT NULL,
	[Updated_at] [datetime] NOT NULL,
	[Updated_by] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Categorys] ON 

INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (1, N'Cây cảnh', N'cay-canh', 0, NULL, N'Cây cảnh', N'Cây cảnh phong thủy', CAST(N'2084-08-08 13:35:38.130' AS DateTime), 20, CAST(N'2084-08-08 13:35:38.130' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (2, N'Chậu cảnh', N'chau-canh', 0, NULL, N'Chậu cảnh', N'Chậu cảnh', CAST(N'2084-08-08 13:36:30.090' AS DateTime), 20, CAST(N'2084-08-08 13:36:30.090' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (3, N'Phụ kiện cây cảnh', N'phu-kien-cay-canh', 0, NULL, N'Phụ kiện cây cảnh', N'Phụ kiện cây cảnh', CAST(N'2084-08-08 13:37:55.167' AS DateTime), 20, CAST(N'2084-08-08 15:48:13.117' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (5, N'Cao Cấp - Sang Trọng', N'cao-cap---sang-trong', 0, NULL, N'Cao Cấp - Sang Trọng', N'Cao Cấp - Sang Trọng', CAST(N'2084-08-08 13:37:18.473' AS DateTime), 20, CAST(N'2084-08-08 13:37:18.473' AS DateTime), 20, 0)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (7, N'Laptop Đồ Họa', N'laptop-do-hoa', 0, NULL, N'Laptop Đồ Họa', N'Laptop Đồ Họa', CAST(N'2084-08-08 13:36:41.643' AS DateTime), 1, CAST(N'2084-08-08 13:36:41.643' AS DateTime), 20, 0)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (8, N'Cây cảnh để bàn', N'cay-canh-de-ban', 1, NULL, N'Cây cảnh để bàn', N'Cây cảnh để bàn', CAST(N'2084-08-08 13:45:55.137' AS DateTime), 20, CAST(N'2084-08-08 13:45:55.137' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (9, N'Cây thủy sinh', N'cay-thuy-sinh', 1, NULL, N'Cây thủy sinh', N'Cây thủy sinh', CAST(N'2084-08-08 14:41:23.343' AS DateTime), 20, CAST(N'2084-08-08 14:41:23.343' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (10, N'Sen đá, xương rồng', N'sen-da--xuong-rong', 1, NULL, N'Sen đá, xương rồng', N'Sen đá, xương rồng', CAST(N'2084-08-08 14:41:46.917' AS DateTime), 20, CAST(N'2084-08-08 14:41:46.917' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (11, N'Chậu đất nung', N'chau-dat-nung', 2, NULL, N'Chậu đất nung', N'Chậu đất nung', CAST(N'2084-08-08 14:42:12.008' AS DateTime), 20, CAST(N'2084-08-08 14:42:12.008' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (12, N'Chậu đá mài - xi măng', N'chau-da-mai---xi-mang', 2, NULL, N'Chậu đá mài - xi măng', N'Chậu đá mài - xi măng', CAST(N'2084-08-08 14:42:47.463' AS DateTime), 20, CAST(N'2084-08-08 14:42:47.463' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (13, N'Chậu composite', N'chau-composite', 2, NULL, N'Chậu composite', N'Chậu composite', CAST(N'2084-08-08 14:43:04.183' AS DateTime), 20, CAST(N'2084-08-08 14:43:04.183' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (14, N'Chậu Bonsai', N'chau-bonsai', 2, NULL, N'Chậu Bonsai', N'Chậu Bonsai', CAST(N'2084-08-08 14:43:39.480' AS DateTime), 20, CAST(N'2084-08-08 14:43:39.480' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (15, N'Đất trồng, phân bón', N'dat-trong--phan-bon', 3, NULL, N'Đất trồng, phân bón', N'Đất trồng, phân bón', CAST(N'2084-08-08 14:44:31.287' AS DateTime), 20, CAST(N'2084-08-08 14:44:31.287' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (16, N'Dung dịch thủy sinh', N'dung-dich-thuy-sinh', 3, NULL, N'Dung dịch thủy sinh', N'Dung dịch thủy sinh', CAST(N'2084-08-08 14:47:58.708' AS DateTime), 20, CAST(N'2084-08-08 14:47:58.708' AS DateTime), 20, 1)
INSERT [dbo].[Categorys] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (17, N'Dụng cụ làm vườn', N'dung-cu-lam-vuon', 3, NULL, N'Dụng cụ làm vườn', N'Dụng cụ làm vườn', CAST(N'2084-08-08 14:48:25.967' AS DateTime), 20, CAST(N'2084-08-08 14:48:25.967' AS DateTime), 20, 1)
SET IDENTITY_INSERT [dbo].[Categorys] OFF
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([Id], [FullName], [Email], [Phone], [Title], [Detail], [Flag], [Reply], [Created_at], [Updated_at], [Updated_by], [Status]) VALUES (1, N'Trần Mỹ', N'tranmy@gmail.com', 364242261, N'1', N'1', 1, N'Đã trả lời', CAST(N'2084-08-14 09:56:30.000' AS DateTime), CAST(N'2084-08-16 19:38:35.147' AS DateTime), 1, 1)
INSERT [dbo].[Contacts] ([Id], [FullName], [Email], [Phone], [Title], [Detail], [Flag], [Reply], [Created_at], [Updated_at], [Updated_by], [Status]) VALUES (2, N'd', N'd@gmail.com', 1, N'1', N'1', 1, N'ok', CAST(N'2084-08-14 22:34:46.000' AS DateTime), CAST(N'2084-08-16 22:34:44.707' AS DateTime), 1, 1)
INSERT [dbo].[Contacts] ([Id], [FullName], [Email], [Phone], [Title], [Detail], [Flag], [Reply], [Created_at], [Updated_at], [Updated_by], [Status]) VALUES (3, N'Ngan', N'xxx@gmail.com', 364242261, N'Test liên hệ 1', N'Test liên hệ 1', 0, NULL, CAST(N'2084-08-18 17:04:26.477' AS DateTime), CAST(N'2084-08-18 17:04:26.477' AS DateTime), 1, 1)
INSERT [dbo].[Contacts] ([Id], [FullName], [Email], [Phone], [Title], [Detail], [Flag], [Reply], [Created_at], [Updated_at], [Updated_by], [Status]) VALUES (4, N'Phat', N'ldd@gmail.com', 364242261, N'Test liên hệ 1', N'Test liên hệ 1', 0, NULL, CAST(N'2084-08-18 17:31:37.407' AS DateTime), CAST(N'2084-08-18 17:31:37.407' AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[Contacts] OFF
SET IDENTITY_INSERT [dbo].[Links] ON 

INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (1, N'Cây cảnh', N'cay-canh', N'category', 1)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (2, N'Tin công ty', N'tin-cong-ty', N'topic', 1)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (3, N'Chậu cảnh', N'chau-canh', N'category', 2)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (4, N'Phụ kiện cây cảnh', N'phu-kien-cay-canh', N'category', 3)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (5, N'Phụ Kiên', N'phu-kien', N'category', 4)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (6, N'Giới thiệu', N'gioi-thieu', N'page', 5)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (7, N'Hướng dẫn mua hàng', N'huong-dan-mua-hang', N'page', 6)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (8, N'Cao Cấp - Sang Trọng', N'cao-cap---sang-trong', N'category', 5)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (9, N'Cao Cấp - Sang Trọng done', N'cao-cap---sang-trong-done', N'category', 6)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (10, N'Chính sách đổi, trả hàng', N'chinh-sach-doi--tra-hang', N'page', 8)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (11, N'Cây cảnh để bàn', N'cay-canh-de-ban', N'category', 8)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (12, N'Cây thủy sinh', N'cay-thuy-sinh', N'category', 9)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (13, N'Sen đá, xương rồng', N'sen-da--xuong-rong', N'category', 10)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (14, N'Chậu đất nung', N'chau-dat-nung', N'category', 11)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (15, N'Chậu đá mài - xi măng', N'chau-da-mai---xi-mang', N'category', 12)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (16, N'Chậu composite', N'chau-composite', N'category', 13)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (17, N'Chậu Bonsai', N'chau-bonsai', N'category', 14)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (28, N'Đất trồng, phân bón', N'dat-trong--phan-bon', N'category', 15)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (29, N'Dung dịch thủy sinh', N'dung-dich-thuy-sinh', N'category', 16)
INSERT [dbo].[Links] ([Id], [Name], [Slug], [Type], [TableId]) VALUES (30, N'Dụng cụ làm vườn', N'dung-cu-lam-vuon', N'category', 17)
SET IDENTITY_INSERT [dbo].[Links] OFF
SET IDENTITY_INSERT [dbo].[Menus] ON 

INSERT [dbo].[Menus] ([Id], [Name], [Link], [Type], [TableId], [ParentId], [Position], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (1, N'Liên hệ', N'lien-he', N'page', NULL, 0, N'mainmenu', 1, CAST(N'2084-08-14 09:56:13.000' AS DateTime), NULL, CAST(N'2084-08-18 17:38:08.937' AS DateTime), 1, 1)
INSERT [dbo].[Menus] ([Id], [Name], [Link], [Type], [TableId], [ParentId], [Position], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (2, N'Tin tức', N'tin-tuc', N'custom', NULL, 0, N'mainmenu', 1, CAST(N'2084-08-15 09:23:14.240' AS DateTime), NULL, CAST(N'2084-08-15 09:23:16.083' AS DateTime), 1, 1)
INSERT [dbo].[Menus] ([Id], [Name], [Link], [Type], [TableId], [ParentId], [Position], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (3, N'Giới thiệu', N'gioi-thieu', N'page', 5, 0, N'mainmenu', 1, CAST(N'2084-08-15 09:32:52.000' AS DateTime), NULL, CAST(N'2084-08-16 20:26:33.993' AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[Menus] OFF
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (1, 1, 2, 16400000, 1, 16400000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (2, 2, 16, 18400000, 1, 18400000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (3, 3, 4, 9400000, 2, 18800000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (4, 4, 45, 55000, 1, 55000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (5, 5, 45, 55000, 1, 55000)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity], [Amount]) VALUES (6, 6, 44, 40000, 1, 40000)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (1, N'20840814090820', 1, CAST(N'2084-08-14 09:59:20.390' AS DateTime), CAST(N'2084-08-16 18:50:08.983' AS DateTime), N'123 tăng nhơn phú', N'Lê Gia Lai', N'01', N'lelaii200898@gmail.com', 1, CAST(N'2084-08-16 19:16:16.423' AS DateTime), 3, 0, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (2, N'20840818050827', 1, CAST(N'2084-08-18 17:05:27.907' AS DateTime), NULL, N'', N'Lê Gia Lai', N'01', N'', NULL, NULL, 1, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (3, N'20840818050826', 2, CAST(N'2084-08-18 17:33:26.357' AS DateTime), CAST(N'2084-08-18 17:34:12.908' AS DateTime), N'', N'Lê Gia Lai', N'0864242261', N'', 1, CAST(N'2084-08-18 17:34:12.908' AS DateTime), 3, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (4, N'20840823070857', 21, CAST(N'2084-08-23 19:24:57.953' AS DateTime), CAST(N'2084-08-23 19:28:59.807' AS DateTime), N'', N'Quang anh day', N'098723972', N'', 21, CAST(N'2084-08-23 19:28:59.807' AS DateTime), 3, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (5, N'20840823070805', 21, CAST(N'2084-08-23 19:36:05.423' AS DateTime), NULL, N'', N'Quang anh day', N'098723972', N'', NULL, NULL, 1, NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Code], [CustemerId], [CreateDate], [ExportDate], [DeliveryAddress], [DeliveryName], [DeliveryPhone], [DeliveryEmail], [Updated_by], [Updated_at], [Status], [Trash], [DeliveryPaymentMethod], [StatusPayment]) VALUES (6, N'20840823070812', 21, CAST(N'2084-08-23 19:43:12.687' AS DateTime), NULL, N'', N'Quang anh day', N'098723972', N'', NULL, NULL, 1, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Posts] ON 

INSERT [dbo].[Posts] ([Id], [Topid], [Title], [Slug], [Detail], [Img], [Type], [MetaKey], [MetaDesc], [Created_At], [Created_By], [Updated_At], [Updated_By], [Status]) VALUES (5, 0, N'Giới thiệu', N'gioi-thieu', N'<h1>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Vườn c&acirc;y phong thủy</h1>

<p><strong>Cho trải nghiệm &ldquo;kh&ocirc;ng chỉ l&agrave; c&acirc;y cảnh&rdquo;!</strong></p>

<p>C&acirc;y cảnh, từ trước đến nay vẫn được xem như vật trang tr&iacute;, l&agrave;m đẹp kh&ocirc;ng gian sống cho con người. C&acirc;y để b&agrave;n, bonsai, terrarium, c&acirc;y thuỷ sinh hoặc c&acirc;y treo chậu&hellip; mỗi loại mỗi c&acirc;y đều c&oacute; &yacute; nghĩa v&agrave; vẻ đẹp ri&ecirc;ng của m&igrave;nh, g&oacute;p phần đ&aacute;ng kể l&agrave;m cho cuộc sống ch&uacute;ng ta th&ecirc;m sinh động, trở n&ecirc;n đ&aacute;ng y&ecirc;u v&agrave; thanh b&igrave;nh hơn.</p>

<p>Nhưng tại&nbsp;<strong>Vườn C&acirc;y Việt</strong>, ch&uacute;ng t&ocirc;i muốn mang đến cho bạn kh&ocirc;ng chỉ l&agrave; c&acirc;y cảnh, ch&uacute;ng t&ocirc;i muốn mang đến cho bạn những trải nghiệm tuyệt vời m&agrave; kh&ocirc;ng nơi n&agrave;o c&oacute;. Vườn C&acirc;y Việt hiểu rằng đối với c&acirc;y cảnh, bạn sẽ muốn:</p>

<ul>
	<li>Hiểu&nbsp;&yacute; nghĩa&nbsp;(một c&aacute;ch s&acirc;u sắc, đ&uacute;ng đắn v&agrave; vững chắc) về loại c&acirc;y m&agrave; m&igrave;nh chọn</li>
	<li>Hiểu&nbsp;phong thuỷ&nbsp;ch&iacute;nh x&aacute;c của c&acirc;y để mang lại sự may mắn v&agrave; th&agrave;nh c&ocirc;ng cho c&ocirc;ng việc, cuộc sống</li>
	<li>Hiểu&nbsp;c&acirc;u chuyện&nbsp;tạo n&ecirc;n &yacute; nghĩa đằng sau từng loại c&acirc;y</li>
	<li>Hiểu&nbsp;c&aacute;ch chăm s&oacute;c&nbsp;để c&acirc;y lu&ocirc;n trong trạng th&aacute;i tốt nhất</li>
	<li>Lựa chọn&nbsp;loại chậu v&agrave; phụ kiện chăm s&oacute;c c&acirc;y sao cho ph&ugrave; hợp với nhu cầu</li>
</ul>

<p>V&agrave; một điều c&oacute; thể bạn chưa để &yacute;&hellip; l&agrave; th&ocirc;ng qua loại c&acirc;y bạn chọn, bạn sẽ thể hiện được&nbsp;<em>c&aacute; t&iacute;nh v&agrave; những g&igrave; độc đ&aacute;o</em>&nbsp;của bản th&acirc;n m&agrave; kh&ocirc;ng cần n&oacute;i ra m&agrave; người kh&aacute;c đ&atilde; tự hiểu rồi. Bạn l&agrave;m điều đ&oacute; bằng c&aacute;ch n&agrave;o?</p>

<p>Rất kh&oacute;, bởi kh&ocirc;ng phải ai, d&ugrave; th&iacute;ch chơi c&acirc;y v&agrave; y&ecirc;u c&acirc;y, đều c&oacute; thể hiểu r&otilde; từng ấy vấn đề. Nhưng kh&ocirc;ng sao!</p>

<p>H&atilde;y một lần đến với&nbsp;<strong>Vườn C&acirc;y Việt</strong>, ch&uacute;ng t&ocirc;i kh&ocirc;ng hứa g&igrave; ngo&agrave;i việc mang đến cho bạn c&aacute;c sản phẩm c&acirc;y cảnh v&agrave; dịch vụ chất lượng cao nhất th&ocirc;ng qua quy tr&igrave;nh b&aacute;n h&agrave;ng, giao h&agrave;ng, chăm s&oacute;c kh&aacute;ch h&agrave;ng, chăm s&oacute;c sản phẩm ti&ecirc;u chuẩn&hellip; VỚI GI&Aacute; CẢ PHẢI CHĂNG V&Agrave; PH&Ugrave; HỢP T&Uacute;I TIỀN.</p>

<p>Kh&ocirc;ng chỉ l&agrave; những chậu c&acirc;y cảnh được chăm s&oacute;c tỉ mẩn v&agrave; giao tận tay kh&aacute;ch h&agrave;ng, bạn c&ograve;n nhận được nhiều th&ocirc;ng tin hữu &iacute;ch về &yacute; nghĩa, c&aacute;ch chăm s&oacute;c v&agrave; những c&acirc;u chuyện th&uacute; vị của từng loại c&acirc;y m&agrave; bạn chưa biết đến, v&agrave; đặc biệt kh&ocirc;ng phải ai cũng c&oacute;&hellip; l&agrave;&nbsp;<em>cơ sở khoa học</em>&nbsp;về đặc t&iacute;nh của từng loại c&acirc;y. Tất cả ở h&igrave;nh thức đẹp v&agrave; độc đ&aacute;o nhất để bạn c&oacute; thể sử dụng l&acirc;u d&agrave;i.</p>

<h2><strong>Sứ mệnh</strong></h2>

<p>Với &yacute; nghĩa đ&oacute;,&nbsp;<strong>Vườn C&acirc;y Việt</strong>&nbsp;đặt ra cho m&igrave;nh sứ mệnh cung cấp c&aacute;c loại c&acirc;y l&agrave;m đẹp kh&ocirc;ng gian sống v&agrave; kh&ocirc;ng chỉ vậy, c&ograve;n cung cấp th&ecirc;m c&aacute;c gi&aacute; trị tinh thần cho kh&aacute;ch h&agrave;ng, l&agrave; điểm đến cho mọi kh&aacute;ch h&agrave;ng c&oacute; nhu cầu t&igrave;m mua những c&acirc;y cảnh trang tr&iacute; đẹp, ph&ugrave; hợp c&aacute; t&iacute;nh, phong thuỷ, kh&ocirc;ng gian sống v&agrave; l&agrave;m việc.</p>

<h2><strong>Tầm nh&igrave;n</strong></h2>

<p>Đến năm 2083,&nbsp;<strong>Vườn C&acirc;y Việt</strong>&nbsp;phấn đấu trở th&agrave;nh 1 trong 3 đơn vị dẫn đầu trong lĩnh vực cung cấp c&acirc;y cảnh để b&agrave;n, c&acirc;y cảnh mini, bonsai, c&acirc;y thuỷ sinh, terrarium.... tại Việt Nam, đồng thời trở th&agrave;nh nh&agrave; cung cấp đa dạng c&aacute;c loại h&igrave;nh c&acirc;y cảnh ph&ugrave; hợp cho nhiều đối tượng kh&aacute;ch h&agrave;ng kh&aacute;c nhau với hệ thống đối t&aacute;c ph&acirc;n phối rộng khắp cả nước.</p>

<p>C&aacute;c sản phẩm của Vườn C&acirc;y Việt sẽ ng&agrave;y c&agrave;ng ho&agrave;n thiện về mẫu m&atilde;, t&iacute;nh đa dạng nhằm đ&aacute;p ứng được nhu cầu kh&aacute;c nhau đến từ kh&aacute;ch h&agrave;ng.</p>

<h2><strong>Gi&aacute; trị cốt l&otilde;i</strong></h2>

<p><em>&bull;&nbsp;Chất lượng</em>: Tập trung v&agrave;o chất lượng sản phẩm, cam kết chỉ đưa ra thị trường c&aacute;c sản phẩm thực sự chất lượng.</p>

<p><em>&bull;&nbsp;Ch&iacute;nh trực</em>: Kh&ocirc;ng lừa dối kh&aacute;ch h&agrave;ng, lu&ocirc;n đảm bảo tư vấn cho kh&aacute;ch h&agrave;ng một c&aacute;ch c&ocirc;ng t&acirc;m, kh&aacute;ch quan nhất về sản phẩm.</p>

<p><em>&bull;&nbsp;S&aacute;ng tạo, đổi mới</em>: Kh&ocirc;ng ngừng quan s&aacute;t, t&igrave;m hiểu v&agrave; học hỏi, từ đ&oacute; đưa ra c&aacute;c &yacute; tưởng, sản phẩm mới.</p>

<p><em>&bull;&nbsp;Đồng đội</em>: Lu&ocirc;n phối hợp tốt giữa c&aacute;c th&agrave;nh vi&ecirc;n trong c&ocirc;ng ty, sẵn s&agrave;ng chia sẻ, g&oacute;p &yacute;, động vi&ecirc;n v&agrave; học hỏi lẫn nhau: &ldquo;v&igrave; sự ph&aacute;t triển của từng c&aacute; nh&acirc;n, v&igrave; sự ph&aacute;t triển bền vững của c&ocirc;ng ty&rdquo;.</p>

<p>Đừng dừng lại ở đ&acirc;y, h&atilde;y kh&aacute;m ph&aacute; c&aacute;c sản phẩm tại&nbsp;<a href="https://vuoncayviet.com/">Vuoncayviet.com</a>&nbsp;ngay b&acirc;y giờ!</p>
', NULL, N'page', N'Giới thiệu về chúng tôi', N'Giới thiệu về chúng tôi', CAST(N'2084-08-15 09:32:45.000' AS DateTime), 1, CAST(N'2084-08-08 17:19:13.647' AS DateTime), 20, 1)
INSERT [dbo].[Posts] ([Id], [Topid], [Title], [Slug], [Detail], [Img], [Type], [MetaKey], [MetaDesc], [Created_At], [Created_By], [Updated_At], [Updated_By], [Status]) VALUES (6, 0, N'Hướng dẫn mua hàng', N'huong-dan-mua-hang', N'<h1>Hướng Dẫn Mua H&agrave;ng - Vuoncayviet.com</h1>

<p>11/21/2018 6:04:00 PM&nbsp;&nbsp;&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>Để mua h&agrave;ng tại Vườn C&acirc;y Việt, bạn c&oacute; thể đến mua trực tiếp ở showroom, gọi điện đặt h&agrave;ng hoặc mua trực tuyến nhanh v&agrave; thuận tiện nhất.</p>

<h2><strong>C&aacute;ch 1: Đến trực tiếp showroom</strong></h2>

<p>Qu&yacute; kh&aacute;ch c&oacute; thể đến xem v&agrave; mua sản phẩm trực tiếp tại showroom:&nbsp;<strong>20/4 Kỳ Đồng, phường 9, quận 3, TP.HCM</strong>. Tại đ&acirc;y, Qu&yacute; kh&aacute;ch c&oacute; thể vừa xem sản phẩm vừa tr&ograve; chuyện, tư vấn với nh&acirc;n vi&ecirc;n của ch&uacute;ng t&ocirc;i để chọn cho m&igrave;nh những chậu c&acirc;y ph&ugrave; hợp nhất.</p>

<h2><strong>C&aacute;ch 2: Đặt h&agrave;ng qua điện thoại</strong></h2>

<p>Qu&yacute; kh&aacute;ch c&oacute; thể gọi cho ch&uacute;ng t&ocirc;i theo số&nbsp;<strong>0985507150</strong>&nbsp;để được tư vấn v&agrave; đặt h&agrave;ng.</p>

<h2><strong>C&aacute;ch 3: Mua h&agrave;ng trực tuyến tr&ecirc;n website Vuoncayviet.com</strong></h2>

<p>Qu&yacute; kh&aacute;ch thực hiện c&aacute;c bước đơn giản sau đ&acirc;y để mua sản phẩm ngay tr&ecirc;n website Vuoncayviet.com</p>

<h3><strong>Bước 1: Chọn sản phẩm v&agrave; đưa v&agrave;o giỏ h&agrave;ng</strong></h3>

<p>Tại trang danh s&aacute;ch sản phẩm, nếu Qu&yacute; kh&aacute;ch muốn đưa sản phẩm n&agrave;o v&agrave;o giỏ h&agrave;ng, bấm chọn biểu tượng giỏ h&agrave;ng hiện tr&ecirc;n sản phẩm.</p>

<p><img alt="1-san-pham-danh-muc.png" src="https://vuoncayviet.com/data/items/1017/1-san-pham-danh-muc.png" style="height:323px; width:700px" /></p>

<p><em>C&aacute;c sản phẩm hiện ra trong danh mục sản phẩm</em></p>

<p>Qu&yacute; kh&aacute;ch sẽ được chuyển đến trang Giỏ h&agrave;ng, tại đ&acirc;y Qu&yacute; kh&aacute;ch thực hiện:</p>

<ol>
	<li>Kiểm tra lại số lượng sản phẩm m&igrave;nh muốn mua, th&agrave;nh tiền&nbsp;<strong>(*)</strong></li>
	<li>Chuyển qua Bước 2 bằng c&aacute;ch bấm v&agrave;o n&uacute;t&nbsp;<strong>Thanh to&aacute;n</strong>, hoặc tiếp tục chọn sản phẩm kh&aacute;c đưa v&agrave;o giỏ h&agrave;ng bằng c&aacute;ch bấm v&agrave;o n&uacute;t&nbsp;<strong>Chọn th&ecirc;m sản phẩm</strong>&nbsp;(v&agrave; thực hiện lại bước 1)</li>
</ol>

<p><img alt="2-kiem-tra-thong-tin.png" src="https://vuoncayviet.com/data/items/1017/2-kiem-tra-thong-tin.png" style="height:299px; width:700px" /></p>

<p><em>Kiểm tra th&ocirc;ng tin v&agrave; thực hiện bước tiếp theo</em></p>

<p>Ngo&agrave;i ra, nếu Qu&yacute; kh&aacute;ch đang ở trang chi tiết sản phẩm, Qu&yacute; kh&aacute;ch c&oacute; thể chuyển sang Bước 2 bằng c&aacute;ch nhấn v&agrave;o n&uacute;t&nbsp;<strong>Mua ngay</strong>, hoặc chọn&nbsp;<strong>Th&ecirc;m v&agrave;o giỏ h&agrave;ng</strong>&nbsp;nếu muốn đưa sản phẩm n&agrave;y v&agrave;o giỏ h&agrave;ng như phần đầu trong bước n&agrave;y.</p>

<p><img alt="3-trang-chi-tiet-san-pham.png" src="https://vuoncayviet.com/data/items/1017/3-trang-chi-tiet-san-pham.png" style="height:281px; width:700px" /></p>

<p><em>Tại trang chi tiết sản phẩm, c&oacute; thể mua ngay hoặc đưa sản phẩm v&agrave;o giỏ h&agrave;ng.</em></p>

<p><strong>(*) Lưu &yacute;:</strong>&nbsp;Qu&yacute; kh&aacute;ch vui l&ograve;ng xem kỹ gi&aacute; trong phần m&ocirc; tả nằm b&ecirc;n cạnh ảnh minh hoạ sản phẩm, với mỗi M&atilde; sản phẩm kh&aacute;c nhau sẽ c&oacute; mức gi&aacute; kh&aacute;c nhau, v&agrave; gi&aacute; hiện ra tr&ecirc;n sản phẩm chỉ l&agrave; gi&aacute; thấp nhất được chọn ra trong tất cả c&aacute;c M&atilde; hiện c&oacute; của sản phẩm.</p>

<p><img alt="luu-y-ve-gia-san-pham.jpg" src="https://vuoncayviet.com/data/items/1017/luu-y-ve-gia-san-pham.jpg" style="height:406px; width:700px" /></p>

<p>&nbsp;Q<em>u&yacute; kh&aacute;ch n&ecirc;n xem gi&aacute; theo từng m&atilde; sản phẩm</em></p>

<h3><strong>Bước 2: Đăng k&yacute; / đăng nhập</strong></h3>

<p>Tại trang&nbsp;<strong>Đăng nhập</strong>, Qu&yacute; kh&aacute;ch thực hiện:</p>

<p>Chọn thẻ&nbsp;<strong>Đăng nhập</strong>&nbsp;nếu Qu&yacute; kh&aacute;ch đ&atilde; đăng k&yacute; th&agrave;nh vi&ecirc;n trước đ&acirc;y, nhập th&ocirc;ng tin v&agrave; bấm Đăng nhập.&nbsp;</p>

<p><img alt="4-dang-nhap-tai-khoan.png" src="https://vuoncayviet.com/data/items/1017/4-dang-nhap-tai-khoan.png" style="height:299px; width:700px" /></p>

<p><em>Đăng nhập v&agrave;o t&agrave;i khoản th&agrave;nh vi&ecirc;n</em></p>

<p>Chọn thẻ&nbsp;<strong>Đăng k&yacute;</strong>&nbsp;nếu Qu&yacute; kh&aacute;ch muốn trở th&agrave;nh th&agrave;nh vi&ecirc;n mới, nhập th&ocirc;ng tin v&agrave; bấm Đăng k&yacute;.&nbsp;Sau khi đăng k&yacute;, Qu&yacute; kh&aacute;ch sẽ nhận được email x&aacute;c nhận từ Vườn C&acirc;y Việt.</p>

<p><img alt="5-dang-ky-thanh-vien.jpg" src="https://vuoncayviet.com/data/items/1017/5-dang-ky-thanh-vien.jpg" style="height:362px; width:700px" /></p>

<p><em>Đăng k&yacute; th&agrave;nh vi&ecirc;n</em></p>

<p>Ngo&agrave;i ra, Qu&yacute; kh&aacute;ch c&oacute; thể đăng nhập bằng t&agrave;i khoản Facebook hoặc Google+ m&agrave; kh&ocirc;ng cần phải đăng k&yacute;.</p>

<h3><strong>Bước 3: Điền th&ocirc;ng tin địa chỉ giao h&agrave;ng</strong></h3>

<p>Nhập, sửa lại hoặc giữ nguy&ecirc;n th&ocirc;ng tin địa chỉ giao h&agrave;ng. Bấm&nbsp;<strong>Tiếp tục</strong>.</p>

<p><img alt="6-dia-chi-giao-hang.jpg" src="https://vuoncayviet.com/data/items/1017/6-dia-chi-giao-hang.jpg" style="height:283px; width:700px" /></p>

<p><em>Th&ocirc;ng tin địa chỉ giao h&agrave;ng</em></p>

<h3><strong>Bước 4: Thanh to&aacute;n</strong></h3>

<p>Tại trang Thanh to&aacute;n, Qu&yacute; kh&aacute;ch thực hiện:</p>

<ul>
	<li>Chọn Phương thức thanh to&aacute;n (Chuyển khoản hay Tiền mặt)</li>
	<li>Chọn Phương thức vận chuyển (Giao h&agrave;ng tận nơi, Nhận tại cửa h&agrave;ng hay Nhận qua bưu điện)</li>
	<li>Nhập M&atilde; bảo vệ (bắt buộc)</li>
	<li>Nhập Th&ocirc;ng tin th&ecirc;m (nếu cần)</li>
	<li>Kiểm tra Địa chỉ giao h&agrave;ng</li>
	<li>Kiểm tra th&ocirc;ng tin đơn h&agrave;ng</li>
	<li>Bấm n&uacute;t&nbsp;<strong>Đặt h&agrave;ng</strong>.</li>
</ul>

<p><img alt="7-thanh-toan.jpg" src="https://vuoncayviet.com/data/items/1017/7-thanh-toan.jpg" style="height:378px; width:700px" /></p>

<p><em>Thanh to&aacute;n v&agrave; đặt h&agrave;ng</em></p>

<p>Sau khi đặt h&agrave;ng, Qu&yacute; kh&aacute;ch sẽ nhận được một th&ocirc;ng b&aacute;o tr&ecirc;n m&agrave;n h&igrave;nh đặt h&agrave;ng v&agrave; nhận email x&aacute;c nhận đơn h&agrave;ng từ Vườn C&acirc;y Việt. Nh&acirc;n vi&ecirc;n tư vấn của Vườn C&acirc;y Việt sẽ li&ecirc;n hệ Qu&yacute; kh&aacute;ch theo th&ocirc;ng tin đ&atilde; cung cấp, th&ocirc;ng b&aacute;o lại gi&aacute; trị đơn h&agrave;ng&nbsp;<strong>(theo Lưu &yacute; tại Bước 1)</strong>&nbsp;v&agrave; tiến h&agrave;nh giao h&agrave;ng trong thời gian cam kết.</p>

<p><img alt="8-xac-nhan-don-hang.jpg" src="https://vuoncayviet.com/data/items/1017/8-xac-nhan-don-hang.jpg" style="height:92px; width:700px" /></p>

<p><em>Th&ocirc;ng b&aacute;o đặt h&agrave;ng th&agrave;nh c&ocirc;ng</em></p>

<h2><strong>Th&ocirc;ng tin thanh to&aacute;n chuyển khoản</strong></h2>

<p>Trong trường hợp thanh to&aacute;n bằng chuyển khoản, Qu&yacute; kh&aacute;ch thực hiện thanh to&aacute;n qua c&aacute;c t&agrave;i khoản sau:</p>

<ul>
	<li><strong>Ng&acirc;n h&agrave;ng Đ&ocirc;ng &Aacute;.</strong>&nbsp;Số TK: 0108720160, PGD T&ocirc; Hiến Th&agrave;nh, TP. HCM - Chủ T&agrave;i Khoản: Dương C&ocirc;ng Đ&ocirc;ng.</li>
	<li><strong>Ng&acirc;n h&agrave;ng VietCombank</strong>. Số TK: 042 100 385 5531 - Chủ T&agrave;i Khoản: Nguyễn Thị Hồng V&acirc;n.</li>
	<li><strong>Ng&acirc;n H&agrave;ng ACB</strong>. Số TK:130830819 - Chủ TK: Dương C&ocirc;ng Đ&ocirc;ng</li>
</ul>

<p>Ch&uacute;c Qu&yacute; kh&aacute;ch chọn được sản phẩm ưng &yacute; tại Vườn C&acirc;y Việt!</p>
', NULL, N'page', N'Hướng dẫn mua hàng', N'Hướng dẫn mua hàng', CAST(N'2084-08-15 09:39:25.000' AS DateTime), 1, CAST(N'2084-08-23 19:32:45.567' AS DateTime), 21, 1)
INSERT [dbo].[Posts] ([Id], [Topid], [Title], [Slug], [Detail], [Img], [Type], [MetaKey], [MetaDesc], [Created_At], [Created_By], [Updated_At], [Updated_By], [Status]) VALUES (8, 0, N'Chính sách đổi, trả hàng', N'chinh-sach-doi--tra-hang', N'<h1>Vườn C&acirc;y Việt: C&acirc;y cảnh chất lượng - bảo h&agrave;nh y&ecirc;n t&acirc;m</h1>

<p>11/21/2018 11:11:00 AM&nbsp;&nbsp;&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>Tất cả những sản phẩm c&acirc;y cảnh, chậu trồng hay phụ kiện, &hellip; đến với kh&aacute;ch h&agrave;ng đều đ&atilde; được kiểm tra chất lượng kỹ lưỡng. Tuy nhi&ecirc;n, Vườn C&acirc;y Việt vẫn c&oacute; ch&iacute;nh s&aacute;ch bảo h&agrave;nh để qu&yacute; kh&aacute;ch được y&ecirc;n t&acirc;m hơn khi lựa chọn mua sản phẩm của ch&uacute;ng t&ocirc;i</p>

<h2><strong>Địa chỉ bảo h&agrave;nh</strong></h2>

<p>Qu&yacute; kh&aacute;ch h&agrave;ng muốn đổi hoặc trả sản phẩm, vui l&ograve;ng đến showroom Vườn C&acirc;y Việt tại địa chỉ 20/4 Kỳ Đồng, Phường 9, Quận 3, TP. Hồ Ch&iacute; Minh</p>

<p>C&aacute;c bạn h&atilde;y li&ecirc;n hệ hotline&nbsp;<strong>0985 507 150</strong>&nbsp;trước khi đến để được hướng dẫn đường đi nh&eacute;!</p>

<h2><strong>Điều kiện bảo h&agrave;nh</strong></h2>

<p>Vườn C&acirc;y Việt chỉ chấp nhận đổi/trả trong khi sản phẩm đ&aacute;p ứng những điều kiện sau đ&acirc;y:</p>

<ul>
	<li>Sản phẩm nhận được kh&ocirc;ng đ&uacute;ng mẫu m&atilde;, k&iacute;ch thước, m&agrave;u sắc như h&igrave;nh ảnh giới thiệu tr&ecirc;n website hoặc điện thoại</li>
	<li>Sản phẩm phải c&ograve;n nguy&ecirc;n vẹn: Kh&ocirc;ng g&atilde;y hoặc kh&ocirc; h&eacute;o b&ocirc;ng, l&aacute;, th&acirc;n Kh&ocirc;ng bể, nứt hay trầy xước chậu</li>
	<li>Những phụ kiện đi k&egrave;m (nếu c&oacute;) phải c&ograve;n đầy đủ</li>
	<li>Sản phẩm c&oacute; h&oacute;a đơn b&aacute;n h&agrave;ng của Vườn C&acirc;y Việt, h&oacute;a đơn kh&ocirc;ng r&aacute;ch, c&oacute; chữ k&yacute; người b&aacute;n h&agrave;ng, ng&agrave;y th&aacute;ng mua h&agrave;ng, số lượng, th&ocirc;ng tin sản phẩm</li>
	<li>Kh&ocirc;ng &aacute;p dụng đổi/trả đối với sản phẩm sen đ&aacute;, xương rồng, c&acirc;y thủy sinh</li>
</ul>

<h2><strong>Thời gian bảo h&agrave;nh</strong></h2>

<ul>
	<li>Đổi h&agrave;ng trong v&ograve;ng 5 ng&agrave;y kể từ ng&agrave;y mua sản phẩm</li>
	<li>Trả h&agrave;ng trong v&ograve;ng 2 ng&agrave;y kể từ ng&agrave;y mua sản phẩm</li>
	<li>Đối với c&acirc;y cảnh nội/ngoại thất, được đổi/trả trong v&ograve;ng 5-7 ng&agrave;y kể từ ng&agrave;y mua</li>
</ul>

<h2><strong>Hướng dẫn bảo h&agrave;nh</strong></h2>

<h3><strong>Đổi h&agrave;ng</strong></h3>

<ul>
	<li>&Aacute;p dụng với sản phẩm mua online v&agrave; offline tại showroom</li>
	<li>Đổi miễn ph&iacute; đối với sản phẩm c&ugrave;ng loại v&agrave; bằng gi&aacute; tiền</li>
	<li>Đổi sản phẩm c&oacute; gi&aacute; trị lớn hơn phải b&ugrave; tiền</li>
</ul>

<h3><strong>Trả h&agrave;ng</strong></h3>

<ul>
	<li>Kh&ocirc;ng &aacute;p dụng với trường hợp mua h&agrave;ng offline tại showroom</li>
	<li>Trả h&agrave;ng khi sản phẩm bị hư hại do qu&aacute; tr&igrave;nh vận chuyển</li>
</ul>

<p>Ngo&agrave;i ra, nếu kh&aacute;ch h&agrave;ng n&agrave;o thắc mắc về c&aacute;ch trồng cũng như chăm s&oacute;c c&acirc;y cảnh, c&oacute; thể li&ecirc;n hệ ch&uacute;ng t&ocirc;i để được hỗ trợ tư vấn. Vườn C&acirc;y Việt lu&ocirc;n sẵn s&agrave;ng lắng nghe v&agrave; gi&uacute;p đỡ c&aacute;c bạn. Xin cảm ơn qu&yacute; kh&aacute;ch đ&atilde; lựa chọn sản phẩm từ Vườn C&acirc;y Việt.</p>

<p>&nbsp;</p>
', NULL, N'page', N'Chính sách đổi, trả hàng', N'Chính sách đổi, trả hàng', CAST(N'2084-08-15 21:14:19.000' AS DateTime), 1, CAST(N'2084-08-23 19:42:39.763' AS DateTime), 21, 1)
SET IDENTITY_INSERT [dbo].[Posts] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (25, N'Trầu Bà Sữa', N'trau-ba-sua', 8, N'trau-ba-sua.jpg', N'Khuyến mại 1', 1, 1, N'<p>T&ecirc;n thường gọi: C&acirc;y Trầu b&agrave; sữa chậu treo, c&acirc;y Trầu b&agrave; cẩm thạch chậu treo&hellip;<br />
<br />
T&ecirc;n tiếng Anh: Australian native monstera<br />
<br />
T&ecirc;n khoa học: Epipremnum aureum &lsquo;Marble Queen&rsquo;<br />
<br />
Họ thực vật: Araceae (họ R&aacute;y)<br />
<br />
Chiều cao: 20-30 cm (cả chậu)<br />
<br />
C&ocirc;ng dụng: C&acirc;y trầu b&agrave; sữa chậu treo thường&nbsp; d&ugrave;ng để trang tr&iacute; qu&aacute;n cafe, tiểu cảnh giếng trời, gi&agrave;n treo s&acirc;n thượng, trang tr&iacute; văn ph&ograve;ng l&agrave;m việc,&hellip; M&agrave;u l&aacute; c&acirc;y trầu b&agrave; sữa tr&ocirc;ng lạ mắt, d&aacute;ng c&acirc;y rũ rất ph&ugrave; hợp chậu treo.</p>
', N'<p>C&acirc;y trầu b&agrave; sữa chậu treo thường&nbsp; d&ugrave;ng để trang tr&iacute; qu&aacute;n cafe, tiểu cảnh giếng trời, gi&agrave;n treo s&acirc;n thượng, trang tr&iacute; văn ph&ograve;ng l&agrave;m việc,&hellip; M&agrave;u l&aacute; c&acirc;y trầu b&agrave; sữa tr&ocirc;ng lạ mắt, d&aacute;ng c&acirc;y rũ rất ph&ugrave; hợp chậu treo.</p>
', N'123', 650000, 10, 619996, N'Trầu Bà Sữa', N'Trầu Bà Sữa', 1, CAST(N'2084-08-08 17:43:23.000' AS DateTime), 20, CAST(N'2084-08-08 17:44:12.183' AS DateTime), 20)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (26, N'Cây Vạn Lộc', N'cay-van-loc', 8, N'cay-van-loc.jpg', NULL, 1, 1, N'<p><strong>C&acirc;y Vạn Lộc</strong>&nbsp;gi&uacute;p thanh lọc kh&ocirc;ng kh&iacute;, hấp thụ c&aacute;c chất g&acirc;y bệnh, ph&ugrave; hợp để b&agrave;n l&agrave;m việc, trang tr&iacute; qu&aacute;n</p>

<ul>
	<li><strong>DB085</strong>: 55x48cm,&nbsp;Chậu men sứ tr&ograve;n, c&oacute; ba ch&acirc;n, m&agrave;u đen</li>
	<li><strong>DB086</strong>: Chậu men sứ trụ tr&ograve;n, v&acirc;n &ocirc; vu&ocirc;ng, m&agrave;u trắng</li>
	<li><strong>DB087</strong>: Chậu men sứ miệng bầu, m&agrave;u trắng kem, c&oacute; hoa văn</li>
</ul>
', N'<p><strong>Giới thiệu c&acirc;y Vạn lộc</strong></p>

<ul>
	<li>T&ecirc;n thường gọi: Vạn lộc</li>
	<li>T&ecirc;n kh&aacute;c:&nbsp;Thi&ecirc;n Ph&uacute;</li>
	<li>T&ecirc;n tiếng Anh:&nbsp;Aglaonema &lsquo;lady valentine&rsquo;</li>
	<li>T&ecirc;n khoa học:&nbsp;Aglaonema rotundum pink</li>
	<li>Họ:&nbsp;Araceae (R&aacute;y)</li>
	<li>Xuất xứ: Th&aacute;i Lan,&nbsp;Indonesia</li>
</ul>

<p><strong>Đặc điểm</strong></p>

<ul>
	<li>L&agrave; c&acirc;y th&acirc;n thảo, c&oacute; l&aacute; m&agrave;u hồng đậm khi gi&agrave;, l&aacute; non m&agrave;u hồng nhạt,&nbsp;c&oacute; rễ ch&ugrave;m, dễ sống v&agrave; chăm s&oacute;c.</li>
	<li>Hoa m&agrave;u trắng, c&oacute; rễ tr&ugrave;m n&ecirc;n rất dễ sống v&agrave; chăm s&oacute;c.</li>
</ul>

<p><strong>&Yacute; nghĩa phong thuỷ</strong></p>

<ul>
	<li>Mang lại ph&uacute; qu&yacute;, tiền t&agrave;i. M&agrave;u đỏ của c&acirc;y thể hiện sự thịnh vượng, tốt l&agrave;nh, may mắn v&agrave; ph&aacute;t lộc</li>
	<li>C&acirc;y hợp với người mệnh Hoả hoặc Thổ, gi&uacute;p mang đến t&agrave;i lộc v&agrave; may mắn</li>
</ul>

<p><strong>C&ocirc;ng dụng</strong></p>

<ul>
	<li>Thanh lọc kh&ocirc;ng kh&iacute;, hấp thụ c&aacute;c chất hữu cơ g&acirc;y bệnh</li>
	<li>Ph&ugrave; hợp để b&agrave;n l&agrave;m việc, b&agrave;n uống nước, trang tr&iacute; qu&aacute;n c&agrave; ph&ecirc;</li>
	<li>L&agrave;m qu&agrave; tặng, qu&agrave; trang tr&iacute;, gửi gắm lời ch&uacute;c tốt đẹp đến người nhận&nbsp;</li>
</ul>

<p><strong>C&aacute;ch chăm s&oacute;c</strong></p>

<ul>
	<li>&Aacute;nh s&aacute;ng: ưa m&aacute;t, th&iacute;ch &aacute;nh s&aacute;ng nhẹ buổi s&aacute;ng sớm v&agrave; chiều muộn, th&iacute;ch hợp để cạnh cửa sổ, thoảng cho ra ngo&agrave;i nắng để m&agrave;u c&acirc;y tốt hơn.</li>
	<li>Đất: th&iacute;ch nghi nhiều loại đất kh&aacute;c nhau, ph&ugrave; hợp nhất l&agrave; đất c&oacute; pha xơ dừa, tro, trấu.</li>
	<li>Nước: tưới 2 lần/tuần, để ngo&agrave;i trời th&igrave; 3 lần/tuần. Mỗi lần ước lượng đủ ẩm đất l&agrave; vừa.</li>
</ul>
', N'123', 700000, 30, 684984, N'Cây Vạn Lộc', N'Cây Vạn Lộc', 1, CAST(N'2084-08-08 18:22:41.093' AS DateTime), 20, CAST(N'2084-08-08 18:22:41.093' AS DateTime), 20)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (27, N'Cây Tùng Hạnh Phúc', N'cay-tung-hanh-phuc', 8, N'cay-tung-hanh-phuc.jpg', NULL, 1, 1, N'<p><strong>C&acirc;y T&ugrave;ng Hạnh Ph&uacute;c</strong>&nbsp;mang &yacute; nghĩa cầu ch&uacute;c mọi điềm l&agrave;nh trong cuộc sống, ph&ugrave; hợp chưng trong nh&agrave;, văn ph&ograve;ng, b&agrave;n l&agrave;m việc hoặc tr&ecirc;n gi&aacute;, tr&ecirc;n kệ, l&agrave;m qu&agrave; tặng.</p>
', N'<p><strong>Giới thiệu c&acirc;y T&ugrave;ng Hạnh Ph&uacute;c</strong></p>

<ul>
	<li>T&ecirc;n kh&aacute;c: May Mắn T&agrave;i Lộc, C&acirc;y L&acirc;m Lộc May Mắn</li>
	<li>Xuất xứ: Nhật Bản</li>
</ul>

<p><strong>Đặc điểm</strong></p>

<ul>
	<li>C&acirc;y k&iacute;ch thước nhỏ, cao chừng 15-20cm, đường k&iacute;nh 8cm</li>
	<li>L&aacute; c&acirc;y kh&aacute; giống với l&aacute; c&acirc;y t&ugrave;ng la h&aacute;n, nhỏ, nhọn 2 đầu m&agrave;u xanh thẫm</li>
</ul>

<p><strong>&Yacute; nghĩa phong thủy</strong></p>

<ul>
	<li>Mang &yacute; nghĩa phong thuỷ tốt: cầu ch&uacute;c mọi điềm l&agrave;nh trong cuộc sống.</li>
</ul>

<p><strong>C&ocirc;ng dụng</strong></p>

<ul>
	<li>Ph&ugrave; hợp chưng trong nh&agrave;, văn ph&ograve;ng, b&agrave;n l&agrave;m việc hoặc tr&ecirc;n gi&aacute;, tr&ecirc;n kệ, l&agrave;m qu&agrave; tặng</li>
</ul>

<p><strong>C&aacute;ch trồng</strong></p>

<ul>
	<li>C&oacute; thể sống trong m&ocirc;i trường khắc nghiệt, dễ chăm s&oacute;c, kh&ocirc;ng cần phải tưới h&agrave;ng ng&agrave;y</li>
	<li>Chịu &uacute;ng hạn tốt, sức sống bền bỉ, khỏe khoắn v&agrave; ph&aacute;t triển đều đặn, thậm ch&iacute; trong m&ocirc;i trường thiếu &aacute;nh s&aacute;ng, m&ocirc;i trường m&aacute;y lạnh.</li>
</ul>
', N'123', 660000, 25, 640000, N'Cây Tùng Hạnh Phúc', N'Cây Tùng Hạnh Phúc', 1, CAST(N'2084-08-08 18:23:45.490' AS DateTime), 20, CAST(N'2084-08-08 18:23:45.490' AS DateTime), 20)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (28, N'Cây Trường Sinh', N'cay-truong-sinh', 8, N'cay-truong-sinh.jpg', NULL, 1, 1, N'<p><strong>C&acirc;y&nbsp;</strong><strong>Trường Sinh&nbsp;</strong>l&agrave; loại c&acirc;y phong thủy mang đến may mắn v&agrave; t&agrave;i lộc cho gia chủ. C&acirc;y cũng đồng thời c&oacute; &yacute; nghĩa cầu ch&uacute;c sức khỏe dồi d&agrave;o, b&igrave;nh an</p>
', N'<p><strong>Giới thiệu</strong></p>

<ul>
	<li>T&ecirc;n gọi kh&aacute;c: Diệp Sinh Căn, Thi&ecirc;n Cảnh Tạp Giao</li>
	<li>T&ecirc;n khoa học: Peperomia obtusifolia</li>
	<li>T&ecirc;n tiếng Anh: Baby Rubber Plant</li>
	<li>Họ: Crassulaceae (thuốc Bỏng)</li>
	<li>Xuất xứ: Florida, Mexico v&agrave; v&ugrave;ng Caribbean</li>
</ul>

<p><strong>Đặc điểm</strong></p>

<ul>
	<li>Th&acirc;n thảo,&nbsp;nhẵn b&oacute;ng, tr&ograve;n, mọng nước, trồng chậu cao khoảng&nbsp;10-60cm</li>
	<li>L&aacute; c&oacute; m&agrave;u xanh lục đậm, b&oacute;ng, với h&igrave;nh tr&ograve;n xinh vi&ecirc;n m&atilde;n.</li>
	<li>L&aacute; mọc từ gốc hoặc th&acirc;n, dạng đối, mọc khỏe khoắn, xum xu&ecirc;</li>
	<li>Hoa m&agrave;u trắng, dạng chuỗi, nở k&eacute;o d&agrave;i từ th&aacute;ng 12 đến th&aacute;ng 4 năm sau</li>
</ul>

<p><strong>&Yacute; nghĩa phong thủy</strong></p>

<ul>
	<li>Đ&uacute;ng như t&ecirc;n gọi, chỉ sự trường tồn, m&atilde;i m&atilde;i, ngụ &yacute; về một mối quan hệ bền l&acirc;u</li>
	<li>Tượng trưng cho t&agrave;i lộc, may mắn được vững bền</li>
	<li>Gi&uacute;p gia chủ th&ecirc;m vượng kh&iacute;, sức khỏe dồi d&agrave;o</li>
	<li>C&acirc;y ph&ugrave; hợp với người mệnh Mộc, mang đến niềm tin, hy vọng v&agrave; sự hợp t&aacute;c l&acirc;u d&agrave;i, bền vững.</li>
</ul>

<p><strong>C&ocirc;ng dụng</strong></p>

<ul>
	<li>Trồng chậu trang tr&iacute; trong nh&agrave;, cơ quan, đặt b&agrave;n l&agrave;m việc, tạo kh&ocirc;ng gian tươi m&aacute;t, dễ chịu</li>
	<li>C&oacute; thể h&uacute;t bớt kh&iacute; độc v&agrave; giảm ảnh hưởng xấu từ tia tử ngoại, tia bức xạ của đồ điện tử</li>
	<li>Th&iacute;ch hợp l&agrave;m qu&agrave; tặng trong lễ mừng thọ, mừng sinh nhật&hellip;</li>
</ul>

<p><strong>C&aacute;ch trồng v&agrave; chăm s&oacute;c</strong></p>

<ul>
	<li><em>Đất trồng</em>:&nbsp;gi&agrave;u dinh dưỡng v&agrave; tho&aacute;t nước tốt.&nbsp;Tạo hỗn hợp bao gồm: đất&nbsp;+ tro trấu + xơ dừa + v&ocirc;i bột +&nbsp;đ&aacute; perlite.</li>
	<li><em>Nước</em>: c&acirc;y đặt trong nh&agrave; tưới 1 lần/tuần. C&acirc;y trồng ngo&agrave;i trời tưới 2 lần/tuần. Lượng nước tưới &iacute;t, đủ ẩm</li>
	<li><em>&Aacute;nh s&aacute;ng</em>: tr&aacute;nh &aacute;nh nắng gay gắt, c&oacute; thể sống dưới &aacute;nh đ&egrave;n huỳnh quang, phơi nắng nhẹ buổi s&aacute;ng 3 lần/tuần</li>
	<li><em>Nhiệt độ</em>: th&iacute;ch hợp nhất l&agrave; 18-30 độ C. Nhiệt độ qu&aacute; thấp hoặc qu&aacute; cao sẽ rụng l&aacute;, dễ chết</li>
	<li><em>Độ ẩm</em>: khoảng 80%</li>
	<li><em>Tỉa c&acirc;y</em>: bấm ngọn&nbsp;bằng c&aacute;ch ngắt bỏ 2 &ndash; 3cm tr&ecirc;n ngọn của th&acirc;n ch&iacute;nh sẽ gi&uacute;p c&acirc;y ph&aacute;t triển tốt hơn. Thường xuy&ecirc;n sử dụng khăn lau sạch l&aacute;, cắt bỏ l&aacute; gi&agrave; để loại bỏ mầm bệnh s&acirc;u cuốn l&aacute;</li>
	<li><em>B&oacute;n ph&acirc;n</em>: b&oacute;n điều độ h&agrave;ng th&aacute;ng bằng c&aacute;ch 1 - 2 ch&eacute;n ph&acirc;n chuồng hoại mục hoặc NPK bằng c&aacute;ch v&ugrave;i xuống gốc c&aacute;ch giữa gốc v&agrave; chậu</li>
</ul>
', N'123', 690000, 17, 679000, N'Cây Trường Sinh', N'Cây Trường Sinh', 1, CAST(N'2084-08-08 18:25:09.000' AS DateTime), 20, CAST(N'2084-08-08 18:25:23.987' AS DateTime), 20)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (29, N'Cây Trầu Bà Đế Vương Đỏ', N'cay-trau-ba-de-vuong-do', 8, N'cay-trau-ba-de-vuong-do.jpg', NULL, 1, 1, N'<p><strong>C&acirc;y Trầu B&agrave; Đế Vương đỏ</strong>&nbsp;với vẻ đẹp sang trọng của m&igrave;nh, thể hiện tinh thần đế vương, quyền uy... th&iacute;ch hợp cho người quản l&yacute;, l&atilde;nh đạo trong một tổ chức. T&ecirc;n c&acirc;y cũng g&oacute;p phần thể hiện &yacute; ch&iacute; kh&ocirc;ng ngừng nỗ lực để hướng tới vị tr&iacute; cao hơn.</p>
', N'<p><strong>Giới thiệu c&acirc;y Trầu B&agrave; Đế Vương Đỏ</strong></p>

<ul>
	<li>T&ecirc;n th&ocirc;ng thường: Trầu B&agrave; Đế Vương Đỏ</li>
	<li>T&ecirc;n tiếng Anh: Philodendron Imperial Red</li>
	<li>T&ecirc;n khoa học: Philodendron</li>
	<li>Họ: Araceae (R&aacute;y)</li>
	<li>Chiều cao: 30 &ndash; 50cm t&iacute;nh cả chậu</li>
</ul>

<p><strong>Đặc điểm</strong></p>

<ul>
	<li>L&agrave; c&acirc;y th&acirc;n thảo, l&aacute; lớn, thu&ocirc;n nhọn đầu, tim s&acirc;u ở gốc, l&aacute; non m&agrave;u đỏ t&iacute;a, l&aacute; gi&agrave; m&agrave;u lục t&iacute;a, cuống d&agrave;i m&agrave;u đỏ t&iacute;m đậm, gốc c&oacute; bẹ &ocirc;m th&acirc;n. C&acirc;y c&oacute; nhiều rễ kh&iacute; sinh.</li>
	<li>C&oacute; hoa, cụm hoa dạng mo nhỏ tr&ecirc;n cuống.</li>
	<li>C&acirc;y được trồng từ 5-6 th&aacute;ng sẽ cho chiều cao trung b&igrave;nh 30-35 cm, từ 6-8 l&aacute;&nbsp;</li>
</ul>

<p><strong>&Yacute; nghĩa phong thuỷ</strong></p>

<ul>
	<li>Trầu b&agrave; đế vương đỏ với vẻ đẹp sang trọng của m&igrave;nh, thể hiện tinh thần đế vương, quyền uy... th&iacute;ch hợp cho người quản l&yacute;, l&atilde;nh đạo trong một tổ chức.</li>
	<li>T&ecirc;n c&acirc;y cũng g&oacute;p phần thể hiện &yacute; ch&iacute; kh&ocirc;ng ngừng nỗ lực để hướng tới vị tr&iacute; cao hơn.</li>
	<li>Trầu b&agrave; đế vương được xem như mang đến nhiều t&agrave;i lộc v&agrave; may mắn cho gia chủ. Với c&aacute;i t&ecirc;n đầy quyền uy của m&igrave;nh, trầu b&agrave; sẽ gi&uacute;p gia chủ tr&aacute;nh xa những điều kh&ocirc;ng may mắn, thị phi trong cuộc sống h&agrave;ng ng&agrave;y.</li>
	<li>Chậu c&acirc;y Trầu b&agrave; đế vương đỏ thường được d&ugrave;ng đặt ở b&agrave;n l&agrave;m việc hoặc trong văn ph&ograve;ng tạo sự thư th&aacute;i v&agrave; kh&iacute;ch lễ tinh thần nỗ lực l&agrave;m việc.</li>
	<li>C&acirc;y hợp với người c&oacute; mệnh Hoả hoặc Thổ. Về tuổi th&igrave; hợp tuổi Ngọ.</li>
</ul>

<p><strong>C&ocirc;ng dụng</strong></p>

<ul>
	<li>Trầu b&agrave; đế vương đỏ với m&agrave;u l&aacute; đậm ấn tượng, l&agrave; c&acirc;y cảnh để b&agrave;n ho&agrave;n hảo cho việc tạo ra cảm gi&aacute;c tươi m&aacute;t v&agrave; bắt mắt.</li>
	<li>L&agrave; nh&agrave; v&ocirc; địch trong c&aacute;c c&acirc;y nội thất hấp thụ kh&iacute; độc, l&agrave; một chiếc m&aacute;y điều ho&agrave; mini thanh lọc kh&ocirc;ng kh&iacute; cho kh&ocirc;ng gian th&ecirc;m trong l&agrave;nh v&agrave; m&aacute;t mẻ.</li>
	<li>C&acirc;y ph&ugrave; hợp trang tr&iacute; quầy kệ, b&agrave;n l&agrave;m việc, b&agrave;n kh&aacute;ch, b&agrave;n tr&agrave;, kệ cửa sổ&hellip;</li>
</ul>

<p><strong>C&aacute;ch chăm s&oacute;c c&acirc;y</strong></p>

<ul>
	<li>&Aacute;nh s&aacute;ng: C&acirc;y thuộc dạng kh&ocirc;ng chịu &aacute;nh s&aacute;ng mạnh n&ecirc;n việc trồng c&acirc;y ở những nơi c&oacute; &aacute;nh s&aacute;ng trung b&igrave;nh như kh&ocirc;ng gian nội thất v&agrave; văn ph&ograve;ng l&agrave; th&iacute;ch hợp.&nbsp;Trầu b&agrave; đế vương đỏ l&agrave; c&acirc;y chịu b&oacute;ng b&aacute;n phần hoặc ho&agrave;n to&agrave;n, c&oacute; tốc độ sinh trưởng nhanh. C&acirc;y ưa th&iacute;ch kh&iacute; hậu n&oacute;ng ẩm, kỵ &aacute;nh nắng v&agrave; kh&ocirc; hạn. Nhiệt độ sinh trưởng th&iacute;ch hợp l&agrave; 17&deg;C &ndash; 28&deg;C. Độ ẩm kh&ocirc;ng kh&iacute; khoảng 70%.</li>
	<li>Nước: v&agrave;o m&ugrave;a kh&ocirc; nắng n&oacute;ng, c&oacute; thể tưới nước ng&agrave;y 1 lần. V&agrave;o m&ugrave;a mưa trời m&aacute;t mẻ c&oacute; thể 3 ng&agrave;y tưới một lần.</li>
	<li>Đất: Giữ cho đất ẩm v&agrave; tơi xốp, kh&ocirc;ng để đất bị kh&ocirc; hoặc bị &uacute;ng sẽ ảnh hưởng tới sự tươi xanh của l&aacute; v&agrave; sự ph&aacute;t triển của c&acirc;y.</li>
	<li>B&oacute;n ph&acirc;n định kỳ một th&aacute;ng một lần với liều lượng &iacute;t, c&oacute; thể sử dụng ph&acirc;n Ur&ecirc;, Ba l&aacute; xanh, NPK đều được.</li>
	<li>Thỉnh thoảng vệ sinh l&aacute; trầu b&agrave; sạch sẽ để ph&aacute;t huy tối đa khả năng hấp thu độc tố trong kh&ocirc;ng kh&iacute; của l&aacute; c&acirc;y.</li>
</ul>
', N'DB081: 47x39cm, Chậu men sứ bầu tròn có hoa văn uốn lượn, màu trắng', 780000, 30, 760000, N'Cây Trầu Bà Đế Vương Đỏ', N'Cây Trầu Bà Đế Vương Đỏ', 1, CAST(N'2084-08-08 18:26:37.297' AS DateTime), 20, CAST(N'2084-08-08 18:26:37.297' AS DateTime), 20)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (30, N'Cây Trầu Bà Cẩm Thạch', N'cay-trau-ba-cam-thach', 8, N'cay-trau-ba-cam-thach.jpg', NULL, 1, 1, N'<p><strong>Giới thiệu c&acirc;y Trầu B&agrave; Cẩm Thạch</strong></p>

<ul>
	<li>T&ecirc;n kh&aacute;c: Trầu b&agrave; sữa</li>
	<li>T&ecirc;n tiếng Anh: Australian native monstera</li>
	<li>T&ecirc;n khoa học: Epipremnum aureum &lsquo;Marble Queen&rsquo;</li>
	<li>Họ: R&aacute;y (Araceae)</li>
	<li>Xuất xứ: miền Bắc Australia, Malaisia</li>
</ul>

<p><strong>Đặc điểm</strong></p>

<ul>
	<li>C&acirc;y th&acirc;n thảo, sống l&acirc;u năm, dạng c&acirc;y leo</li>
	<li>L&aacute; h&igrave;nh tr&aacute;i tim, nhiều vệt trắng như sữa tr&ecirc;n nền l&aacute;</li>
	<li>Cuống l&aacute; d&agrave;i m&agrave;u trắng, g&acirc;n ch&iacute;nh của l&aacute; r&otilde; r&agrave;ng, m&eacute;p nguy&ecirc;n.</li>
	<li>Th&acirc;n c&acirc;y mềm mại với nhiều rễ phụ rũ xuống</li>
</ul>

<p><strong>&Yacute; nghĩa phong thủy</strong></p>

<ul>
	<li>Tượng trưng cho may mắn, th&agrave;nh đạt v&agrave; b&igrave;nh an.</li>
</ul>

<p><strong>C&ocirc;ng dụng</strong></p>

<ul>
	<li>H&uacute;t kh&iacute; độc, l&agrave;m kh&ocirc;ng kh&iacute; trong l&agrave;nh</li>
	<li>Giảm bức xạ m&aacute;y t&iacute;nh</li>
	<li>Trang tr&iacute; qu&aacute;n cafe, tiểu cảnh giếng trời, gi&agrave;n treo s&acirc;n thượng, trang tr&iacute; văn ph&ograve;ng l&agrave;m việc,&hellip;</li>
</ul>

<p><strong>C&aacute;ch trồng</strong></p>

<ul>
	<li>C&acirc;y dễ chăm s&oacute;c, l&agrave; loại c&acirc;y chịu b&oacute;ng v&agrave; b&aacute;n b&oacute;ng r&acirc;m, c&oacute; tốc độ ph&aacute;t triển nhanh</li>
	<li>&Aacute;nh s&aacute;ng: kh&ocirc;ng chịu được &aacute;nh nắng gay gắt</li>
	<li>Đất: giữ ẩm tốt Nhiệt độ: ph&aacute;t triển tốt ở nhiệt độ 18-25&deg;C.</li>
	<li>Nước: nhu cầu nước tương đối cao, cần tưới 2 lần/ng&agrave;y để gi&uacute;p c&acirc;y lu&ocirc;n tươi sắc</li>
</ul>
', N'<p>C&acirc;y Trầu B&agrave; Cẩm Thạch tượng trưng cho may mắn, th&agrave;nh đạt v&agrave; b&igrave;nh an, th&iacute;ch hợp trang tr&iacute; qu&aacute;n cafe, văn ph&ograve;ng l&agrave;m việc,&hellip;</p>
', N'DB084 (ảnh 1): 24x20cm; Chậu sứ xanh lam đậm, cong; 220.000đ
', 690000, 30, 680000, N'Cây Trầu Bà Cẩm Thạch
', N'Cây Trầu Bà Cẩm Thạch
', 1, CAST(N'2084-08-08 18:29:17.680' AS DateTime), 20, CAST(N'2084-08-08 18:29:17.680' AS DateTime), 20)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (31, N'Cây Vạn Lộc thuỷ sinh', N'cay-van-loc-thuy-sinh', 9, N'cay-van-loc-thuy-sinh.jpg', NULL, 1, 2, N'<p><strong>Giới thiệu c&acirc;y Vạn lộc thuỷ sinh</strong></p>

<ul>
	<li>T&ecirc;n thường gọi: Vạn lộc</li>
	<li>T&ecirc;n kh&aacute;c:&nbsp;Thi&ecirc;n Ph&uacute;</li>
	<li>T&ecirc;n khoa học:&nbsp;Aglaonema rotundum pink</li>
	<li>Họ:&nbsp;Araceae</li>
	<li>Xuất xứ: Th&aacute;i Lan,&nbsp;Indonesia</li>
</ul>

<p><strong>Đặc điểm</strong></p>

<ul>
	<li>L&agrave; c&acirc;y th&acirc;n thảo, c&oacute; l&aacute; m&agrave;u hồng đậm khi gi&agrave;, l&aacute; non m&agrave;u hồng nhạt,&nbsp;c&oacute; rễ ch&ugrave;m, dễ sống v&agrave; chăm s&oacute;c.</li>
	<li>Hoa m&agrave;u trắng, c&oacute; rễ tr&ugrave;m n&ecirc;n rất dễ sống v&agrave; chăm s&oacute;c.</li>
</ul>

<p><strong>&Yacute; nghĩa phong thuỷ</strong></p>

<ul>
	<li>Mang đến t&agrave;i lộc v&agrave; may mắn</li>
	<li>C&acirc;y vốn hợp mệnh Hoả, nhưng do trồng thuỷ sinh n&ecirc;n mệnh n&agrave;y hạn chế trồng.</li>
</ul>

<p><strong>C&ocirc;ng dụng</strong></p>

<ul>
	<li>Thanh lọc kh&ocirc;ng kh&iacute;, hấp thụ c&aacute;c chất hữu cơ g&acirc;y bệnh</li>
	<li>Ph&ugrave; hợp để b&agrave;n l&agrave;m việc, b&agrave;n uống nước, trang tr&iacute; qu&aacute;n c&agrave; ph&ecirc;</li>
</ul>

<p><strong>C&aacute;ch chăm s&oacute;c</strong></p>

<ul>
	<li>&Aacute;nh s&aacute;ng: ưa m&aacute;t, th&iacute;ch &aacute;nh s&aacute;ng nhẹ buổi s&aacute;ng sớm v&agrave; chiều muộn, th&iacute;ch hợp để cạnh cửa sổ, thoảng cho ra ngo&agrave;i nắng để m&agrave;u c&acirc;y tốt hơn.</li>
	<li>Nước: thay nước 1 lần / tuần. Với nước m&aacute;y th&igrave; n&ecirc;n đổ ra x&ocirc;, thau phơi ngo&agrave;i s&aacute;ng khoảng 3 giờ rồi h&atilde;y tiến h&agrave;nh thay nước. Khi lấy c&acirc;y ra khỏi chậu th&igrave; cẩn thận l&agrave;m đứt bộ rễ.</li>
	<li>Ph&acirc;n b&oacute;n: sử dụng c&aacute;c loại dung dịch ph&ugrave; hợp với c&acirc;y thuỷ sinh, tần suất cho dung dịch v&agrave;o nước phải tu&acirc;n theo khuyến c&aacute;o in tr&ecirc;n chai.</li>
	<li>&Aacute;nh s&aacute;ng: kh&ocirc;ng n&ecirc;n để dưới &aacute;nh s&aacute;ng trực tiếp qu&aacute; l&acirc;u, nếu để li&ecirc;n tục nhiều giờ trong ph&ograve;ng th&igrave; n&ecirc;n chủ động đặt ra ngo&agrave;i tầm 30-60 ph&uacute;t mỗi ng&agrave;y</li>
</ul>
', N'<p><strong>C&acirc;y Vạn Lộc thủy sinh&nbsp;</strong>mang đến vẻ đẹp sang trọng, bắt mắt. C&acirc;y gi&uacute;p gia chủ th&ecirc;m t&agrave;i lộc, may mắn</p>

<ul>
</ul>
', N'TS011: 30x50cm; Chậu thủy tinh, đáy bầu, vành miệng hẹp
TS012: Chậu thủy tinh hình ly sang trọng, có đế chắc chắn', 690000, 20, 670000, N'Cây Vạn Lộc thuỷ sinh
', N'Cây Vạn Lộc thuỷ sinh
', 1, CAST(N'2084-08-08 18:53:52.410' AS DateTime), 20, CAST(N'2084-08-08 18:53:52.410' AS DateTime), 20)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (32, N'Cây Trầu Bà Vàng thuỷ sinh', N'cay-trau-ba-vang-thuy-sinh', 9, N'cay-trau-ba-vang-thuy-sinh.jpg', NULL, 1, 2, N'<p><strong>Giới thiệu c&acirc;y Trầu B&agrave; V&agrave;ng</strong></p>

<ul>
	<li>T&ecirc;n kh&aacute;c: Trầu B&agrave; Th&aacute;i</li>
	<li>T&ecirc;n khoa học: Philodendron erubescens &lsquo;gold&rsquo;</li>
	<li>Họ: Araceae (họ r&aacute;y)</li>
</ul>

<p><strong>Đặc điểm</strong></p>

<ul>
	<li>L&agrave; c&acirc;y th&acirc;n thảo, c&oacute; rễ kh&iacute; sinh, th&acirc;n tr&ograve;n, mọng nước.</li>
	<li>L&aacute; đơn, m&agrave;u xanh v&agrave;ng s&aacute;ng đẹp v&agrave; cuống m&agrave;u hồng nhạt. L&aacute; c&acirc;y c&oacute; dạng thu&ocirc;n d&agrave;i nhọn ở đỉnh, h&igrave;nh tim ở gốc.</li>
	<li>C&acirc;y c&oacute; hoa, quả v&agrave; hạt.</li>
</ul>

<p><strong>&Yacute; nghĩa phong thủy</strong></p>

<ul>
	<li>Mang &yacute; nghĩa về sự th&agrave;nh đạt, thăng tiến trong c&ocirc;ng danh sự nghiệp</li>
	<li>Lời ch&uacute;c mọi sự b&igrave;nh an</li>
</ul>

<p><strong>C&ocirc;ng dụng</strong></p>

<ul>
	<li>Thường d&ugrave;ng để trang tr&iacute; văn ph&ograve;ng, b&agrave;n l&agrave;m việc, c&acirc;y c&oacute; thể trồng chậu đứng, chậu đất để b&agrave;n, chậu treo hay trồng trong chậu thủy tinh.</li>
	<li>L&agrave;m c&acirc;y trồng viền, c&acirc;y trồng nền cảnh quan dưới c&aacute;c ch&acirc;n cầu. Hoặc l&agrave;m tường c&acirc;y.</li>
	<li>Thanh lọc kh&ocirc;ng kh&iacute;, loại bỏ c&aacute;c kh&iacute; độc hại v&agrave; c&aacute;c chất &ocirc; nhiễm.</li>
	<li>L&agrave;m qu&agrave; tặng gi&agrave;u &yacute; nghĩa cho bạn b&egrave;, người quen</li>
</ul>

<p><strong>C&aacute;ch chăm s&oacute;c</strong></p>

<ul>
	<li>&Aacute;nh s&aacute;ng: c&acirc;y ưa b&oacute;ng b&aacute;n phần, c&oacute; thể sống trong m&aacute;t một thời gian d&agrave;i miễn cung cấp đủ nước. Tuy nhi&ecirc;n cũng cần mang c&acirc;y ra ngo&agrave;i nắng để l&aacute; đẹp v&agrave; rực m&agrave;u hơn, để trong ph&ograve;ng k&iacute;n sẽ l&agrave;m l&aacute; c&acirc;y nhạt m&agrave;u.</li>
	<li>Nhiệt độ: c&acirc;y sợ lạnh, y&ecirc;u cầu nhiệt độ cao, th&iacute;ch hợp nhất l&agrave; v&agrave;o khoảng 18-25 độ C.</li>
	<li>Nước: c&acirc;y h&aacute;o nước, ưa ẩm, cần tưới thường xuy&ecirc;n nhưng tr&aacute;nh để c&acirc;y bị ngập &uacute;ng qu&aacute; l&acirc;u, sẽ dẫn đến thối rễ v&agrave; v&agrave;ng l&aacute;.</li>
	<li>Đất: đất m&agrave;u mỡ, nhiều dinh dưỡng, ẩm v&agrave; tho&aacute;t nước tốt.</li>
	<li>Ph&acirc;n b&oacute;n: n&ecirc;n định kỳ b&oacute;n bằng ph&acirc;n lỏng hoặc ph&acirc;n đạm v&ocirc; cơ để l&aacute; c&acirc;y mọc khỏe v&agrave; đẹp m&agrave;u.</li>
</ul>
', N'<p><strong>C&acirc;y Trầu B&agrave; V&agrave;ng thuỷ sinh</strong>&nbsp;mang &yacute; nghĩa về sự th&agrave;nh đạt, thăng tiến trong c&ocirc;ng danh sự nghiệp, l&agrave; lời ch&uacute;c mọi sự b&igrave;nh an, th&iacute;ch hợp trang tr&iacute; văn ph&ograve;ng, b&agrave;n l&agrave;m việc.</p>
', N'123', 740000, 30, 690000, N'Cây Trầu Bà Vàng thuỷ sinh
', N'Cây Trầu Bà Vàng thuỷ sinh
', 1, CAST(N'2084-08-08 18:55:40.643' AS DateTime), 20, CAST(N'2084-08-08 18:55:40.643' AS DateTime), 20)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (33, N'Cây Trầu Bà Đế Vương Đỏ thuỷ sinh', N'cay-trau-ba-de-vuong-do-thuy-sinh', 9, N'cay-trau-ba-de-vuong-do-thuy-sinh.jpg', NULL, 1, 2, N'<p><strong>Giới thiệu c&acirc;y Trầu B&agrave; Đế Vương Đỏ thuỷ sinh</strong></p>

<ul>
	<li>T&ecirc;n th&ocirc;ng thường: Trầu B&agrave; Đế Vương Đỏ</li>
	<li>T&ecirc;n khoa học: Philodendron Imperial Red</li>
	<li>Họ: Araceae (R&aacute;y)</li>
	<li>Chiều cao: 30 &ndash; 50cm t&iacute;nh cả chậu</li>
</ul>

<p><strong>Đặc điểm</strong></p>

<ul>
	<li>C&acirc;y th&acirc;n thảo, l&aacute; lớn, thu&ocirc;n nhọn đầu, tim s&acirc;u ở gốc, l&aacute; non m&agrave;u đỏ t&iacute;a, l&aacute; gi&agrave; m&agrave;u lục t&iacute;a, cuống d&agrave;i m&agrave;u đỏ t&iacute;m đậm, gốc c&oacute; bẹ &ocirc;m th&acirc;n. C&acirc;y c&oacute; nhiều rễ kh&iacute; sinh.</li>
	<li>C&oacute; hoa, cụm hoa dạng mo nhỏ tr&ecirc;n cuống.</li>
	<li>C&acirc;y được trồng từ 5-6 th&aacute;ng sẽ cho chiều cao trung b&igrave;nh 30-35 cm, từ 6-8 l&aacute;&nbsp;</li>
</ul>

<p><strong>&Yacute; nghĩa phong thuỷ</strong></p>

<ul>
	<li>C&acirc;y c&oacute; vẻ đẹp sang trọng thể hiện tinh thần đế vương, quyền uy... th&iacute;ch hợp cho người quản l&yacute;, l&atilde;nh đạo trong một tổ chức.</li>
	<li>T&ecirc;n c&acirc;y cũng thể hiện &yacute; ch&iacute; kh&ocirc;ng ngừng nỗ lực để hướng tới vị tr&iacute; cao hơn.</li>
	<li>C&acirc;y c&ograve;n mang lại nhiều t&agrave;i lộc v&agrave; may mắn cho gia chủ, gi&uacute;p tr&aacute;nh xa những điều kh&ocirc;ng may, thị phi trong cuộc sống h&agrave;ng ng&agrave;y.</li>
	<li>C&acirc;y vốn ph&ugrave; hợp với người mệnh Hoả do sắc l&aacute;, th&acirc;n đỏ rực, nhưng v&igrave; trồng thuỷ sinh n&ecirc;n mệnh n&agrave;y hạn chế.&nbsp;</li>
</ul>

<p><strong>C&ocirc;ng dụng</strong></p>

<ul>
	<li>Trầu B&agrave; Đế Vương Đỏ với m&agrave;u l&aacute; đậm ấn tượng, l&agrave; c&acirc;y cảnh để b&agrave;n ho&agrave;n hảo cho việc tạo ra cảm gi&aacute;c tươi m&aacute;t v&agrave; bắt mắt.</li>
	<li>L&agrave; nh&agrave; v&ocirc; địch trong c&aacute;c c&acirc;y nội thất hấp thụ kh&iacute; độc, l&agrave; một chiếc m&aacute;y điều ho&agrave; mini thanh lọc kh&ocirc;ng kh&iacute; cho kh&ocirc;ng gian th&ecirc;m trong l&agrave;nh v&agrave; m&aacute;t mẻ.</li>
	<li>C&acirc;y ph&ugrave; hợp trang tr&iacute; quầy kệ, b&agrave;n l&agrave;m việc, b&agrave;n kh&aacute;ch, b&agrave;n tr&agrave;, kệ cửa sổ&hellip;mang lại sự thư th&aacute;i v&agrave; kh&iacute;ch lệ tinh thần l&agrave;m việc.</li>
</ul>

<p><strong>C&aacute;ch chăm s&oacute;c c&acirc;y</strong></p>

<ul>
	<li>&Aacute;nh s&aacute;ng: kh&ocirc;ng th&iacute;ch &aacute;nh s&aacute;ng mạnh n&ecirc;n trồng ở nơi c&oacute; &aacute;nh s&aacute;ng trung b&igrave;nh như kh&ocirc;ng gian nội thất v&agrave; văn ph&ograve;ng l&agrave; th&iacute;ch hợp.</li>
	<li>Nhiệt độ: th&iacute;ch hợp l&agrave; 17-28 độ C.</li>
	<li>Độ ẩm: khoảng 70%.</li>
	<li>Nước: thay nước định k&igrave;, tuần 1 lần.</li>
	<li>Thỉnh thoảng vệ sinh l&aacute; trầu b&agrave; sạch sẽ để ph&aacute;t huy tối đa khả năng hấp thu độc tố trong kh&ocirc;ng kh&iacute; của l&aacute; c&acirc;y</li>
</ul>
', N'<p><strong>C&acirc;y Trầu B&agrave; Đế Vương đỏ thủy sinh</strong>&nbsp;mang vẻ đẹp của sự sang trọng, quyền uy, th&iacute;ch hợp d&agrave;nh để trang tr&iacute; nơi b&agrave;n l&agrave;m việc của sếp, quản l&yacute;, l&atilde;nh đạo, gi&uacute;p c&ocirc;ng việc thăng tiến, thuận lợi hơn.</p>

<ul>
</ul>
', N'TS010: Chậu thủy tinh đáy bầu, vành miệng hẹp
', 690000, 20, 670000, N'Cây Trầu Bà Đế Vương Đỏ thuỷ sinh
', N'Cây Trầu Bà Đế Vương Đỏ thuỷ sinh
', 1, CAST(N'2084-08-08 18:57:09.000' AS DateTime), 20, CAST(N'2084-08-08 18:57:18.050' AS DateTime), 20)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (34, N'Cây Xương Rồng Xanh', N'cay-xuong-rong-xanh', 10, N'cay-xuong-rong-xanh.jpg', NULL, 1, 2, N'<p><strong>Giới thiệu c&acirc;y Xương Rồng Xanh</strong></p>

<ul>
	<li>T&ecirc;n kh&aacute;c: Tai Thỏ Xanh</li>
	<li>Xương rồng xanh nổi bật bởi d&aacute;ng vẻ nhỏ nhắn, l&agrave; một h&igrave;nh ảnh thu nhỏ của c&aacute;c loại xương rồng lớn ngo&agrave;i tự nhi&ecirc;n.</li>
</ul>

<p><strong>Đặc điểm</strong></p>

<ul>
	<li>Th&acirc;n c&acirc;y xanh, c&oacute; gai mọc thưa chứ kh&ocirc;ng d&agrave;y đặc như c&aacute;c loại xương rồng kh&aacute;c.</li>
	<li>Từ th&acirc;n ch&iacute;nh mọc ra nhiều l&aacute; con c&oacute; k&iacute;ch cỡ lớn nhỏ kh&aacute;c nhau.</li>
	<li>Nở hoa m&agrave;u t&iacute;m to bằng đầu ng&oacute;n tay &uacute;t, một c&acirc;y c&oacute; thể ra 2,3 hoa 1 l&uacute;c.</li>
</ul>

<p><strong>&Yacute; nghĩa phong thủy</strong></p>

<ul>
	<li>C&acirc;y tượng trưng cho sự bền chặt, l&acirc;u d&agrave;i trong t&igrave;nh bạn, t&igrave;nh y&ecirc;u Đại diện cho sự kh&ocirc;ng ngừng cố gắng vươn l&ecirc;n, tạo năng lượng t&iacute;ch cực trong cuộc sống</li>
</ul>

<p><strong>C&ocirc;ng dụng</strong></p>

<ul>
	<li>Trang tr&iacute; b&agrave;n l&agrave;m việc, gia tăng hứng khởi, gi&uacute;p tinh thần thoải m&aacute;i</li>
	<li>Qu&agrave; tặng &yacute; nghĩa cho bạn b&egrave;, người quen</li>
</ul>

<p><strong>C&aacute;ch trồng</strong></p>

<ul>
	<li>Đất: sử dụng hỗn hợp đất thường trồng cho c&aacute;c loại xương rồng, sen đ&aacute;</li>
	<li>Nước: tưới &iacute;t nước, 8-10 ng&agrave;y tưới 1 lần, tưới xa gốc, kh&ocirc;ng tưới trực tiếp l&ecirc;n th&acirc;n</li>
</ul>

<ul>
</ul>
', N'<p><strong>C&acirc;y Xương Rồng Xanh</strong>&nbsp;tượng trưng cho sự bền chặt, l&acirc;u d&agrave;i trong t&igrave;nh bạn, t&igrave;nh y&ecirc;u. Đại diện cho sự kh&ocirc;ng ngừng cố gắng vươn l&ecirc;n, tạo năng lượng t&iacute;ch cực trong cuộc sống.</p>
', N'Ảnh 1: Chậu đất nung, trắng; 127.000đ
', 690000, 20, 670000, N'Cây Xương Rồng Xanh
', N'Cây Xương Rồng Xanh
', 1, CAST(N'2084-08-08 18:59:38.927' AS DateTime), 20, CAST(N'2084-08-08 18:59:38.927' AS DateTime), 20)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (35, N'Cây Xương Rồng Vạn Lý Trường Thành', N'cay-xuong-rong-van-ly-truong-thanh', 10, N'cay-xuong-rong-van-ly-truong-thanh.jpg', NULL, 1, 2, N'<p><strong>Giới thiệu c&acirc;y Xương rồng Vạn l&yacute; trường th&agrave;nh</strong></p>

<ul>
	<li>T&ecirc;n kh&aacute;c: Vạn l&yacute; trường th&agrave;nh</li>
	<li>T&ecirc;n tiếng Anh: Frilled Fan Crested</li>
	<li>T&ecirc;n khoa học: Euphorbia lactea cristata</li>
	<li>Họ: Xương Rồng (Euphobia)</li>
	<li>Xuất xứ: Trung Quốc</li>
</ul>

<p><strong>Đặc điểm</strong></p>

<ul>
	<li>L&agrave; c&acirc;y th&acirc;n thẳng c&oacute; gai, th&acirc;n tr&ecirc;n x&ograve;e như c&aacute;nh quạt, uốn lượn như d&atilde;y vạn l&yacute; trường th&agrave;nh</li>
	<li>Thường c&oacute; m&agrave;u sắc hồng thẫm pha trắng.</li>
	<li>Th&acirc;n dưới mọng nước, nhưng kh&ocirc;ng c&oacute; hoa.</li>
	<li>Tốc độ sinh trưởng trung b&igrave;nh</li>
</ul>

<p><strong>&Yacute; nghĩa phong thủy</strong></p>

<ul>
	<li>Biểu trưng cho sự vững chải, trường tồn theo thời gian</li>
</ul>

<p><strong>C&ocirc;ng dụng</strong></p>

<ul>
	<li>Trồng trong chậu l&agrave;m c&acirc;y nội thất, trang tr&iacute; ngoại cảnh, thường bố tr&iacute; ở ph&ograve;ng kh&aacute;ch hoặc h&agrave;nh lang</li>
</ul>

<p><strong>C&aacute;ch trồng</strong></p>

<ul>
	<li>Nước: c&acirc;y c&oacute; nhu cầu nước vừa phải, giai đoạn bắt đầu đẻ nh&aacute;nh cần nước nhiều nhất. Tưới nước 1-2 lần / tuần</li>
	<li>Đất: đất ẩm, kh&ocirc;ng qu&aacute; kh&ocirc;</li>
	<li>B&oacute;n ph&acirc;n: một th&aacute;ng b&oacute;n ph&acirc;n 1 lần quanh gốc c&acirc;y</li>
</ul>
', N'<p><strong>C&acirc;y Xương Rồng Vạn L&yacute; Trường Th&agrave;n</strong><strong>h</strong>&nbsp;biểu trưng cho sự vững chải, trường tồn theo thời gian, thường trồng trong chậu l&agrave;m c&acirc;y nội thất, trang tr&iacute; ngoại cảnh, bố tr&iacute; ở ph&ograve;ng kh&aacute;ch hoặc h&agrave;nh lang.</p>

<ul>
</ul>
', N'SD086: 12x26cm; Chậu sứ trắng, trụ tròn, vân hình mắt, thẳng; 175.000đ
Ảnh 3,4: Chậu sức trắng, sọc ngang đen; 165.000đ', 670000, 30, 660000, N'Cây Xương Rồng Vạn Lý Trường Thành
', N'Cây Xương Rồng Vạn Lý Trường Thành
', 1, CAST(N'2084-08-08 19:00:51.280' AS DateTime), 20, CAST(N'2084-08-08 19:00:51.280' AS DateTime), 20)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (36, N'Cây Xương Rồng Trứng Chim', N'cay-xuong-rong-trung-chim', 10, N'cay-xuong-rong-trung-chim.jpg', NULL, 1, 2, N'<p><strong>Giới thiệu c&acirc;y Xương rồng trứng chim</strong></p>

<ul>
	<li>T&ecirc;n kh&aacute;c: xương rồng tuyết, xương rồng nhện trắng</li>
	<li>T&ecirc;n khoa học: Mammillaria gracilis fragilis</li>
	<li>Họ: xương rồng tiểu</li>
</ul>

<p><strong>Đặc điểm</strong></p>

<ul>
	<li>Th&acirc;n h&igrave;nh trụ, mọng nước nhiều c&acirc;y con &ocirc;m lấy th&acirc;n c&acirc;y mẹ</li>
	<li>C&oacute; một lớp gai nhỏ m&agrave;u trắng bao phủ kh&aacute; k&iacute;n để bảo vệ c&acirc;y tr&ocirc;ng như nhện</li>
	<li>Hoa nhỏ m&agrave;u trắng, v&agrave;ng hoặc đỏ</li>
	<li>Rễ ch&ugrave;m nhỏ 1 năm ra hoa 4 lần, thường c&acirc;y được 1 tuổi sẽ ra hoa</li>
</ul>

<p><strong>&Yacute; nghĩa phong thủy</strong></p>

<ul>
	<li>Tượng trưng cho sự thuỷ chung, son sắt trong t&igrave;nh bạn, t&igrave;nh y&ecirc;u</li>
	<li>Xua đuổi t&agrave; ma, h&uacute;t tia điện tử cho người thường xuy&ecirc;n l&agrave;m việc m&aacute;y t&iacute;nh, bảo vệ sức khoẻ</li>
</ul>

<p><strong>C&ocirc;ng dụng</strong></p>

<ul>
	<li>Trang tr&iacute; b&agrave;n l&agrave;m việc, tiểu cảnh terrarium</li>
</ul>

<p><strong>C&aacute;ch trồng</strong></p>

<ul>
	<li>&Aacute;nh s&aacute;ng: chịu được nắng trực tiếp, nếu để trong văn ph&ograve;ng th&igrave; 2 -3 ng&agrave;y n&ecirc;n tắm nắng 1 lần</li>
	<li>Nước: tưới 1 tuần một lần, nếu thời tiết ấm đừng n&ecirc;n tưới nhiều. &Uacute;ng nước c&oacute; thể chết ngay.</li>
	<li>Đất: chọn đất c&oacute; khả năng tho&aacute;t nước tốt v&agrave; tơi xốp.</li>
</ul>
', N'<p><strong>C&acirc;y Xương Rồng Trứng Chim</strong>&nbsp;tượng trưng cho sự thuỷ chung, son sắt trong t&igrave;nh bạn, t&igrave;nh y&ecirc;u. C&acirc;y c&ograve;n xua đuổi t&agrave; ma, h&uacute;t tia điện tử cho người thường xuy&ecirc;n l&agrave;m việc m&aacute;y t&iacute;nh, bảo vệ sức khoẻ.</p>

<ul>
</ul>
', N'SD085: 7x10cm; Chậu sứ trắng, trụ tròn, vân ngang; 55.000đ
', 700000, 30, 670000, N'Cây Xương Rồng Trứng Chim
', N'Cây Xương Rồng Trứng Chim
', 1, CAST(N'2084-08-08 19:01:58.463' AS DateTime), 20, CAST(N'2084-08-08 19:01:58.463' AS DateTime), 20)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (37, N'Đế lót chậu đất nung trắng 8 cm', N'de-lot-chau-dat-nung-trang-8-cm', 11, N'de-lot-chau-dat-nung-trang-8-cm.png', NULL, 1, 2, N'<p>Chưa c&oacute; chi tiết</p>
', N'<p>Đường k&iacute;nh:&nbsp; 8 cm</p>

<p>M&agrave;u sắc:&nbsp; &nbsp; &nbsp; &nbsp;Trắng</p>

<p>Chất liệu:&nbsp; &nbsp; &nbsp; Đất nung</p>

<p>Kiểu d&aacute;ng:&nbsp; &nbsp; Dĩa tr&ograve;n thấp</p>

<p>D&agrave;nh cho chậu 7cm, 9cm</p>
', N'123', 510000, 10, 507000, N'Đế lót chậu đất nung trắng 8 cm
', N'Đế lót chậu đất nung trắng 8 cm
', 1, CAST(N'2084-08-08 19:05:08.083' AS DateTime), 20, CAST(N'2084-08-08 19:05:08.083' AS DateTime), 20)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (38, N'Đế lót chậu đất nung đỏ 8 cm', N'de-lot-chau-dat-nung-do-8-cm', 11, N'de-lot-chau-dat-nung-do-8-cm.png', NULL, 1, 2, N'<p>Chưa co chi tiết</p>
', N'<p>Đường k&iacute;nh:&nbsp; 8 cm</p>

<p>M&agrave;u sắc:&nbsp; &nbsp; &nbsp; &nbsp;Đỏ</p>

<p>Chất liệu:&nbsp; &nbsp; &nbsp; Đất nung</p>

<p>Kiểu d&aacute;ng:&nbsp; &nbsp; Dĩa tr&ograve;n thấp</p>

<p>D&agrave;nh cho chậu 7cm, 9cm</p>
', N'123', 510000, 10, 508000, N'Đế lót chậu đất nung đỏ 8 cm
', N'Đế lót chậu đất nung đỏ 8 cm
', 1, CAST(N'2084-08-08 19:05:57.457' AS DateTime), 20, CAST(N'2084-08-08 19:05:57.457' AS DateTime), 20)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (39, N'Chậu đất nung trắng 5x5', N'chau-dat-nung-trang-5x5', 11, N'chau-dat-nung-trang-5x5.jpg', NULL, 1, 2, N'<p>K&iacute;ch thước:&nbsp; &nbsp;5x5 cm</p>

<p>M&agrave;u sắc:&nbsp; &nbsp; &nbsp; &nbsp;Trắng</p>

<p>Chất liệu:&nbsp; &nbsp; &nbsp; Đất nung</p>

<p>Kiểu d&aacute;ng:&nbsp; &nbsp; Trụ tr&ograve;n v&aacute;t</p>

<p>&nbsp;</p>

<p><a href="https://vuoncayviet.com/chuyen-muc/chau-dat-nung.html" target="_blank">Chậu đất nung</a>&nbsp;l&agrave;m bằng chất liệu đất nung B&aacute;t Tr&agrave;ng nhỏ nhắn xinh xắn th&iacute;ch hợp trồng sen đ&aacute; xương rồng tiểu cảnh<br />
- Chậu được l&agrave;m từ chất liệu đất nung, c&oacute; khả năng h&uacute;t nước tốt, gi&uacute;p c&acirc;y kh&ocirc;ng bị &uacute;ng nước.<br />
- Với h&igrave;nh dạng v&agrave; m&agrave;u sắc chậu v&ocirc; c&ugrave;ng đa dạng, rất th&iacute;ch hợp để trồng c&aacute;c c&acirc;y cảnh văn ph&ograve;ng, c&acirc;y cảnh để b&agrave;n, c&acirc;y cảnh mini, tiểu cảnh sen đ&aacute;, xương rồng, trang tr&iacute; b&agrave;n l&agrave;m việc, b&agrave;n học.</p>

<p>- Đ&aacute;y chậu c&oacute; lỗ tho&aacute;t nước.&nbsp;<br />
- Cam kết sản phẩm giống như h&igrave;nh&nbsp;<br />
- Sản phẩm 100% thủ c&ocirc;ng mỹ nghệ của l&agrave;ng gốm cổ truyền B&aacute;t Tr&agrave;ng.<br />
- Gi&aacute; rẻ tận l&ograve; nung</p>
', N'<p>K&iacute;ch thước:&nbsp; &nbsp;5x5 cm</p>

<p>M&agrave;u sắc:&nbsp; &nbsp; &nbsp; &nbsp;Trắng</p>

<p>Chất liệu:&nbsp; &nbsp; &nbsp; Đất nung</p>

<p>Kiểu d&aacute;ng:&nbsp; &nbsp; Trụ tr&ograve;n v&aacute;t</p>
', N'123', 510000, 10, 508000, N'Chậu đất nung trắng 5x5
', N'Chậu đất nung trắng 5x5
', 1, CAST(N'2084-08-08 19:07:05.650' AS DateTime), 20, CAST(N'2084-08-08 19:07:05.650' AS DateTime), 20)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (40, N'Chậu composite trụ vuông vát - CP008', N'chau-composite-tru-vuong-vat---cp008', 13, N'chau-composite-tru-vuong-vat---cp008.jpg', NULL, 1, 1, N'<p>Chưa c&oacute; chi tiết</p>
', N'<p>Kich thước:&nbsp; 32x60 cm</p>

<p>M&agrave;u sắc:&nbsp; &nbsp; &nbsp; Trắng</p>

<p>Chất liệu:&nbsp; &nbsp; &nbsp;Composite sơn b&oacute;ng</p>

<p>Kiểu d&aacute;ng:&nbsp; &nbsp;Trụ vu&ocirc;ng v&aacute;t</p>
', N'123', 1900000, 10, 1500000, N'Chậu composite trụ vuông vát - CP008
', N'Chậu composite trụ vuông vát - CP008
', 1, CAST(N'2084-08-08 19:08:40.790' AS DateTime), 20, CAST(N'2084-08-08 19:08:40.790' AS DateTime), 20)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (41, N'Chậu composite tròn đầu đạn vân sóng đứng - CP005', N'chau-composite-tron-dau-dan-van-song-dung---cp005', 13, N'chau-composite-tron-dau-dan-van-song-dung---cp005.jpg', NULL, 1, 1, N'<p>Chưa c&oacute; chi tiết</p>
', N'<p>Kich thước: 30x45 cm</p>

<p>M&agrave;u sắc:&nbsp; &nbsp; &nbsp;Trắng</p>

<p>Chất liệu:&nbsp; &nbsp; Composite sơn b&oacute;ng</p>

<p>Kiểu d&aacute;ng:&nbsp; &nbsp;H&igrave;nh tr&ograve;n giống đầu đạn, tr&ecirc;n th&acirc;n c&oacute; v&acirc;n s&oacute;ng đứng</p>
', N'123', 2500000, 10, 2300000, N'Chậu composite tròn đầu đạn vân sóng đứng - CP005
', N'Chậu composite tròn đầu đạn vân sóng đứng - CP005
', 1, CAST(N'2084-08-08 19:09:55.480' AS DateTime), 20, CAST(N'2084-08-08 19:09:55.480' AS DateTime), 20)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (42, N'Chậu composite tròn đầu đạn- CP006', N'chau-composite-tron-dau-dan--cp006', 13, N'chau-composite-tron-dau-dan--cp006.jpg', NULL, 1, 1, N'<p>Chưa c&oacute; chi tiết</p>
', N'<p>Kich thước:&nbsp; 35x55 cm</p>

<p>M&agrave;u sắc:&nbsp; &nbsp; &nbsp; Trắng</p>

<p>Chất liệu:&nbsp; &nbsp; &nbsp;Composite sơn b&oacute;ng</p>

<p>Kiểu d&aacute;ng:&nbsp; &nbsp;H&igrave;nh tr&ograve;n giống đầu đạn</p>
', N'123', 3000000, 10, 2500000, N'Chậu composite tròn đầu đạn- CP006
', N'Chậu composite tròn đầu đạn- CP006
', 1, CAST(N'2084-08-08 19:11:05.743' AS DateTime), 20, CAST(N'2084-08-08 19:11:05.743' AS DateTime), 20)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (43, N'Dung dịch Trimix-DT 100ml Kiểng thuỷ canh', N'dung-dich-trimix-dt-100ml-kieng-thuy-canh', 16, N'dung-dich-trimix-dt-100ml-kieng-thuy-canh.jpg', NULL, 1, 1, N'<p><strong>Giới thiệu</strong></p>

<ul>
	<li>Dung dịch thuỷ canh Trimix-DT Kiểng thuỷ canh l&agrave; dung dịch dinh dưỡng chuy&ecirc;n dụng d&agrave;nh cho c&aacute;c loại c&acirc;y trồng thuỷ sinh chịu m&aacute;t như Ph&uacute; qu&yacute;, Trầu b&agrave;, Ph&aacute;t t&agrave;i, Tr&uacute;c nhật, Lan &yacute;,...</li>
	<li>Thể t&iacute;ch: 100ml</li>
</ul>

<p><strong>Th&agrave;nh phần</strong></p>

<ul>
	<li>N: 6,5%; P2O5: 3%; K2O: 2%</li>
	<li>Ca: 300 ppm, Mg: 300 ppm, Mo: 100 ppm, Zn: 200 ppm, Cu: 200 ppm, Fe: 200 ppm, B: 200 ppm.</li>
	<li>NAA: 1000 ppm, GA3: 1000 ppm.</li>
	<li>Bổ sung phụ gia đặc biệt.</li>
</ul>

<p><strong>Lợi &iacute;ch</strong></p>

<ul>
	<li>Cung cấp chất dinh dưỡng cho c&aacute;c loại c&acirc;y trồng thuỷ sinh</li>
	<li>Hạn chế s&acirc;u bệnh</li>
	<li>&Iacute;t tốn thời gian chăm s&oacute;c</li>
</ul>

<p><strong>C&aacute;ch sử dụng</strong></p>

<ul>
	<li>L&agrave;m sạch rễ c&acirc;y: ng&acirc;m nước sạch (ngập 2/3 bộ rễ) từ 12-24 giờ, rửa đất b&aacute;m tr&ecirc;n rễ.</li>
	<li>Pha 1 nắp (10 ml) / l&iacute;t nước sạch. Khuấy đều v&agrave; cho v&agrave;o chậu sao cho ngập 1/3-2/3 bộ rễ.</li>
	<li>Đặt c&acirc;y ở gần cửa sổ nếu c&acirc;y th&iacute;ch nhiều &aacute;nh s&aacute;ng.</li>
	<li>Khoảng 1 tuần thay dung dịch mới một lần, bỏ c&aacute;c phần l&aacute; v&agrave; rễ chết.</li>
	<li>Khi c&acirc;y đ&atilde; th&iacute;ch nghi c&oacute; thể thay dinh dưỡng sau 10-15 ng&agrave;y.</li>
	<li>Khoảng 2 tuần phơi c&acirc;y dưới nắng nhẹ buổi s&aacute;ng</li>
</ul>
', N'<p><strong>Dung dịch thuỷ canh Trimix-DT 100ml Kiểng thuỷ canh</strong>&nbsp;l&agrave; dung dịch dinh dưỡng chuy&ecirc;n dụng d&agrave;nh cho c&aacute;c loại c&acirc;y trồng thuỷ sinh chịu m&aacute;t như Ph&uacute; qu&yacute;, Trầu b&agrave;, Ph&aacute;t t&agrave;i, Tr&uacute;c nhật, Lan &yacute;,...</p>
', N'123', 540000, 10, 535000, N'Dung dịch Trimix-DT 100ml Kiểng thuỷ canh
', N'Dung dịch Trimix-DT 100ml Kiểng thuỷ canh
', 1, CAST(N'2084-08-08 19:13:15.740' AS DateTime), 20, CAST(N'2084-08-08 19:13:15.740' AS DateTime), 20)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (44, N'Dụng cụ làm vườn mini', N'dung-cu-lam-vuon-mini', 17, N'dung-cu-lam-vuon-mini.jpg', NULL, 1, 1, N'<p><strong>Giới thiệu</strong></p>

<ul>
	<li>Bộ dụng cụ l&agrave;m vườn mini hỗ trợ việc chăm s&oacute;c c&acirc;y cảnh được dễ d&agrave;ng v&agrave; hiệu quả hơn so với l&agrave;m bằng tay.</li>
	<li>Bộ sản phẩm bao gồm xẻng, x&uacute;c, c&agrave;o được l&agrave;m bằng sắt v&agrave; sơn đen tĩnh điện b&ecirc;n ngo&agrave;i, mỗi dụng cụ đều c&oacute; tay cầm bằng gỗ gi&uacute;p việc sử dụng được thoải m&aacute;i</li>
	<li>K&iacute;ch thước: từ 12 - 15 cm.</li>
</ul>

<p><strong>Th&agrave;nh phần</strong></p>

<ul>
	<li>Xẻng: x&uacute;c đất, xới đất, l&agrave;m tơi xốp, đ&agrave;o đất, đ&agrave;o hố, trộn đất, vun gốc c&acirc;y, sang chậu mới cho c&acirc;y&hellip;</li>
	<li>X&uacute;c: đầu lưỡi nhọn, lưỡi thường cong để x&uacute;c được, l&agrave;m tơi đất, đ&agrave;o lỗ nhỏ, trồng c&acirc;y v&agrave; l&agrave;m cỏ, trộn ph&acirc;n b&oacute;n hoặc c&aacute;c phụ chất kh&aacute;c.</li>
	<li>C&agrave;o: 4 răng d&agrave;i, thưa, khỏe tr&ocirc;ng như chiếc lược, đơn giản, gọn nhẹ, c&agrave;o đất tr&ecirc;n mặt chậu, gi&uacute;p đất kh&ocirc;ng bị chai, dễ tưới nước ngấm xuống đ&aacute;y để rễ hấp thụ, gom l&aacute; kh&ocirc; &uacute;a, rụng dưới gốc để chậu trồng th&ocirc;ng tho&aacute;ng.</li>
</ul>
', N'<p>&nbsp;</p>

<p>Bộ dụng cụ l&agrave;m vườn mini hỗ trợ việc chăm s&oacute;c c&acirc;y cảnh được dễ d&agrave;ng v&agrave; hiệu quả hơn so với l&agrave;m bằng tay.</p>
', N'123', 54000, 25, 40000, N'Dụng cụ làm vườn mini: Xẻng, Xúc, Cào
', N'Dụng cụ làm vườn mini: Xẻng, Xúc, Cào
', 1, CAST(N'2084-08-08 19:15:13.000' AS DateTime), 20, CAST(N'2084-08-08 19:21:44.090' AS DateTime), 20)
INSERT [dbo].[Products] ([ID], [Name], [Slug], [CateID], [Image], [NewPromotion], [Installment], [Discount], [Detail], [Description], [Specification], [Price], [Quantity], [ProPrice], [MetaKey], [MetaDesc], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (45, N'Sỏi Màu Trang Trí 500gr', N'soi-mau-trang-tri-500gr', 17, N'soi-mau-trang-tri-500gr.jpg', NULL, 1, 2, N'<p>Nếu như sự kết hợp giữa chậu v&agrave; c&acirc;y đ&atilde; tạo n&ecirc;n một vẻ đẹp tuyệt vời th&igrave; giờ đ&acirc;y với c&aacute;c vi&ecirc;n sỏi trang tr&iacute; nhiều m&agrave;u sắc, lớn nhỏ kh&aacute;c nhau, sẽ l&agrave;m vẻ đẹp ấy được n&acirc;ng l&ecirc;n tầm cao mới.</p>

<p><strong>Th&ocirc;ng tin kỹ thuật</strong></p>

<ul>
	<li>K&iacute;ch thước mỗi vi&ecirc;n sỏi: 1-1,5cm</li>
	<li>Trọng lượng: bịch 500gr</li>
	<li>M&agrave;u sắc: trắng, cam, v&agrave;ng...</li>
</ul>

<p><strong>C&ocirc;ng dụng</strong></p>

<ul>
	<li>Trang tr&iacute; bề mặt chậu, gi&uacute;p tạo vẻ thẩm mỹ cho chậu c&acirc;y</li>
	<li>Khi tưới nước kh&ocirc;ng l&agrave;m văng đất, ph&acirc;n b&oacute;n ra ngo&agrave;i, giữ vệ sinh xung quanh chậu c&acirc;y</li>
	<li>C&oacute; nhiều m&agrave;u sắc ph&ugrave; hợp với mệnh, tuổi, sở th&iacute;ch</li>
</ul>

<p><strong>Lưu &yacute;</strong></p>

<ul>
	<li>Sỏi sau một thời gian sử dụng sẽ bị &uacute;a m&agrave;u, do nước, ph&acirc;n hoặc bụi bẩn b&aacute;m v&agrave;o, v&igrave; vậy n&ecirc;n thay sỏi sau khoảng 1-2 tuần, hoặc đem sỏi trong chậu ra ch&agrave; rửa phơi kh&ocirc; rồi cho lại v&agrave;o chậu</li>
	<li>Kh&ocirc;ng n&ecirc;n đặt sỏi qu&aacute; d&agrave;y, g&acirc;y nặng chậu kh&ocirc;ng cần thiết</li>
</ul>
', N'<p><strong>Sỏi M&agrave;u Trang Tr&iacute;</strong>&nbsp;gi&uacute;p l&agrave;m đẹp bề mặt chậu, tạo vẻ thẩm mỹ cho chậu c&acirc;y, sỏi c&oacute; nhiều m&agrave;u sắc c&oacute; thể lựa chọn hợp với mệnh, tuổi, sở th&iacute;ch người trồng c&acirc;y.</p>
', N'123', 55000, 10, 40000, N'Sỏi Màu Trang Trí 500gr
', N'Sỏi Màu Trang Trí 500gr
', 1, CAST(N'2084-08-08 19:23:22.000' AS DateTime), 20, CAST(N'2084-08-08 19:27:13.860' AS DateTime), 20)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Sliders] ON 

INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (1, N'Cay canh slider', N'cay-canh-slider', N'slideshow', N'cay-canh-slider.jpg', 1, CAST(N'2084-08-08 13:39:32.093' AS DateTime), 20, CAST(N'2084-08-08 13:39:32.093' AS DateTime), 20, 1)
INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (2, N'slider cay canh 2', N'slider-cay-canh-2', N'slideshow', N'slider-cay-canh-2.jpg', 1, CAST(N'2084-08-08 13:43:37.430' AS DateTime), 20, CAST(N'2084-08-08 13:43:37.430' AS DateTime), 20, 1)
INSERT [dbo].[Sliders] ([Id], [Name], [Link], [Position], [Img], [Orders], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (3, N'slider cay canh 3', N'slider-cay-canh-3', N'slideshow', N'slider-cay-canh-3.jpg', 1, CAST(N'2084-08-08 13:43:53.777' AS DateTime), 20, CAST(N'2084-08-08 13:43:53.777' AS DateTime), 20, 1)
SET IDENTITY_INSERT [dbo].[Sliders] OFF
SET IDENTITY_INSERT [dbo].[Topics] ON 

INSERT [dbo].[Topics] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (1, N'Tin công ty', N'tin-cong-ty', 0, NULL, N'Tin công ty', N'Tin công ty', CAST(N'2084-08-14 10:38:06.120' AS DateTime), 1, CAST(N'2084-08-18 17:37:17.263' AS DateTime), 1, 0)
INSERT [dbo].[Topics] ([Id], [Name], [Slug], [ParentId], [Orders], [Metakey], [Metadesc], [Created_at], [Created_by], [Updated_at], [Updated_by], [Status]) VALUES (2, N'Tư vấn mua cay', N'tu-van-mua-laptop', 0, NULL, N'Tư vấn mua laptop', N'Tư vấn mua laptop', CAST(N'2084-08-15 09:19:41.557' AS DateTime), 1, CAST(N'2084-08-04 14:39:20.070' AS DateTime), 21, 0)
SET IDENTITY_INSERT [dbo].[Topics] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (20, N'admin', N'admins', N'xMpCOKC5I4INzFCab3WEmw==', N'123@gmail.com', 1, 98723972, N'140 Le Trong Tan', N'xxx.png', 0, 1, CAST(N'2084-08-01 21:23:14.520' AS DateTime), 1, CAST(N'2084-08-01 21:23:14.520' AS DateTime), 1)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (21, N'TranMy', N'tranmy', N'xMpCOKC5I4INzFCab3WEmw==', N'tranmy@gmail.com', 1, 98723972, N'140 Le Trong Tan', NULL, 0, 1, CAST(N'2084-08-04 14:17:16.513' AS DateTime), 20, CAST(N'2084-08-04 14:17:16.513' AS DateTime), 20)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (22, N'thanhngan', N'thanhngan', N'xMpCOKC5I4INzFCab3WEmw==', N'thanhngan@gmail.com', 1, 966523723, N'140 Le Trong Tan', NULL, 0, 1, CAST(N'2084-08-04 15:05:27.657' AS DateTime), 21, CAST(N'2084-08-04 15:05:39.263' AS DateTime), 21)
INSERT [dbo].[Users] ([ID], [FullName], [Name], [Password], [Email], [Gender], [Phone], [Address], [Image], [Access], [Status], [Created_at], [Created_by], [Updated_at], [Updated_by]) VALUES (23, N'thanhphat', N'thanhphat', N'xMpCOKC5I4INzFCab3WEmw==', N'thanhphat@gmail.com', 1, 98723972, N'140 Le Trong Tan', N'', 0, 1, CAST(N'2084-08-17 01:10:28.467' AS DateTime), 1, CAST(N'2084-08-17 01:10:28.467' AS DateTime), 1)

SET IDENTITY_INSERT [dbo].[Users] OFF
USE [master]
GO
ALTER DATABASE [WebPlant] SET  READ_WRITE 
GO
