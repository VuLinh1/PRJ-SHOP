USE [master]
GO
/****** Object:  Database [PRJShop]    Script Date: 5/31/2023 10:39:04 PM ******/
CREATE DATABASE [PRJShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRJShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PRJShop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRJShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PRJShop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PRJShop] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRJShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRJShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJShop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PRJShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJShop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PRJShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJShop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PRJShop] SET  MULTI_USER 
GO
ALTER DATABASE [PRJShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJShop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRJShop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJShop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PRJShop] SET QUERY_STORE = OFF
GO
USE [PRJShop]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 5/31/2023 10:39:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[accountId] [int] IDENTITY(1,1) NOT NULL,
	[accountEmail] [nvarchar](200) NULL,
	[accountPassword] [nvarchar](200) NULL,
	[roleId] [int] NULL,
	[accountDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[accountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountContact]    Script Date: 5/31/2023 10:39:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountContact](
	[accountContactId] [int] IDENTITY(1,1) NOT NULL,
	[accountId] [int] NULL,
	[districtId] [int] NULL,
	[accountContactAddress] [nvarchar](200) NULL,
	[accountContactName] [nvarchar](200) NULL,
	[accountContactMobile] [nvarchar](200) NULL,
	[accountContactDefault] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[accountContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountDetail]    Script Date: 5/31/2023 10:39:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountDetail](
	[accountDetailId] [int] IDENTITY(1,1) NOT NULL,
	[accountId] [int] NULL,
	[accountDetailName] [nvarchar](200) NULL,
	[accountDetailDob] [date] NULL,
	[accountDetailDoc] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[accountDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/31/2023 10:39:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[categoryId] [int] IDENTITY(1,1) NOT NULL,
	[categoryName] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 5/31/2023 10:39:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[cityId] [int] IDENTITY(1,1) NOT NULL,
	[cityName] [nvarchar](200) NULL,
 CONSTRAINT [PK__City__B4BEB95EAB98D941] PRIMARY KEY CLUSTERED 
(
	[cityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[District]    Script Date: 5/31/2023 10:39:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[districtId] [int] NOT NULL,
	[cityId] [int] IDENTITY(1,1) NOT NULL,
	[districtName] [nvarchar](200) NULL,
 CONSTRAINT [PK__District__2BAEF71079BFC72F] PRIMARY KEY CLUSTERED 
(
	[districtId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 5/31/2023 10:39:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[orderId] [int] IDENTITY(1,1) NOT NULL,
	[accountId] [int] NULL,
	[orderCreateDate] [date] NULL,
	[orderExpectedDate] [date] NULL,
	[orderDoneDate] [date] NULL,
	[orderNameContact] [nvarchar](200) NULL,
	[orderPhoneContact] [nvarchar](200) NULL,
	[orderAddressContact] [nvarchar](200) NULL,
	[orderTotalMoney] [int] NULL,
	[orderStatusId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[orderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 5/31/2023 10:39:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[orderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[orderId] [int] NULL,
	[productId] [int] NULL,
	[orderDetailProductImg] [nvarchar](500) NULL,
	[orderDetailProductName] [nvarchar](200) NULL,
	[orderDetailPriceProduct] [bigint] NULL,
	[orderDetailSizeValue] [nvarchar](200) NULL,
	[orderDetailQuantity] [int] NULL,
	[orderDetailTotalMoney] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[orderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 5/31/2023 10:39:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[orderStatusId] [int] IDENTITY(1,1) NOT NULL,
	[orderStatusName] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[orderStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 5/31/2023 10:39:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[productId] [int] IDENTITY(1,1) NOT NULL,
	[productName] [nvarchar](200) NULL,
	[productImg] [nvarchar](200) NULL,
	[productPrice] [int] NULL,
	[productDescription] [nvarchar](1000) NULL,
	[categoryId] [int] NULL,
	[productIsFeatured] [bit] NULL,
	[productIsRecent] [bit] NULL,
	[productDeleted] [bit] NULL,
	[URL] [nvarchar](1000) NULL,
 CONSTRAINT [PK__Product__2D10D16AAE70013D] PRIMARY KEY CLUSTERED 
(
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImgDetail]    Script Date: 5/31/2023 10:39:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImgDetail](
	[productImgDetailId] [int] IDENTITY(1,1) NOT NULL,
	[productId] [int] NULL,
	[productImgDetail] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[productImgDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSize]    Script Date: 5/31/2023 10:39:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSize](
	[productSizeId] [int] IDENTITY(1,1) NOT NULL,
	[productId] [int] NULL,
	[sizeId] [int] NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[productSizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 5/31/2023 10:39:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[roleId] [int] IDENTITY(1,1) NOT NULL,
	[roleName] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[roleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 5/31/2023 10:39:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[sizeId] [int] IDENTITY(1,1) NOT NULL,
	[sizeValue] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[sizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([accountId], [accountEmail], [accountPassword], [roleId], [accountDeleted]) VALUES (1, N'quoc', N'sdasd', 2, 0)
INSERT [dbo].[Account] ([accountId], [accountEmail], [accountPassword], [roleId], [accountDeleted]) VALUES (2, N'quyquoc2002@gmail.com', N'Shironeko02', 2, 0)
INSERT [dbo].[Account] ([accountId], [accountEmail], [accountPassword], [roleId], [accountDeleted]) VALUES (3, N'linhnvhe170399@fpt.edu.vn', N'123456', 2, 0)
INSERT [dbo].[Account] ([accountId], [accountEmail], [accountPassword], [roleId], [accountDeleted]) VALUES (4, N'quyquoc2002@gmail.com', N'123456', 2, 0)
INSERT [dbo].[Account] ([accountId], [accountEmail], [accountPassword], [roleId], [accountDeleted]) VALUES (5, N'Linh Linh', N'123456', 2, 0)
INSERT [dbo].[Account] ([accountId], [accountEmail], [accountPassword], [roleId], [accountDeleted]) VALUES (6, N'asd', N'asd', 2, 0)
INSERT [dbo].[Account] ([accountId], [accountEmail], [accountPassword], [roleId], [accountDeleted]) VALUES (7, N'asd', N'asd', 2, 0)
INSERT [dbo].[Account] ([accountId], [accountEmail], [accountPassword], [roleId], [accountDeleted]) VALUES (8, N'asd', N'asd', 2, 0)
INSERT [dbo].[Account] ([accountId], [accountEmail], [accountPassword], [roleId], [accountDeleted]) VALUES (9, N'asd', N'asd', 2, 0)
INSERT [dbo].[Account] ([accountId], [accountEmail], [accountPassword], [roleId], [accountDeleted]) VALUES (10, N'asd', N'asd', 2, 0)
INSERT [dbo].[Account] ([accountId], [accountEmail], [accountPassword], [roleId], [accountDeleted]) VALUES (11, N'quocpqhe163061@fpt.edu.vn', N'123456789', 2, 0)
INSERT [dbo].[Account] ([accountId], [accountEmail], [accountPassword], [roleId], [accountDeleted]) VALUES (12, N'quocpqhe163061@fpt.edu.vn', N'123456789', 2, 0)
INSERT [dbo].[Account] ([accountId], [accountEmail], [accountPassword], [roleId], [accountDeleted]) VALUES (13, N'quocpqhe163061@fpt.edu.vn', N'0987654321', 2, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[AccountDetail] ON 

INSERT [dbo].[AccountDetail] ([accountDetailId], [accountId], [accountDetailName], [accountDetailDob], [accountDetailDoc]) VALUES (3, 3, N'Linh Linh', NULL, CAST(N'2023-05-21' AS Date))
INSERT [dbo].[AccountDetail] ([accountDetailId], [accountId], [accountDetailName], [accountDetailDob], [accountDetailDoc]) VALUES (4, 4, N'Linh Linh', NULL, CAST(N'2023-05-23' AS Date))
INSERT [dbo].[AccountDetail] ([accountDetailId], [accountId], [accountDetailName], [accountDetailDob], [accountDetailDoc]) VALUES (5, 11, N'Quoc HUY', NULL, CAST(N'2023-05-28' AS Date))
INSERT [dbo].[AccountDetail] ([accountDetailId], [accountId], [accountDetailName], [accountDetailDob], [accountDetailDoc]) VALUES (6, 12, NULL, NULL, CAST(N'2023-05-28' AS Date))
INSERT [dbo].[AccountDetail] ([accountDetailId], [accountId], [accountDetailName], [accountDetailDob], [accountDetailDoc]) VALUES (7, 13, N'Huy Quocccccccccccccccccc', NULL, CAST(N'2023-05-28' AS Date))
SET IDENTITY_INSERT [dbo].[AccountDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([categoryId], [categoryName]) VALUES (1, N'Shirts')
INSERT [dbo].[Category] ([categoryId], [categoryName]) VALUES (2, N'Jeans')
INSERT [dbo].[Category] ([categoryId], [categoryName]) VALUES (3, N'Swimwear')
INSERT [dbo].[Category] ([categoryId], [categoryName]) VALUES (4, N'Sleepwear')
INSERT [dbo].[Category] ([categoryId], [categoryName]) VALUES (5, N'Sportswear')
INSERT [dbo].[Category] ([categoryId], [categoryName]) VALUES (6, N'Jumpsuits')
INSERT [dbo].[Category] ([categoryId], [categoryName]) VALUES (7, N'Blazers')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([cityId], [cityName]) VALUES (1, N'Ha Noi')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (2, N'Ha Giang')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (4, N'Cao Bang')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (6, N'Bac Kan')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (8, N'Tuyen Quang')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (10, N'Lao Cai')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (11, N'Dien Bien')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (12, N'Lai Chau')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (14, N'Son La')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (15, N'Yen Bai')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (17, N'Hoa Binh')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (19, N'Thai Nguyen')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (20, N'Lang Son')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (22, N'Quang Ninh')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (24, N'Bac Giang')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (25, N'Phu Tho')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (26, N'Vinh Phuc')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (27, N'Bac Ninh')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (30, N'Hai Duong')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (31, N'Hai Phong')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (33, N'Hung Yen')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (34, N'Thai Binh')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (35, N'Ha Nam')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (36, N'Nam Dinh')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (37, N'Ninh Binh')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (38, N'Thanh Hoa')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (40, N'Nghe An')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (42, N'Ha Tinh')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (44, N'Quang Binh')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (45, N'Quang Tri')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (46, N'Thua Thien-Hue')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (48, N'Da Nang')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (49, N'Quang Nam')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (51, N'Quang Ngai')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (52, N'Binh Dinh')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (54, N'Phu Yen')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (56, N'Khanh Hoa')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (58, N'Ninh Thuan')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (60, N'Binh Thuan')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (62, N'Kon Tum')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (64, N'Gia Lai')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (66, N'Dak Lak')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (67, N'Dak Nong')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (68, N'Lam Dong')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (70, N'Binh Phuoc')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (72, N'Tay Ninh')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (74, N'Binh Duong')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (75, N'Dong Nai')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (77, N'Ba Ria-Vung Tau')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (79, N'Ho Chi Minh')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (80, N'Long An')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (82, N'Tien Giang')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (83, N'Ben Tre')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (84, N'Tra Vinh')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (86, N'Vinh Long')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (87, N'Dong Thap')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (89, N'An Giang')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (91, N'Kien Giang')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (92, N'Can Tho')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (93, N'Hau Giang')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (94, N'Soc Trang')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (95, N'Bac Lieu')
INSERT [dbo].[City] ([cityId], [cityName]) VALUES (96, N'Ca Mau')
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[District] ON 

INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (1, 1, N'Quan Ba Dinh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (2, 1, N'Quan Hoan Kiem')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (3, 1, N'Quan Tay Ho')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (4, 1, N'Quan Long Bien')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (5, 1, N'Quan Cau Giay')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (6, 1, N'Quan Dong Da')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (7, 1, N'Quan Hai Ba Trung')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (8, 1, N'Quan Hoang Mai')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (9, 1, N'Quan Thanh Xuan')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (16, 1, N'Huyen Soc Son')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (17, 1, N'Huyen Dong Anh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (18, 1, N'Huyen Gia Lam')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (19, 1, N'Quan Nam Tu Liem')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (20, 1, N'Huyen Thanh Tri')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (21, 1, N'Quan Bac Tu Liem')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (24, 2, N'Thanh pho Ha Giang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (26, 2, N'Huyen Dong Van')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (27, 2, N'Huyen Meo Vac')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (28, 2, N'Huyen Yen Minh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (29, 2, N'Huyen Quan Ba')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (30, 2, N'Huyen Vi Xuyen')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (31, 2, N'Huyen Bac Me')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (32, 2, N'Huyen Hoang Su Phi')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (33, 2, N'Huyen Xin Man')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (34, 2, N'Huyen Bac Quang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (35, 2, N'Huyen Quang Binh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (40, 4, N'Thanh pho Cao Bang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (42, 4, N'Huyen Bao Lam')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (43, 4, N'Huyen Bao Lac')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (45, 4, N'Huyen Ha Quang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (47, 4, N'Huyen Trung Khanh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (48, 4, N'Huyen Ha Lang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (49, 4, N'Huyen Quang Hoa')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (51, 4, N'Huyen Hoa An')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (52, 4, N'Huyen Nguyen Binh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (53, 4, N'Huyen Thach An')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (58, 6, N'Thanh Pho Bac Kan')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (60, 6, N'Huyen Pac Nam')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (61, 6, N'Huyen Ba Be')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (62, 6, N'Huyen Ngan Son')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (63, 6, N'Huyen Bach Thong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (64, 6, N'Huyen Cho Don')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (65, 6, N'Huyen Cho Moi')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (66, 6, N'Huyen Na Ri')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (70, 8, N'Thanh pho Tuyen Quang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (71, 8, N'Huyen Lam Binh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (72, 8, N'Huyen Na Hang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (73, 8, N'Huyen Chiem Hoa')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (74, 8, N'Huyen Ham Yen')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (75, 8, N'Huyen Yen Son')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (76, 8, N'Huyen Son Duong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (80, 10, N'Thanh pho Lao Cai')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (82, 10, N'Huyen Bat Xat')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (83, 10, N'Huyen Muong Khuong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (84, 10, N'Huyen Si Ma Cai')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (85, 10, N'Huyen Bac Ha')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (86, 10, N'Huyen Bao Thang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (87, 10, N'Huyen Bao Yen')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (88, 10, N'Thi xa Sa Pa')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (89, 10, N'Huyen Van Ban')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (94, 11, N'Thanh pho Dien Bien Phu')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (95, 11, N'Thi Xa Muong Lay')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (96, 11, N'Huyen Muong Nhe')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (97, 11, N'Huyen Muong Cha')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (98, 11, N'Huyen Tua Chua')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (99, 11, N'Huyen Tuan Giao')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (100, 11, N'Huyen Dien Bien')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (101, 11, N'Huyen Dien Bien Dong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (102, 11, N'Huyen Muong Ang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (103, 11, N'Huyen Nam Po')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (105, 12, N'Thanh pho Lai Chau')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (106, 12, N'Huyen Tam Duong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (107, 12, N'Huyen Muong Te')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (108, 12, N'Huyen Sin Ho')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (109, 12, N'Huyen Phong Tho')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (110, 12, N'Huyen Than Uyen')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (111, 12, N'Huyen Tan Uyen')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (112, 12, N'Huyen Nam Nhun')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (116, 14, N'Thanh pho Son La')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (118, 14, N'Huyen Quynh Nhai')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (119, 14, N'Huyen Thuan Chau')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (120, 14, N'Huyen Muong La')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (121, 14, N'Huyen Bac Yen')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (122, 14, N'Huyen Phu Yen')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (123, 14, N'Huyen Moc Chau')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (124, 14, N'Huyen Yen Chau')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (125, 14, N'Huyen Mai Son')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (126, 14, N'Huyen Song Ma')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (127, 14, N'Huyen Sop Cop')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (128, 14, N'Huyen Van Ho')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (132, 15, N'Thanh pho Yen Bai')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (133, 15, N'Thi xa Nghia Lo')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (135, 15, N'Huyen Luc Yen')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (136, 15, N'Huyen Van Yen')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (137, 15, N'Huyen Mu Cang Chai')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (138, 15, N'Huyen Tran Yen')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (139, 15, N'Huyen Tram Tau')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (140, 15, N'Huyen Van Chan')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (141, 15, N'Huyen Yen Binh')
GO
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (148, 17, N'Thanh pho Hoa Binh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (150, 17, N'Huyen Da Bac')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (152, 17, N'Huyen Luong Son')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (153, 17, N'Huyen Kim Boi')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (154, 17, N'Huyen Cao Phong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (155, 17, N'Huyen Tan Lac')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (156, 17, N'Huyen Mai Chau')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (157, 17, N'Huyen Lac Son')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (158, 17, N'Huyen Yen Thuy')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (159, 17, N'Huyen Lac Thuy')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (164, 19, N'Thanh pho Thai Nguyen')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (165, 19, N'Thanh pho Song Cong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (167, 19, N'Huyen Dinh Hoa')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (168, 19, N'Huyen Phu Luong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (169, 19, N'Huyen Dong Hy')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (170, 19, N'Huyen Vo Nhai')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (171, 19, N'Huyen Dai Tu')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (172, 19, N'Thanh pho Pho Yen')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (173, 19, N'Huyen Phu Binh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (178, 20, N'Thanh pho Lang Son')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (180, 20, N'Huyen Trang Dinh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (181, 20, N'Huyen Binh Gia')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (182, 20, N'Huyen Van Lang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (183, 20, N'Huyen Cao Loc')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (184, 20, N'Huyen Van Quan')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (185, 20, N'Huyen Bac Son')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (186, 20, N'Huyen Huu Lung')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (187, 20, N'Huyen Chi Lang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (188, 20, N'Huyen Loc Binh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (189, 20, N'Huyen Dinh Lap')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (193, 22, N'Thanh pho Ha Long')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (194, 22, N'Thanh pho Mong Cai')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (195, 22, N'Thanh pho Cam Pha')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (196, 22, N'Thanh pho Uong Bi')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (198, 22, N'Huyen Binh Lieu')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (199, 22, N'Huyen Tien Yen')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (200, 22, N'Huyen Dam Ha')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (201, 22, N'Huyen Hai Ha')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (202, 22, N'Huyen Ba Che')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (203, 22, N'Huyen Van Don')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (205, 22, N'Thi xa Dong Trieu')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (206, 22, N'Thi xa Quang Yen')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (207, 22, N'Huyen Co To')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (213, 24, N'Thanh pho Bac Giang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (215, 24, N'Huyen Yen The')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (216, 24, N'Huyen Tan Yen')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (217, 24, N'Huyen Lang Giang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (218, 24, N'Huyen Luc Nam')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (219, 24, N'Huyen Luc Ngan')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (220, 24, N'Huyen Son Dong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (221, 24, N'Huyen Yen Dung')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (222, 24, N'Huyen Viet Yen')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (223, 24, N'Huyen Hiep Hoa')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (227, 25, N'Thanh pho Viet Tri')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (228, 25, N'Thi xa Phu Tho')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (230, 25, N'Huyen Doan Hung')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (231, 25, N'Huyen Ha Hoa')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (232, 25, N'Huyen Thanh Ba')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (233, 25, N'Huyen Phu Ninh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (234, 25, N'Huyen Yen Lap')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (235, 25, N'Huyen Cam Khe')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (236, 25, N'Huyen Tam Nong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (237, 25, N'Huyen Lam Thao')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (238, 25, N'Huyen Thanh Son')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (239, 25, N'Huyen Thanh Thuy')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (240, 25, N'Huyen Tan Son')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (243, 26, N'Thanh pho Vinh Yen')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (244, 26, N'Thanh pho Phuc Yen')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (246, 26, N'Huyen Lap Thach')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (247, 26, N'Huyen Tam Duong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (248, 26, N'Huyen Tam Dao')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (249, 26, N'Huyen Binh Xuyen')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (250, 1, N'Huyen Me Linh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (251, 26, N'Huyen Yen Lac')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (252, 26, N'Huyen Vinh Tuong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (253, 26, N'Huyen Song Lo')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (256, 27, N'Thanh pho Bac Ninh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (258, 27, N'Huyen Yen Phong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (259, 27, N'Huyen Que Vo')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (260, 27, N'Huyen Tien Du')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (261, 27, N'Thanh pho Tu Son')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (262, 27, N'Huyen Thuan Thanh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (263, 27, N'Huyen Gia Binh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (264, 27, N'Huyen Luong Tai')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (268, 1, N'Quan Ha Dong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (269, 1, N'Thi xa Son Tay')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (271, 1, N'Huyen Ba Vi')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (272, 1, N'Huyen Phuc Tho')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (273, 1, N'Huyen Dan Phuong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (274, 1, N'Huyen Hoai Duc')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (275, 1, N'Huyen Quoc Oai')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (276, 1, N'Huyen Thach That')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (277, 1, N'Huyen Chuong My')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (278, 1, N'Huyen Thanh Oai')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (279, 1, N'Huyen Thuong Tin')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (280, 1, N'Huyen Phu Xuyen')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (281, 1, N'Huyen Ung Hoa')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (282, 1, N'Huyen My Duc')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (288, 30, N'Thanh pho Hai Duong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (290, 30, N'Thanh pho Chi Linh')
GO
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (291, 30, N'Huyen Nam Sach')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (292, 30, N'Thi xa Kinh Mon')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (293, 30, N'Huyen Kim Thanh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (294, 30, N'Huyen Thanh Ha')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (295, 30, N'Huyen Cam Giang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (296, 30, N'Huyen Binh Giang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (297, 30, N'Huyen Gia Loc')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (298, 30, N'Huyen Tu Ky')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (299, 30, N'Huyen Ninh Giang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (300, 30, N'Huyen Thanh Mien')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (303, 31, N'Quan Hong Bang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (304, 31, N'Quan Ngo Quyen')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (305, 31, N'Quan Le Chan')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (306, 31, N'Quan Hai An')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (307, 31, N'Quan Kien An')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (308, 31, N'Quan Do Son')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (309, 31, N'Quan Duong Kinh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (311, 31, N'Huyen Thuy Nguyen')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (312, 31, N'Huyen An Duong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (313, 31, N'Huyen An Lao')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (314, 31, N'Huyen Kien Thuy')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (315, 31, N'Huyen Tien Lang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (316, 31, N'Huyen Vinh Bao')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (317, 31, N'Huyen Cat Hai')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (318, 31, N'Huyen Bach Long Vi')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (323, 33, N'Thanh pho Hung Yen')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (325, 33, N'Huyen Van Lam')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (326, 33, N'Huyen Van Giang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (327, 33, N'Huyen Yen My')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (328, 33, N'Thi xa My Hao')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (329, 33, N'Huyen An Thi')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (330, 33, N'Huyen Khoai Chau')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (331, 33, N'Huyen Kim Dong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (332, 33, N'Huyen Tien Lu')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (333, 33, N'Huyen Phu Cu')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (336, 34, N'Thanh pho Thai Binh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (338, 34, N'Huyen Quynh Phu')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (339, 34, N'Huyen Hung Ha')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (340, 34, N'Huyen Dong Hung')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (341, 34, N'Huyen Thai Thuy')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (342, 34, N'Huyen Tien Hai')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (343, 34, N'Huyen Kien Xuong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (344, 34, N'Huyen Vu Thu')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (347, 35, N'Thanh pho Phu Ly')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (349, 35, N'Thi xa Duy Tien')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (350, 35, N'Huyen Kim Bang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (351, 35, N'Huyen Thanh Liem')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (352, 35, N'Huyen Binh Luc')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (353, 35, N'Huyen Ly Nhan')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (356, 36, N'Thanh pho Nam Dinh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (358, 36, N'Huyen My Loc')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (359, 36, N'Huyen Vu Ban')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (360, 36, N'Huyen Y Yen')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (361, 36, N'Huyen Nghia Hung')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (362, 36, N'Huyen Nam Truc')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (363, 36, N'Huyen Truc Ninh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (364, 36, N'Huyen Xuan Truong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (365, 36, N'Huyen Giao Thuy')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (366, 36, N'Huyen Hai Hau')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (369, 37, N'Thanh pho Ninh Binh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (370, 37, N'Thanh pho Tam Diep')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (372, 37, N'Huyen Nho Quan')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (373, 37, N'Huyen Gia Vien')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (374, 37, N'Huyen Hoa Lu')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (375, 37, N'Huyen Yen Khanh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (376, 37, N'Huyen Kim Son')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (377, 37, N'Huyen Yen Mo')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (380, 38, N'Thanh pho Thanh Hoa')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (381, 38, N'Thi xa Bim Son')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (382, 38, N'Thanh pho Sam Son')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (384, 38, N'Huyen Muong Lat')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (385, 38, N'Huyen Quan Hoa')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (386, 38, N'Huyen Ba Thuoc')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (387, 38, N'Huyen Quan Son')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (388, 38, N'Huyen Lang Chanh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (389, 38, N'Huyen Ngoc Lac')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (390, 38, N'Huyen Cam Thuy')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (391, 38, N'Huyen Thach Thanh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (392, 38, N'Huyen Ha Trung')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (393, 38, N'Huyen Vinh Loc')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (394, 38, N'Huyen Yen Dinh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (395, 38, N'Huyen Tho Xuan')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (396, 38, N'Huyen Thuong Xuan')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (397, 38, N'Huyen Trieu Son')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (398, 38, N'Huyen Thieu Hoa')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (399, 38, N'Huyen Hoang Hoa')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (400, 38, N'Huyen Hau Loc')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (401, 38, N'Huyen Nga Son')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (402, 38, N'Huyen Nhu Xuan')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (403, 38, N'Huyen Nhu Thanh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (404, 38, N'Huyen Nong Cong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (405, 38, N'Huyen Dong Son')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (406, 38, N'Huyen Quang Xuong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (407, 38, N'Thi xa Nghi Son')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (412, 40, N'Thanh pho Vinh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (413, 40, N'Thi xa Cua Lo')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (414, 40, N'Thi xa Thai Hoa')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (415, 40, N'Huyen Que Phong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (416, 40, N'Huyen Quy Chau')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (417, 40, N'Huyen Ky Son')
GO
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (418, 40, N'Huyen Tuong Duong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (419, 40, N'Huyen Nghia Dan')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (420, 40, N'Huyen Quy Hop')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (421, 40, N'Huyen Quynh Luu')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (422, 40, N'Huyen Con Cuong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (423, 40, N'Huyen Tan Ky')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (424, 40, N'Huyen Anh Son')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (425, 40, N'Huyen Dien Chau')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (426, 40, N'Huyen Yen Thanh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (427, 40, N'Huyen Do Luong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (428, 40, N'Huyen Thanh Chuong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (429, 40, N'Huyen Nghi Loc')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (430, 40, N'Huyen Nam Dan')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (431, 40, N'Huyen Hung Nguyen')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (432, 40, N'Thi xa Hoang Mai')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (436, 42, N'Thanh pho Ha Tinh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (437, 42, N'Thi xa Hong Linh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (439, 42, N'Huyen Huong Son')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (440, 42, N'Huyen Duc Tho')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (441, 42, N'Huyen Vu Quang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (442, 42, N'Huyen Nghi Xuan')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (443, 42, N'Huyen Can Loc')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (444, 42, N'Huyen Huong Khe')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (445, 42, N'Huyen Thach Ha')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (446, 42, N'Huyen Cam Xuyen')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (447, 42, N'Huyen Ky Anh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (448, 42, N'Huyen Loc Ha')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (449, 42, N'Thi xa Ky Anh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (450, 44, N'Thanh Pho Dong Hoi')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (452, 44, N'Huyen Minh Hoa')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (453, 44, N'Huyen Tuyen Hoa')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (454, 44, N'Huyen Quang Trach')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (455, 44, N'Huyen Bo Trach')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (456, 44, N'Huyen Quang Ninh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (457, 44, N'Huyen Le Thuy')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (458, 44, N'Thi xa Ba Don')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (461, 45, N'Thanh pho Dong Ha')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (462, 45, N'Thi xa Quang Tri')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (464, 45, N'Huyen Vinh Linh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (465, 45, N'Huyen Huong Hoa')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (466, 45, N'Huyen Gio Linh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (467, 45, N'Huyen Da Krong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (468, 45, N'Huyen Cam Lo')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (469, 45, N'Huyen Trieu Phong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (470, 45, N'Huyen Hai Lang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (471, 45, N'Huyen Con Co')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (474, 46, N'Thanh pho Hue')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (476, 46, N'Huyen Phong Dien')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (477, 46, N'Huyen Quang Dien')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (478, 46, N'Huyen Phu Vang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (479, 46, N'Thi xa Huong Thuy')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (480, 46, N'Thi xa Huong Tra')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (481, 46, N'Huyen A Luoi')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (482, 46, N'Huyen Phu Loc')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (483, 46, N'Huyen Nam Dong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (490, 48, N'Quan Lien Chieu')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (491, 48, N'Quan Thanh Khe')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (492, 48, N'Quan Hai Chau')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (493, 48, N'Quan Son Tra')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (494, 48, N'Quan Ngu Hanh Son')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (495, 48, N'Quan Cam Le')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (497, 48, N'Huyen Hoa Vang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (498, 48, N'Huyen Hoang Sa')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (502, 49, N'Thanh pho Tam Ky')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (503, 49, N'Thanh pho Hoi An')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (504, 49, N'Huyen Tay Giang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (505, 49, N'Huyen Dong Giang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (506, 49, N'Huyen Dai Loc')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (507, 49, N'Thi xa Dien Ban')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (508, 49, N'Huyen Duy Xuyen')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (509, 49, N'Huyen Que Son')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (510, 49, N'Huyen Nam Giang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (511, 49, N'Huyen Phuoc Son')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (512, 49, N'Huyen Hiep Duc')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (513, 49, N'Huyen Thang Binh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (514, 49, N'Huyen Tien Phuoc')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (515, 49, N'Huyen Bac Tra My')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (516, 49, N'Huyen Nam Tra My')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (517, 49, N'Huyen Nui Thanh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (518, 49, N'Huyen Phu Ninh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (519, 49, N'Huyen Nong Son')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (522, 51, N'Thanh pho Quang Ngai')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (524, 51, N'Huyen Binh Son')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (525, 51, N'Huyen Tra Bong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (527, 51, N'Huyen Son Tinh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (528, 51, N'Huyen Tu Nghia')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (529, 51, N'Huyen Son Ha')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (530, 51, N'Huyen Son Tay')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (531, 51, N'Huyen Minh Long')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (532, 51, N'Huyen Nghia Hanh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (533, 51, N'Huyen Mo Duc')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (534, 51, N'Thi xa Duc Pho')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (535, 51, N'Huyen Ba To')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (536, 51, N'Huyen Ly Son')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (540, 52, N'Thanh pho Quy Nhon')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (542, 52, N'Huyen An Lao')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (543, 52, N'Thi xa Hoai Nhon')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (544, 52, N'Huyen Hoai An')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (545, 52, N'Huyen Phu My')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (546, 52, N'Huyen Vinh Thanh')
GO
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (547, 52, N'Huyen Tay Son')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (548, 52, N'Huyen Phu Cat')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (549, 52, N'Thi xa An Nhon')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (550, 52, N'Huyen Tuy Phuoc')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (551, 52, N'Huyen Van Canh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (555, 54, N'Thanh pho Tuy Hoa')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (557, 54, N'Thi xa Song Cau')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (558, 54, N'Huyen Dong Xuan')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (559, 54, N'Huyen Tuy An')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (560, 54, N'Huyen Son Hoa')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (561, 54, N'Huyen Song Hinh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (562, 54, N'Huyen Tay Hoa')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (563, 54, N'Huyen Phu Hoa')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (564, 54, N'Thi xa Dong Hoa')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (568, 56, N'Thanh pho Nha Trang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (569, 56, N'Thanh pho Cam Ranh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (570, 56, N'Huyen Cam Lam')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (571, 56, N'Huyen Van Ninh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (572, 56, N'Thi xa Ninh Hoa')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (573, 56, N'Huyen Khanh Vinh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (574, 56, N'Huyen Dien Khanh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (575, 56, N'Huyen Khanh Son')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (576, 56, N'Huyen Truong Sa')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (582, 58, N'Thanh pho Phan Rang-Thap Cham')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (584, 58, N'Huyen Bac Ai')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (585, 58, N'Huyen Ninh Son')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (586, 58, N'Huyen Ninh Hai')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (587, 58, N'Huyen Ninh Phuoc')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (588, 58, N'Huyen Thuan Bac')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (589, 58, N'Huyen Thuan Nam')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (593, 60, N'Thanh pho Phan Thiet')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (594, 60, N'Thi xa La Gi')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (595, 60, N'Huyen Tuy Phong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (596, 60, N'Huyen Bac Binh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (597, 60, N'Huyen Ham Thuan Bac')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (598, 60, N'Huyen Ham Thuan Nam')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (599, 60, N'Huyen Tanh Linh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (600, 60, N'Huyen Duc Linh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (601, 60, N'Huyen Ham Tan')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (602, 60, N'Huyen Phu Qui')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (608, 62, N'Thanh pho Kon Tum')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (610, 62, N'Huyen Dak Glei')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (611, 62, N'Huyen Ngoc Hoi')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (612, 62, N'Huyen Dak To')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (613, 62, N'Huyen Kon Plong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (614, 62, N'Huyen Kon Ray')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (615, 62, N'Huyen Dak Ha')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (616, 62, N'Huyen Sa Thay')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (617, 62, N'Huyen Tu Mo Rong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (618, 62, N'Huyen Ia H Drai')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (622, 64, N'Thanh pho Pleiku')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (623, 64, N'Thi xa An Khe')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (624, 64, N'Thi xa Ayun Pa')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (625, 64, N'Huyen KBang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (626, 64, N'Huyen Dak Doa')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (627, 64, N'Huyen Chu Pah')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (628, 64, N'Huyen Ia Grai')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (629, 64, N'Huyen Mang Yang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (630, 64, N'Huyen Kong Chro')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (631, 64, N'Huyen Duc Co')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (632, 64, N'Huyen Chu Prong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (633, 64, N'Huyen Chu Se')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (634, 64, N'Huyen Dak Po')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (635, 64, N'Huyen Ia Pa')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (637, 64, N'Huyen Krong Pa')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (638, 64, N'Huyen Phu Thien')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (639, 64, N'Huyen Chu Puh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (643, 66, N'Thanh pho Buon Ma Thuot')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (644, 66, N'Thi Xa Buon Ho')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (645, 66, N'Huyen Ea H leo')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (646, 66, N'Huyen Ea Sup')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (647, 66, N'Huyen Buon Don')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (648, 66, N'Huyen Cu M gar')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (649, 66, N'Huyen Krong Buk')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (650, 66, N'Huyen Krong Nang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (651, 66, N'Huyen Ea Kar')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (652, 66, N'Huyen M Drak')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (653, 66, N'Huyen Krong Bong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (654, 66, N'Huyen Krong Pac')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (655, 66, N'Huyen Krong A Na')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (656, 66, N'Huyen Lak')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (657, 66, N'Huyen Cu Kuin')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (660, 67, N'Thanh pho Gia Nghia')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (661, 67, N'Huyen Dak Glong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (662, 67, N'Huyen Cu Jut')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (663, 67, N'Huyen Dak Mil')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (664, 67, N'Huyen Krong No')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (665, 67, N'Huyen Dak Song')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (666, 67, N'Huyen Dak R Lap')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (667, 67, N'Huyen Tuy Duc')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (672, 68, N'Thanh pho Da Lat')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (673, 68, N'Thanh pho Bao Loc')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (674, 68, N'Huyen Dam Rong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (675, 68, N'Huyen Lac Duong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (676, 68, N'Huyen Lam Ha')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (677, 68, N'Huyen Don Duong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (678, 68, N'Huyen Duc Trong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (679, 68, N'Huyen Di Linh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (680, 68, N'Huyen Bao Lam')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (681, 68, N'Huyen Da Huoai')
GO
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (682, 68, N'Huyen Da Teh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (683, 68, N'Huyen Cat Tien')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (688, 70, N'Thi xa Phuoc Long')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (689, 70, N'Thanh pho Dong Xoai')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (690, 70, N'Thi xa Binh Long')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (691, 70, N'Huyen Bu Gia Map')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (692, 70, N'Huyen Loc Ninh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (693, 70, N'Huyen Bu Dop')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (694, 70, N'Huyen Hon Quan')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (695, 70, N'Huyen Dong Phu')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (696, 70, N'Huyen Bu Dang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (697, 70, N'Huyen Chon Thanh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (698, 70, N'Huyen Phu Rieng')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (703, 72, N'Thanh pho Tay Ninh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (705, 72, N'Huyen Tan Bien')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (706, 72, N'Huyen Tan Chau')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (707, 72, N'Huyen Duong Minh Chau')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (708, 72, N'Huyen Chau Thanh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (709, 72, N'Thi xa Hoa Thanh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (710, 72, N'Huyen Go Dau')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (711, 72, N'Huyen Ben Cau')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (712, 72, N'Thi xa Trang Bang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (718, 74, N'Thanh pho Thu Dau Mot')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (719, 74, N'Huyen Bau Bang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (720, 74, N'Huyen Dau Tieng')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (721, 74, N'Thi xa Ben Cat')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (722, 74, N'Huyen Phu Giao')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (723, 74, N'Thi xa Tan Uyen')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (724, 74, N'Thanh pho Di An')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (725, 74, N'Thanh pho Thuan An')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (726, 74, N'Huyen Bac Tan Uyen')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (731, 75, N'Thanh pho Bien Hoa')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (732, 75, N'Thanh pho Long Khanh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (734, 75, N'Huyen Tan Phu')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (735, 75, N'Huyen Vinh Cuu')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (736, 75, N'Huyen Dinh Quan')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (737, 75, N'Huyen Trang Bom')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (738, 75, N'Huyen Thong Nhat')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (739, 75, N'Huyen Cam My')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (740, 75, N'Huyen Long Thanh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (741, 75, N'Huyen Xuan Loc')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (742, 75, N'Huyen Nhon Trach')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (747, 77, N'Thanh pho Vung Tau')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (748, 77, N'Thanh pho Ba Ria')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (750, 77, N'Huyen Chau Duc')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (751, 77, N'Huyen Xuyen Moc')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (752, 77, N'Huyen Long Dien')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (753, 77, N'Huyen Dat Do')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (754, 77, N'Thi xa Phu My')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (755, 77, N'Huyen Con Dao')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (760, 79, N'Quan 1')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (761, 79, N'Quan 12')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (764, 79, N'Quan Go Vap')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (765, 79, N'Quan Binh Thanh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (766, 79, N'Quan Tan Binh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (767, 79, N'Quan Tan Phu')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (768, 79, N'Quan Phu Nhuan')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (769, 79, N'Thanh pho Thu Duc')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (770, 79, N'Quan 3')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (771, 79, N'Quan 10')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (772, 79, N'Quan 11')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (773, 79, N'Quan 4')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (774, 79, N'Quan 5')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (775, 79, N'Quan 6')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (776, 79, N'Quan 8')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (777, 79, N'Quan Binh Tan')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (778, 79, N'Quan 7')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (783, 79, N'Huyen Cu Chi')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (784, 79, N'Huyen Hoc Mon')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (785, 79, N'Huyen Binh Chanh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (786, 79, N'Huyen Nha Be')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (787, 79, N'Huyen Can Gio')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (794, 80, N'Thanh pho Tan An')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (795, 80, N'Thi xa Kien Tuong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (796, 80, N'Huyen Tan Hung')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (797, 80, N'Huyen Vinh Hung')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (798, 80, N'Huyen Moc Hoa')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (799, 80, N'Huyen Tan Thanh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (800, 80, N'Huyen Thanh Hoa')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (801, 80, N'Huyen Duc Hue')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (802, 80, N'Huyen Duc Hoa')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (803, 80, N'Huyen Ben Luc')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (804, 80, N'Huyen Thu Thua')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (805, 80, N'Huyen Tan Tru')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (806, 80, N'Huyen Can Duoc')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (807, 80, N'Huyen Can Giuoc')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (808, 80, N'Huyen Chau Thanh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (815, 82, N'Thanh pho My Tho')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (816, 82, N'Thi xa Go Cong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (817, 82, N'Thi xa Cai Lay')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (818, 82, N'Huyen Tan Phuoc')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (819, 82, N'Huyen Cai Be')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (820, 82, N'Huyen Cai Lay')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (821, 82, N'Huyen Chau Thanh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (822, 82, N'Huyen Cho Gao')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (823, 82, N'Huyen Go Cong Tay')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (824, 82, N'Huyen Go Cong Dong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (825, 82, N'Huyen Tan Phu Dong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (829, 83, N'Thanh pho Ben Tre')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (831, 83, N'Huyen Chau Thanh')
GO
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (832, 83, N'Huyen Cho Lach')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (833, 83, N'Huyen Mo Cay Nam')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (834, 83, N'Huyen Giong Trom')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (835, 83, N'Huyen Binh Dai')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (836, 83, N'Huyen Ba Tri')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (837, 83, N'Huyen Thanh Phu')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (838, 83, N'Huyen Mo Cay Bac')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (842, 84, N'Thanh pho Tra Vinh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (844, 84, N'Huyen Cang Long')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (845, 84, N'Huyen Cau Ke')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (846, 84, N'Huyen Tieu Can')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (847, 84, N'Huyen Chau Thanh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (848, 84, N'Huyen Cau Ngang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (849, 84, N'Huyen Tra Cu')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (850, 84, N'Huyen Duyen Hai')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (851, 84, N'Thi xa Duyen Hai')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (855, 86, N'Thanh pho Vinh Long')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (857, 86, N'Huyen Long Ho')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (858, 86, N'Huyen Mang Thit')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (859, 86, N'Huyen Vung Liem')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (860, 86, N'Huyen Tam Binh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (861, 86, N'Thi xa Binh Minh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (862, 86, N'Huyen Tra On')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (863, 86, N'Huyen Binh Tan')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (866, 87, N'Thanh pho Cao Lanh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (867, 87, N'Thanh pho Sa Dec')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (868, 87, N'Thanh pho Hong Ngu')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (869, 87, N'Huyen Tan Hong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (870, 87, N'Huyen Hong Ngu')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (871, 87, N'Huyen Tam Nong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (872, 87, N'Huyen Thap Muoi')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (873, 87, N'Huyen Cao Lanh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (874, 87, N'Huyen Thanh Binh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (875, 87, N'Huyen Lap Vo')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (876, 87, N'Huyen Lai Vung')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (877, 87, N'Huyen Chau Thanh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (883, 89, N'Thanh pho Long Xuyen')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (884, 89, N'Thanh pho Chau Doc')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (886, 89, N'Huyen An Phu')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (887, 89, N'Thi xa Tan Chau')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (888, 89, N'Huyen Phu Tan')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (889, 89, N'Huyen Chau Phu')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (890, 89, N'Huyen Tinh Bien')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (891, 89, N'Huyen Tri Ton')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (892, 89, N'Huyen Chau Thanh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (893, 89, N'Huyen Cho Moi')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (894, 89, N'Huyen Thoai Son')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (899, 91, N'Thanh pho Rach Gia')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (900, 91, N'Thanh pho Ha Tien')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (902, 91, N'Huyen Kien Luong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (903, 91, N'Huyen Hon Dat')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (904, 91, N'Huyen Tan Hiep')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (905, 91, N'Huyen Chau Thanh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (906, 91, N'Huyen Giong Rieng')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (907, 91, N'Huyen Go Quao')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (908, 91, N'Huyen An Bien')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (909, 91, N'Huyen An Minh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (910, 91, N'Huyen Vinh Thuan')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (911, 91, N'Thanh pho Phu Quoc')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (912, 91, N'Huyen Kien Hai')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (913, 91, N'Huyen U Minh Thuong')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (914, 91, N'Huyen Giang Thanh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (916, 92, N'Quan Ninh Kieu')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (917, 92, N'Quan O Mon')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (918, 92, N'Quan Binh Thuy')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (919, 92, N'Quan Cai Rang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (923, 92, N'Quan Thot Not')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (924, 92, N'Huyen Vinh Thanh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (925, 92, N'Huyen Co Do')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (926, 92, N'Huyen Phong Dien')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (927, 92, N'Huyen Thoi Lai')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (930, 93, N'Thanh pho Vi Thanh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (931, 93, N'Thanh pho Nga Bay')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (932, 93, N'Huyen Chau Thanh A')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (933, 93, N'Huyen Chau Thanh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (934, 93, N'Huyen Phung Hiep')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (935, 93, N'Huyen Vi Thuy')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (936, 93, N'Huyen Long My')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (937, 93, N'Thi xa Long My')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (941, 94, N'Thanh pho Soc Trang')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (942, 94, N'Huyen Chau Thanh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (943, 94, N'Huyen Ke Sach')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (944, 94, N'Huyen My Tu')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (945, 94, N'Huyen Cu Lao Dung')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (946, 94, N'Huyen Long Phu')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (947, 94, N'Huyen My Xuyen')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (948, 94, N'Thi xa Nga Nam')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (949, 94, N'Huyen Thanh Tri')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (950, 94, N'Thi xa Vinh Chau')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (951, 94, N'Huyen Tran De')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (954, 95, N'Thanh pho Bac Lieu')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (956, 95, N'Huyen Hong Dan')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (957, 95, N'Huyen Phuoc Long')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (958, 95, N'Huyen Vinh Loi')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (959, 95, N'Thi xa Gia Rai')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (960, 95, N'Huyen Dong Hai')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (961, 95, N'Huyen Hoa Binh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (964, 96, N'Thanh pho Ca Mau')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (966, 96, N'Huyen U Minh')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (967, 96, N'Huyen Thoi Binh')
GO
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (968, 96, N'Huyen Tran Van Thoi')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (969, 96, N'Huyen Cai Nuoc')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (970, 96, N'Huyen Dam Doi')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (971, 96, N'Huyen Nam Can')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (972, 96, N'Huyen Phu Tan')
INSERT [dbo].[District] ([districtId], [cityId], [districtName]) VALUES (973, 96, N'Huyen Ngoc Hien')
SET IDENTITY_INSERT [dbo].[District] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (11, N'Áo thun Vans T-Shirts VN0A33ZLBLK', N'assets/img/90ca937454cf107b11a214d9482b0714.jpg.webp', 100000, NULL, 1, 1, 1, 0, N'https://tiki.vn/ao-thun-vans-t-shirts-vn0a33zlblk-p140781238.html?spid=140781347')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (12, N'Áo Thun Nam Ng?n Tay 5S SKATEBOARD, Ch?t Micro Modal, M?n,', N'assets/img/90407b5f64281b287e111fc182a224ee.jpg.webp', 100000, NULL, 1, 0, 1, 0, N'https://tiki.vn/ao-thun-nam-ngan-tay-5s-skateboard-chat-micro-modal-min-nhe-chong-tia-uv-thiet-ke-tay-raglan-tre-trung-tso23005-p247401421.html?itm_campaign=tiki-reco_UNK_DT_UNK_UNK_similar-products_UNK_similar-products-v1_202305290600_MD_batched_PID.247401433&itm_medium=CPC&itm_source=tiki-reco&spid=247401433')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (13, N'Áo Phông Nam C? B? Tay Ng?n Hàn Qu?c The Shirts Studio TV10A2017', N'assets/img/209a0b57e5486c604d09034148178379.jpg.webp', 100000, NULL, 2, 0, 1, 0, N'https://tiki.vn/ao-phong-nam-co-be-tay-ngan-han-quoc-the-shirts-studio-tv10a2017-p19807057.html?spid=19807059')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (14, N'Qu?n Jean N? Lung Cao AAA JEANS', N'assets/img/8fe24adcd4ad4c94a9f3fa14449d355c.jpg.webp', 100000, NULL, 2, 0, 1, 0, N'https://tiki.vn/quan-jean-nu-lung-cao-aaa-jeans-p42712220.html?spid=160606008')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (15, N'Qu?n Jean N? ?ng R?ng Lung Cao Aaa Jeans', N'assets/img/45fc1889b34d853a9bfbcef1dc705a28.jpg.webp', 100000, NULL, 2, 0, 1, 0, N'https://tiki.vn/quan-jeans-ong-rong-lung-cao-aaa-jeans-p146957711.html?itm_campaign=SRC_YPD_TKA_PLA_UNK_ALL_UNK_UNK_UNK_UNK_X.175953_Y.1758280_Z.3386241_CN.2.-Group-Ong-Rong---NEW&itm_medium=CPC&itm_source=tiki-ads&spid=146957734')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (16, N'Qu?n jeans skinny n? cao c?p màu den dáng ôm', N'assets/img/5e66b88dc505e73ed9d059ea2cb9e58a.jpg.webp', 100000, NULL, 2, 0, 1, 0, N'https://tiki.vn/quan-jeans-skinny-nu-cao-cap-mau-den-dang-om-p249290129.html?itm_campaign=PDP_YPD_TKA_PLA_UNK_ALL_UNK_UNK_UNK_UNK_X.233128_Y.1815448_Z.3679869_CN.Tim-Kiem--31%2F03%2F2023&itm_medium=CPC&itm_source=tiki-ads&spid=249290135')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (17, N'Ð? boi cho nam qu?n l?ng', N'assets/img/2e98f4a0e28c71c3d77c5582a9fcba42.png.webp', 100000, NULL, 3, 0, 1, 0, N'https://tiki.vn/do-boi-cho-nam-quan-lung-p49165591.html?spid=49165599')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (18, N'B? d? boi nam dài tay qu?n dài hàng nh?p cao c?p', N'assets/img/fa7e8dcc8344c1e588418d13c0b5e141.jpg.webp', 100000, NULL, 3, 0, 0, 0, N'https://tiki.vn/bo-do-boi-nam-dai-tay-quan-dai-hang-nhap-cao-cap-p217707406.html?spid=217707418')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (19, N'Ð? boi nam qu?n l?ng áo c?c tay d?p', N'assets/img/a4623ce45edb541ac3273ab9857267a4.jpg.webp', 100000, NULL, 3, 0, 0, 0, N'https://tiki.vn/do-boi-nam-quan-lung-ao-coc-tay-dep-p180567273.html?spid=180567281')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (20, N'Ð? b? Pijama d? ng? nam cao c?p, v?i COTTON 100 dày d?n & thoáng khí phù h?p cho c? 4 mùa (705)', N'assets/img/009420e1dfe1498d43b2a330777b6c1d.jpg.webp', 100000, NULL, 4, 0, 0, 0, N'https://tiki.vn/do-bo-pijama-do-ngu-nam-cao-cap-vai-cotton-100-day-dan-thoang-khi-phu-hop-cho-ca-4-mua-705-p90599394.html?spid=90599493')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (21, N'B? d? ng? d? m?c nhà pijama nam QM34 QM94', N'assets/img/bbc507449b933a3fc5ae08566ed086ce.jpg.webp', 100000, NULL, 4, 0, 0, 0, N'https://tiki.vn/bo-do-ngu-do-mac-nha-pijama-nam-qm34-qm94-p98128247.html?spid=98128437')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (22, N'B? d? pijama nam qu?n dài, tay dài QM500-QM501-QM502', N'assets/img/e6433f043aec97a7208502fd3ff43d27.jpg.webp', 100000, NULL, 4, 0, 0, 0, N'https://tiki.vn/bo-do-pijama-nam-quan-dai-tay-dai-qm500-qm501-qm502-p176240623.html?itm_campaign=tiki-reco_UNK_DT_UNK_UNK_similar-products_UNK_similar-products-v1_202305290600_MD_batched_PID.176240635&itm_medium=CPC&itm_source=tiki-reco&spid=176240635')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (23, N'B? Qu?n Áo Th? Thao Nam Ch?t Thun Co Giãn, Ð? T?p Gym, Yoga Nam', N'assets/img/56659b9dae2d09ced60a8073de949942.jpg.webp', 100000, NULL, 5, 0, 0, 0, N'https://tiki.vn/bo-quan-ao-the-thao-nam-chat-thun-co-gian-do-tap-gym-yoga-nam-p73576712.html?spid=73576728')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (24, N'Áo body t?p gym sát nách nam Gymate form ôm th? thao m?nh m? ABSN', N'assets/img/d6a935fd4acd045fd2bf310c2c07dec3.png.webp', 100000, NULL, 5, 1, 0, 0, N'https://tiki.vn/ao-body-tap-gym-sat-nach-nam-gymate-form-om-the-thao-manh-me-absn-p144821189.html?itm_campaign=SRC_YPD_TKA_PLA_UNK_ALL_UNK_UNK_UNK_UNK_X.211959_Y.1794279_Z.3585209_CN.%C4%90o-nam&itm_medium=CPC&itm_source=tiki-ads&spid=144821209')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (25, N'Áo th? thao nam Cross-training A-DRY FAST Anta 852237140', N'assets/img/78f665f29542fcef2b62a1cd11306e8c.jpg.webp', 100000, NULL, 5, 1, 0, 0, N'https://tiki.vn/ao-the-thao-nam-cross-training-a-dry-fast-anta-852237140-p242980095.html?itm_campaign=SRC_YPD_TKA_PLA_UNK_ALL_UNK_UNK_UNK_UNK_X.234260_Y.1816580_Z.3685595_CN.Ao-nam-04%2F04%2F2023&itm_medium=CPC&itm_source=tiki-ads&spid=242980105')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (26, N'Jumpsuit ng?n hoa c? tim tay ph?ng dính nút tru?c nang d?ng c?c xinh kèm belt GR194- Hình th?t shop ch?p', N'assets/img/3de2d95f962c051cc78f4ce7cc5d0231.jpg.webp', 100000, NULL, 6, 1, 0, 0, N'https://tiki.vn/jumpsuit-ngan-hoa-co-tim-tay-phong-dinh-nut-truoc-nang-dong-cuc-xinh-kem-belt-gr194-hinh-that-shop-chup-p117079961.html?spid=117079991')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (27, N'jumpsuit tay lu?i th?i trang sang tr?ng', N'assets/img/7591ea69c1c8707d8b0dc51c9ba3ac27.jpg.webp', 100000, NULL, 6, 1, 0, 0, N'https://tiki.vn/jumpsuit-tay-luoi-thoi-trang-sang-trong-p95474015.html?spid=95474033')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (28, N'Jumpsuit h?a ti?t ch?m bi d?p', N'assets/img/ad0115afb4230b89446d04a8fcdd2bea.jpg.webp', 100000, NULL, 6, 1, 0, 0, N'https://tiki.vn/jumpsuit-hoa-tiet-cham-bi-dep-p25770315.html?spid=25770317')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (29, N'Áo vest n? blazer hàn qu?c [HÀNG CAO C?P] form chu?n công s? d? ph?i d?', N'assets/img/64b82453aa00cf9676dfffc12cbaaefe.jpg.webp', 100000, NULL, 7, 1, 0, 0, N'https://tiki.vn/ao-vest-nu-blazer-han-quoc-hang-cao-cap-form-chuan-cong-so-de-phoi-do-p145297132.html?itm_campaign=SRC_YPD_TKA_PLA_UNK_ALL_UNK_UNK_UNK_UNK_X.122069_Y.1189348_Z.3105383_CN.Ad-group-122069&itm_medium=CPC&itm_source=tiki-ads&spid=145297136')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (30, N'Áo Blazers sang ch?nh màu Tr?ng và màu Ðen - MIXMIX- hàng thi?t k?', N'assets/img/9812eb1066abe6fd4a8a2c8e69d4e90a.jpg.webp', 100000, NULL, 7, 1, 0, 0, N'https://tiki.vn/ao-blazers-sang-chanh-mau-trang-va-mau-den-mixmix-hang-thiet-ke-p149414486.html?spid=149414540')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (31, N'Áo Vest M?t L?p 4 Cúc Dáng Ng?n NK FASHION Ki?u Dáng Sang Tr?ng Ch?t V?i Nh?p Hàn Cao C?p UKAK2210002', N'assets/img/0074bacdf692f51d37d590907b234fdb.jpg.webp', 100000, NULL, 7, 1, 0, 0, N'https://tiki.vn/ao-vest-mot-lop-4-cuc-dang-ngan-nk-fashion-kieu-dang-sang-trong-chat-vai-nhap-han-cao-cap-ukak2210002-p203841838.html?itm_campaign=SRC_YPD_TKA_PLA_UNK_ALL_UNK_UNK_UNK_UNK_X.194570_Y.1776897_Z.3549774_CN.AO-VEST&itm_medium=CPC&itm_source=tiki-ads&spid=203841842')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (32, N'Áo Vest Công S? N? NK Fashion Thi?t K? Dáng L?ng Dài Tay Kèm Cúc B?c, Ch?t Li?u Nh?p Hàn Cao C?p NKFAK2109003', N'assets/img/e9f6f54b1bdb083527394c0091dc5aa0.jpg.webp', 2000000, NULL, 7, 0, 0, 0, N'https://tiki.vn/ao-vest-cong-so-nu-nk-fashion-thiet-ke-dang-lung-dai-tay-kem-cuc-boc-chat-lieu-nhap-han-cao-cap-nkfak2109003-p134250937.html?itm_campaign=SRC_YPD_TKA_PLA_UNK_ALL_UNK_UNK_UNK_UNK_X.194570_Y.1776897_Z.3498628_CN.AO-VEST&itm_medium=CPC&itm_source=tiki-ads&spid=134250942')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (33, N'Áo Thun Local Brand Teeworld Ðúng Nh?n Sai Cãi Nam N? Form R?ng Unisex', N'assets/img/aabc884d66875eb90b989ce0ae0b284c.png.webp', 150000, NULL, 1, 0, 0, 0, N'https://tiki.vn/ao-thun-local-brand-teeworld-dung-nhan-sai-cai-nam-nu-form-rong-unisex-p217440155.html?itm_campaign=SRC_YPD_TKA_PLA_UNK_ALL_UNK_UNK_UNK_UNK_X.227551_Y.1809871_Z.3654657_CN.Product-Ads-13%2F03%2F2023&itm_medium=CPC&itm_source=tiki-ads&spid=217440157')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (34, N'Áo So Mi Nam Tay Ng?n H?a Ti?t The Shirts Studio Hàn Qu?c TD12F2394RE', N'assets/img/894648f1052b018cab98a17e3cacda4c.jpg.webp', 100000, NULL, 1, 0, 0, 0, N'https://tiki.vn/ao-so-mi-nam-tay-ngan-hoa-tiet-the-shirts-studio-han-quoc-td12f2394re-p12121014.html?spid=12121016')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (35, N'Áo So Mi Nam Tay Ng?n H?a Ti?t The Shirts Studio Hàn Qu?c TD45F6164RE', N'assets/img/3b446b9d8703bbfad6f87a5e1fb134f0.jpg.webp', 120000, NULL, 1, 0, 0, 0, N'https://tiki.vn/ao-so-mi-nam-tay-ngan-hoa-tiet-the-shirts-studio-han-quoc-td45f6164re-p12109524.html?spid=12109528')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (36, N'Áo thun Teeworld Ð?a Nào Làm Em Bu?n Form R?ng Unisex Nam N?', N'assets/img/fa23362bd1917a35efd0b75645e5a27d.jpg.webp', 200000, NULL, 1, 0, 0, 0, N'https://tiki.vn/ao-thun-teeworld-dua-nao-lam-em-buon-form-rong-unisex-nam-nu-p194406391.html?itm_campaign=SRC_YPD_TKA_PLA_UNK_ALL_UNK_UNK_UNK_UNK_X.227551_Y.1809871_Z.3654655_CN.Product-Ads-13%2F03%2F2023&itm_medium=CPC&itm_source=tiki-ads&spid=194406398')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (37, N'Áo Phông Nam C? B? Tay Ng?n Hàn Qu?c The Shirts Studio TV11A2029', N'assets/img/78344fbb605d734e46fdcab047101738.jpg.webp', 200000, NULL, 1, 0, 0, 0, N'https://tiki.vn/ao-phong-nam-co-be-tay-ngan-han-quoc-the-shirts-studio-tv11a2029-p19807070.html?spid=19807074')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (38, N'Áo Thun Nam Có C? 5S, Ch?t Li?u Viscose Cao C?p, M?m, Mát, Nh?, Thi?t K? Ph?i Màu L?ch Lãm (APC23040)', N'assets/img/385b78a8a8556a44f9162df9ee027b09.jpg.webp', 200000, NULL, 1, 0, 0, 0, N'https://tiki.vn/ao-thun-nam-co-co-5s-chat-lieu-viscose-cao-cap-mem-mat-nhe-thiet-ke-phoi-mau-lich-lam-apc23040-p250069241.html?itm_campaign=SRC_YPD_TKA_PLA_UNK_ALL_UNK_UNK_UNK_UNK_X.247063_Y.1829383_Z.3748186_CN.Ao-thun-nam-co-co-25%2F05%2F2023&itm_medium=CPC&itm_source=tiki-ads&spid=250069259')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (39, N'Mens Workout Running Shirts, Quick Dry Cool Short Sleeve Athletic Shirts, Active Sport Gym T-Shirts', N'assets/img/02501c5ce9608dc5e48450f6fc17d5ed.jpg.webp', 100000, NULL, 1, 0, 0, 0, N'https://tiki.vn/men-s-workout-running-shirts-quick-dry-cool-short-sleeve-athletic-shirts-active-sport-gym-t-shirts-p178708826.html?spid=178708834')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (40, N'Áo so mi Shirts casual style thô s?c xanh c? 313SH1083 ADORE DRESS', N'assets/img/f5853a785c013f4f2ab46b24f05c9ed1.jpg.webp', 200000, NULL, 1, 0, 0, 0, N'https://tiki.vn/ao-so-mi-shirts-casual-style-tho-soc-xanh-co-313sh1083-adore-dress-p259512489.html?spid=259512493')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (41, N'Áo thun nam c? tim ng?n tay d?p nhi?u màu d? size ( có size l?n cho ngu?i 100 kg )', N'assets/img/ff027530e3e2aa36b4b4ac1e69767c1e.jpg.webp', 80000, NULL, 1, 0, 0, 0, N'https://tiki.vn/ao-thun-nam-co-tim-ngan-tay-dep-nhieu-mau-du-size-co-size-lon-cho-nguoi-100-kg-p138748093.html?itm_campaign=SRC_YPD_TKA_PLA_UNK_ALL_UNK_UNK_UNK_UNK_X.213043_Y.1795363_Z.3590137_CN.nam-ngan-co-tim&itm_medium=CPC&itm_source=tiki-ads&spid=138748274')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (42, N'Áo thun nam polo thêu g?u basic c? b? cao c?p v?i POLY CÁ S?U dày d?n thoáng mát tr? trung nang d?ng - SU 260', N'assets/img/dc63e0524ae0f7b45914eff9325f95e9.jpg.webp', 200000, NULL, 1, 0, 0, 0, N'https://tiki.vn/ao-thun-nam-polo-theu-gau-basic-co-be-cao-cap-vai-poly-ca-sau-day-dan-thoang-mat-tre-trung-nang-dong-su-260-p191390722.html?spid=191390781')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (43, N'Qu?n Bò N?, Qu?n Jeans Nu ?Ng R?ng C?p CAo Túi H?p Cho N?', N'assets/img/54eff4ea3ba0345ef0db48bf50db734e.JPG.webp', 250000, NULL, 2, 0, 0, 0, N'https://tiki.vn/quan-bo-nu-quan-jeans-nu-ong-rong-cap-cao-tui-hop-cho-nu-p145219113.html?spid=145219119')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (44, N'Qu?n Jean N? ?ng R?ng Lung Cao Aaa Jeans', N'assets/img/532e612efc1319356475895b7eab515a.jpg.webp', 180000, NULL, 2, 0, 0, 0, N'https://tiki.vn/quan-jeans-ong-rong-lung-cao-aaa-jeans-p146957711.html?spid=146957765')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (45, N'Qu?n Mom Jeans Classic Blue Aaa Jeans', N'assets/img/8cb72e6d9e65103f7452f90bb59d8842.jpg.webp', 190000, NULL, 2, 0, 0, 0, N'https://tiki.vn/quan-mom-jeans-classic-blue-aaa-jeans-p119112669.html?itm_campaign=SRC_YPD_TKA_PLA_UNK_ALL_UNK_UNK_UNK_UNK_X.52833_Y.623291_Z.3057893_CN.6.-Mom-jeans&itm_medium=CPC&itm_source=tiki-ads&spid=119112671')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (46, N'Qu?n bò ?ng r?ng n? c?p cao CHERRY qu?n jeans ?ng r?ng lung cao, v?i bò dày d?p , không giãn ,dáng suông T008', N'assets/img/bf7f7c6e655ec27265229a3a20618356.jpg.webp', 200000, NULL, 2, 0, 0, 0, N'https://tiki.vn/quan-bo-ong-rong-nu-cap-cao-cherry-quan-jeans-ong-rong-lung-cao-vai-bo-day-dep-khong-gian-dang-suong-t008-p144082317.html?spid=144082547')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (47, N'Qu?n jeans 9 t?c n? ?ng loe màu xanh nh?t', N'assets/img/bd625aef88c9f42f9a4cae43447fa5c8.jpg.webp', 200000, NULL, 2, 0, 0, 0, N'https://tiki.vn/quan-jeans-9-tac-nu-ong-loe-mau-xanh-nhat-p83607102.html?spid=83607125')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (48, N'Qu?n jeans skinny n? màu den lung cao chính hãng', N'assets/img/4653f53b4ed4ed1ddb2dc30779ddd242.jpg.webp', 150000, NULL, 2, 0, 0, 0, N'https://tiki.vn/quan-jeans-skinny-nu-mau-den-lung-cao-chinh-hang-p51074268.html?spid=51074274')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (49, N'Qu?n jean n? ?ng Baggy YODY ph?i c?p cao phong cách tôn dáng - QJN3076', N'assets/img/ed408813796a6736ed1b285694d31fb9.jpg.webp', 250000, NULL, 2, 0, 0, 0, N'https://tiki.vn/quan-jean-nu-ong-baggy-yody-phoi-khuy-cap-vua-phong-cach-ulzzang-han-quoc-hai-mau-cuc-dep-qjn3076-p144870196.html?itm_campaign=SRC_YPD_TKA_PLA_UNK_ALL_UNK_UNK_UNK_UNK_X.237897_Y.1820217_Z.3705073_CN.QJN3076-18%2F4&itm_medium=CPC&itm_source=tiki-ads&spid=120527948')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (50, N'Qu?n Jean N? ?ng R?ng Lung Cao Aaa Jeans', N'assets/img/45fc1889b34d853a9bfbcef1dc705a28.jpg.webp', 150000, NULL, 2, 0, 0, 0, N'https://tiki.vn/quan-jeans-ong-rong-lung-cao-aaa-jeans-p146957711.html?itm_campaign=SRC_YPD_TKA_PLA_UNK_ALL_UNK_UNK_UNK_UNK_X.175953_Y.1758280_Z.3386241_CN.2.-Group-Ong-Rong---NEW&itm_medium=CPC&itm_source=tiki-ads&spid=146957734')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (51, N'Qu?n Jeans N? Dáng Suông Rách 2 G?i Full Size Tr? Trung Cá Tính', N'assets/img/9dd5547b62f7340389ee2892e1c2ecb7.jpg.webp', 180000, NULL, 2, 0, 0, 0, N'https://tiki.vn/quan-jeans-nu-dang-suong-rach-2-goi-full-size-tre-trung-ca-tinh-p242698850.html?spid=242698856')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (52, N'Qu?n jeans skinny n? cao c?p màu den dáng ôm', N'assets/img/094498df19fb63715b0c0f491875870b.jpg.webp', 200000, NULL, 2, 0, 0, 0, N'https://tiki.vn/quan-jeans-skinny-nu-cao-cap-mau-den-dang-om-p249290129.html?spid=249290143')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (53, N'Qu?n Jeans n? r? Lung Thun-JGIAYDAI', N'assets/img/2c5d9a5f231ba91321cdeaf6a101f049.jpg.webp', 150000, NULL, 2, 0, 0, 0, N'https://tiki.vn/quan-jeans-nu-ru-lung-thun-jgiaydai-p102099787.html?spid=102099803')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (54, N'Ð? Boi N? Tay Dài Qu?n Dài N?ng H?ng Ôm Thân G?i C?m AT204 MayHomes Pink Colored Long Sleeves And Long Pants Women Swimwear Set, UPF 50 Sun Protection', N'assets/img/8ba0b292f22882f387c49f38d78ea104.png.webp', 300000, NULL, 3, 0, 0, 0, N'https://tiki.vn/do-boi-nu-tay-dai-quan-dai-nang-hong-om-than-goi-cam-at204-mayhomes-pink-colored-long-sleeves-and-long-pants-women-swimware-set-upf-50-sun-protection-p75447661.html?spid=75447665')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (55, N'Ð? Boi N? M?t M?nh Kín Ðáo Ki?u Váy Th? Thao ATI32 MayHomes Women One-Piece Swimwear', N'assets/img/bae83f500461916c631f5843fd383ca2.png.webp', 250000, NULL, 3, 0, 0, 0, N'https://tiki.vn/do-boi-nu-mot-manh-kin-dao-kieu-vay-the-thao-ati32-mayhomes-women-one-piece-swimwear-p175173030.html?spid=175173032')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (56, N'Ð? Boi Hai M?nh N? Tay Dài Qu?n Dài H?a Ti?t Lovely Và Hoa Xinh AT228 MayHomes Long Sleeves And Long Pants Women Swimwear With UPF 50 Sun Protection', N'assets/img/dd4db1b1a23558af42a0f2ef56ba874d.png.webp', 250000, NULL, 3, 0, 0, 0, N'https://tiki.vn/do-boi-hai-manh-nu-tay-dai-quan-dai-hoa-tiet-lovely-va-hoa-xinh-at228-mayhomes-long-sleeves-and-long-pants-women-swimwear-with-upf-50-sun-protection-p182995569.html?spid=182995626')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (57, N'Bikini Hai M?nh Tôn Dáng D? Thuong AT222 MayHomes Ð? Boi N? Two-Piece Swimwear', N'assets/img/d50ee7738b9f5256b78c1f329cb40518.png.webp', 250000, NULL, 3, 0, 0, 0, N'https://tiki.vn/bikini-hai-manh-ton-dang-de-thuong-at222-mayhomes-do-boi-nu-two-piece-swimwear-p177264017.html?spid=177264021')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (58, N'Ð? Boi N? Hai M?nh Ki?u Dáng Th? Thao Ða Nang ATO67 MayHomes Set Áo Và Short Women Swimwear', N'assets/img/670636b057cf4065ee6e30de00d77cb5.png.webp', 200000, NULL, 3, 0, 0, 0, N'https://tiki.vn/do-boi-nu-hai-manh-kieu-dang-the-thao-da-nang-ato67-mayhomes-set-ao-va-short-women-swimwear-p176710545.html?spid=176710549')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (59, N'Ð? Boi Hai M?nh Th? Thao Tr? Trung AT219 Áo T?m Ða Nang Women Short Swimwear Set For Swimming And Sports', N'assets/img/757aa2d8e6c5c8578f360ff16868156f.png.webp', 200000, NULL, 3, 0, 0, 0, N'https://tiki.vn/do-boi-hai-manh-the-thao-tre-trung-at219-ao-tam-da-nang-danh-cho-boi-loi-the-thao-women-short-swimwear-set-for-swimming-and-sports-p168092538.html?spid=168092540')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (60, N'Ð? Boi N? Hai M?nh Cute Tôn Dáng Ki?u Croptop AT220 MayHomes Áo T?m Women Swimwear Set', N'assets/img/0b69535ba0b0168ae494b7ce16eb061a.png.webp', 200000, NULL, 3, 0, 0, 0, N'https://tiki.vn/do-boi-nu-hai-manh-cute-ton-dang-kieu-croptop-at220-mayhomes-ao-tam-women-swimwear-set-p168356585.html?spid=168356587')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (61, N'Ð? Boi N? Hai M?nh Tay Dài Ch?ng N?ng Bi?n Xanh Áo Dài Tay Qu?n Lung Cao Tuoi Tr? ATI87 MayHomes, Sun Protection UPF50+, Long-Sleeve Swimwear', N'assets/img/ae449321fd4c8a082602af6a88e63096.png.webp', 200000, NULL, 3, 0, 0, 0, N'https://tiki.vn/do-boi-nu-hai-manh-tay-dai-chong-nang-bien-xanh-ao-dai-tay-quan-lung-cao-tuoi-tre-ati87-mayhomes-sun-protection-upf50-long-sleeve-swimwear-p186749768.html?spid=186749776')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (62, N'Bikini Hai M?nh G?i C?m Phong Cách Korea AT224 MayHomes Ð? Boi N? Women Two-Piece Swimwear', N'assets/img/b8bb0edd27413382239c3749ea598301.jpg.webp', 150000, NULL, 3, 0, 0, 0, N'https://tiki.vn/bikini-hai-manh-goi-cam-phong-cach-korea-at224-mayhomes-do-boi-nu-women-two-piece-swimwear-p177267838.html?spid=177267842')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (63, N'Ð? Boi N? M?t M?nh Ki?u Váy Hoa H? Lung G?i C?m ATI27 MayHomes One-Piece Swimwear With Backless Top', N'assets/img/ddf4e916aa4a6abe4a38ec0c8930cf5d.png.webp', 180000, NULL, 3, 0, 0, 0, N'https://tiki.vn/do-boi-nu-mot-manh-kieu-vay-hoa-ho-lung-goi-cam-ati27-mayhomes-one-piece-swimwear-with-backless-top-p176775679.html?spid=176775683')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (64, N'Ð? Boi Bikini Cao C?p Màu Ðen S?c Swimwear By Sabina SAWK009BK', N'assets/img/196fbb73e6fa5d8e91e1ec771d2ce674.jpg.webp', 180000, NULL, 3, 0, 0, 0, N'https://tiki.vn/do-boi-bikini-cao-cap-mau-den-soc-swimwear-by-sabina-sawk009bk-p73571982.html?spid=73571986')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (65, N'Lovely Sleepwear', N'assets/img/ef6d716951f951d477fbb5eae7d37352.jpg.webp', 250000, NULL, 4, 0, 0, 0, N'https://tiki.vn/lovely-sleepwear-p125438068.html?spid=125438073')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (66, N'Lovely Sleepwear', N'assets/img/070ebd172aa19fa73e64dad43ecd02d6.jpg.webp', 200000, NULL, 4, 0, 0, 0, N'https://tiki.vn/lovely-sleepwear-p125438779.html?spid=125438789')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (67, N'Silk Satin Sleepwear', N'assets/img/99aa4e3f5c9dddb8a08a8ad5eafb9724.jpg.webp', 180000, NULL, 4, 0, 0, 0, N'https://tiki.vn/silk-satin-sleepwear-p125439530.html?spid=125439532')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (68, N'Silk Satin Sleepwear', N'assets/img/4e9ba255acefd0b93c638f2e5661d66c.jpg.webp', 220000, NULL, 4, 0, 0, 0, N'https://tiki.vn/silk-satin-sleepwear-p125439545.html?spid=125439549')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (69, N'Line Strawberry Sleepwear', N'assets/img/125a9081016ab553f1721588acb5684d.jpg.webp', 230000, NULL, 4, 0, 0, 0, N'https://tiki.vn/line-strawberry-sleepwear-p125439001.html?spid=125439033')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (70, N'Silk Satin Sleepwear', N'assets/img/35ae5dc7d2cacff4e6e9158edc9d3ff9.jpg.webp', 250000, NULL, 4, 0, 0, 0, N'https://tiki.vn/silk-satin-sleepwear-p125438516.html?spid=125438525')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (71, N'Lace Trim Lingerie Satin Sleepwear', N'assets/img/2e4b8c8e9467c17200b142a4776491d7.jpg.webp', 250000, NULL, 4, 0, 0, 0, N'https://tiki.vn/lace-trim-lingerie-satin-sleepwear-p209567038.html?spid=209567051')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (72, N'Dress Nightgown Sleepwear Pajama W/ Chest Pads for', N'assets/img/5454ccba3d060f1cbbe46af411ad11ae.jpg.webp', 180000, NULL, 4, 0, 0, 0, N'https://tiki.vn/dress-nightgown-sleepwear-pajama-w-chest-pads-for-p209555294.html?spid=209555302')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (73, N'Womens Lingerie Sleepwear Satin Bowknot Lace Cami Dress', N'assets/img/e549d0ebc24bbfa6b7407dffeb302722.jpg.webp', 200000, NULL, 4, 0, 0, 0, N'https://tiki.vn/womens-lingerie-sleepwear-satin-bowknot-lace-cami-dress-p252926628.html?spid=252926632')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (74, N'7Pieces Womens Pajamas Set Printed Sleepwear Suits Loungewear', N'assets/img/ec187f168d8c724614af8cb691342a55.jpg.webp', 180000, NULL, 4, 0, 0, 0, N'https://tiki.vn/7pieces-womens-pajamas-set-printed-sleepwear-suits-loungewear-p76302237.html?spid=76302267')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (75, N'SX 15 - Váy ng? sexy QU?NG CHÂU - MU?I SLEEPWEAR', N'assets/img/45d3f4ae50e25806e872d42dc9b46c0e.jpg.webp', 200000, NULL, 4, 0, 0, 0, N'https://tiki.vn/sx-15-vay-ngu-sexy-quang-chau-muoi-sleepwear-p190207934.html?spid=190207940')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (76, N'Womans Cycling Clothing Bicycle Jersey Sportswear Long Sleeve Top Shirt', N'assets/img/19c947c78a49ab4eb26f39902b783fca.jpg.webp', 300000, NULL, 5, 0, 0, 0, N'https://tiki.vn/woman-s-cycling-clothing-bicycle-jersey-sportswear-long-sleeve-top-shirt-p97426107.html?spid=97426109')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (77, N'Set d? t?p Yoga Gym thi?t k? cao c?p Hibi Sports Áo 2 dây c? y?m - Qu?n lung cao nâng mông tôn dáng H110 - Áo có mút nâng ng?c', N'assets/img/2c488387fa3cd44a9cc94b801d556b3f.jpg.webp', 280000, NULL, 5, 0, 0, 0, N'https://tiki.vn/set-do-tap-yoga-gym-thiet-ke-cao-cap-hibi-sports-ao-2-day-co-yem-quan-lung-cao-nang-mong-ton-dang-h110-ao-co-mut-nang-nguc-p52239430.html?itm_campaign=SRC_YPD_TKA_PLA_UNK_ALL_UNK_UNK_UNK_UNK_X.198960_Y.1781280_Z.3522195_CN.01.-H101-H110-H112-H126-H128-H133-H134&itm_medium=CPC&itm_source=tiki-ads&spid=200765504')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (78, N'Women Sports Leggings Printed Tight Sportswear for Yoga Running Workout', N'assets/img/c650e4535672f579fc42035f0fdecff8.jpg.webp', 200000, NULL, 5, 0, 0, 0, N'https://tiki.vn/women-sports-leggings-printed-tight-sportswear-for-yoga-running-workout-p217121933.html?spid=217121935')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (79, N'Qu?n t?p Yoga Gym l?ng dành cho n? Hibi Sports QL404 - Qu?n lung cao có túi', N'assets/img/4a7bcb0dae272c90134284bd602c7cfc.jpg.webp', 250000, NULL, 5, 0, 0, 0, N'https://tiki.vn/quan-tap-yoga-gym-lung-danh-cho-nu-hibi-sports-ql404-quan-lung-cao-co-tui-p92228061.html?itm_campaign=SRC_YPD_TKA_PLA_UNK_ALL_UNK_UNK_UNK_UNK_X.124869_Y.1228409_Z.2825170_CN.07.-Quan-le&itm_medium=CPC&itm_source=tiki-ads&spid=92228063')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (80, N'Set d? t?p Yoga Hibi Sports H134 - Áo bra 2 dây dan tam giác - Kèm mút nâng ng?c', N'assets/img/71432c3495dc7ea410d1fed4abde253f.jpg.webp', 230000, NULL, 5, 0, 0, 0, N'https://tiki.vn/set-do-tap-yoga-hibi-sports-h134-ao-bra-2-day-dan-tam-giac-kem-mut-nang-nguc-p91774649.html?itm_campaign=SRC_YPD_TKA_PLA_UNK_ALL_UNK_UNK_UNK_UNK_X.198960_Y.1781280_Z.3522200_CN.01.-H101-H110-H112-H126-H128-H133-H134&itm_medium=CPC&itm_source=tiki-ads&spid=91774651')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (81, N'2 Packs Cycling Sleeveless Vest Cyclists Sportswear M-Black+Green', N'assets/img/0b73cd55c3bac10f046657dbe946212e.jpg.webp', 350000, NULL, 5, 0, 0, 0, N'https://tiki.vn/2-packs-cycling-sleeveless-vest-cyclists-sportswear-m-black-green-p80625456.html?spid=80625457')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (82, N'Mens Cycling Shorts Loose-Fit Bicycle MTB Mountain Bike Lightweight Pants Sportswear - Various Sizes', N'assets/img/e969f698ce9c49230d499494b9c0babe.jpg.webp', 180000, NULL, 5, 0, 0, 0, N'https://tiki.vn/men-s-cycling-shorts-loose-fit-bicycle-mtb-mountain-bike-lightweight-pants-sportswear-various-sizes-p109631539.html?spid=109631564')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (83, N'Áo t?p Yoga Gym dây ph?i tr?ng BA507 Hibi Sports - Có mút nâng ng?c bên trong', N'assets/img/f7ec94a658900d0cf299cd7f0f8b5542.jpg.webp', 250000, NULL, 5, 0, 0, 0, N'https://tiki.vn/ao-tap-yoga-gym-day-phoi-trang-ba507-hibi-sports-co-mut-nang-nguc-ben-trong-p114230666.html?itm_campaign=SRC_YPD_TKA_PLA_UNK_ALL_UNK_UNK_UNK_UNK_X.66661_Y.583175_Z.2892317_CN.05.-Ao-tap&itm_medium=CPC&itm_source=tiki-ads&spid=114230716')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (84, N'Set Qu?n áo t?p Yoga Gym dùi 6 dây thi?t k? cao c?p Hibi Sports Áo 6 dây dan - Qu?n lung cao ngang g?i nang d?ng H112 - Áo có mút nâng ng?c', N'assets/img/830913efcf9e6564dfd27645261113c9.jpg.webp', 350000, NULL, 5, 0, 0, 0, N'https://tiki.vn/set-quan-ao-tap-yoga-gym-dui-6-day-thiet-ke-cao-cap-hibi-sports-ao-6-day-dan-quan-lung-cao-ngang-goi-nang-dong-h112-ao-co-mut-nang-nguc-p52702689.html?itm_campaign=SRC_YPD_TKA_PLA_UNK_ALL_UNK_UNK_UNK_UNK_X.198960_Y.1781280_Z.3522196_CN.01.-H101-H110-H112-H126-H128-H133-H134&itm_medium=CPC&itm_source=tiki-ads&spid=52702715')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (85, N'Womens Leggings - No See-Through High Waisted Tummy Control Yoga Pants - Workout Running Legging Sportswear', N'assets/img/c0700cd16b800bb01449968a4e48dac4.jpg.webp', 250000, NULL, 5, 0, 0, 0, N'https://tiki.vn/womens-leggings-no-see-through-high-waisted-tummy-control-yoga-pants-workout-running-legging-sportswear-p99367368.html?spid=99367370')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (86, N'Set d? t?p Yoga Gym 8 dây Thi?t k? cao c?p Hibi Sports Mã H101 - Áo bra 8 dây - Qu?n lung cao ph?i lu?i tôn dáng - Áo có mút nâng ng?c', N'assets/img/432c8b64162972deb9455278d35277a0.jpg.webp', 180000, NULL, 5, 0, 0, 0, N'https://tiki.vn/set-do-tap-yoga-gym-8-day-thiet-ke-cao-cap-hibi-sports-ma-h101-ao-bra-8-day-quan-lung-cao-phoi-luoi-ton-dang-ao-co-mut-nang-nguc-p57789702.html?itm_campaign=SRC_YPD_TKA_PLA_UNK_ALL_UNK_UNK_UNK_UNK_X.198960_Y.1781280_Z.3522194_CN.01.-H101-H110-H112-H126-H128-H133-H134&itm_medium=CPC&itm_source=tiki-ads&spid=57789722')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (87, N'Áo Thun Nam S?c Gân To Ng?n Tay C? Tròn - X9 Sportswear - X030', N'assets/img/f26be22fc45406fad859e27bcf33ba14.jpg.webp', 300000, NULL, 5, 0, 0, 0, N'https://tiki.vn/ao-thun-nam-soc-gan-to-ngan-tay-co-tron-x9-sportswear-x030-p212470488.html?spid=212470498')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (88, N'Jumpsuits ?ng R?ng C?t No Eo (KE`M VIDEO CÂ?N CHÂ´T VA?I)', N'assets/img/0f425d15b78bf53c235d9a212b64c5a6.jpg.webp', 300000, NULL, 6, 0, 0, 0, N'https://tiki.vn/jumpsuits-ong-rong-cot-no-eo-thun-deo-in-3d-hau-nguyen-store-p128626304.html?spid=128626305')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (89, N'[Có s?n + V?i Form d?p] Set Jumpsuits Áo li?n qu?n túi h?p dài tay có tách ?ng r?i ph?i dây dù c?c ch?t cho Nam N?', N'assets/img/ee8bc38439923862eeabab05226a1eac.jpg.webp', 350000, NULL, 6, 0, 0, 0, N'https://tiki.vn/co-san-vai-form-dep-set-jumpsuits-ao-lien-quan-tui-hop-dai-tay-co-tach-ong-roi-phoi-day-du-cuc-chat-cho-nam-nu-p165807675.html?spid=165807681')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (90, N'JUMPSUITS CÔNG S? T?O DÁNG CAO_NHI?U SIZE CHO NGU?I M?P_TB 206', N'assets/img/70b813a07ecb7d3cf208e033233b02b1.jpg.webp', 230000, NULL, 6, 0, 0, 0, N'https://tiki.vn/jumpsuits-cong-so-tao-dang-cao_nhieu-size-cho-nguoi-map_tb-206-p37402341.html?spid=37402345')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (91, N'Jumpsuits L?a So Mi Xòe In H?a Ti?t[Hàng Thi?t K?]', N'assets/img/0fce4bbd5035fe9fcce7662dc10a5b4f.jpg.webp', 250000, NULL, 6, 0, 0, 0, N'https://tiki.vn/jumpsuits-lua-so-mi-xoe-in-hoa-tiet-hang-thiet-ke-p129955399.html?spid=129955407')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (92, N'Jumpsuits Tr? Vai Eo Thun H?a Ti?t Ch?m Bi Duyên Dáng', N'assets/img/8abe0dcb0a26f610656de8de64b79707.jpg.webp', 180000, NULL, 6, 0, 0, 0, N'https://tiki.vn/jumpsuits-tre-vai-eo-thun-hoa-tiet-cham-bi-duyen-dang-p114655184.html?spid=114655186')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (93, N'Jumpsuits Th?i Trang N?', N'assets/img/96848dc3ebf3f847e6fbd47591a15490.jpg.webp', 200000, NULL, 6, 0, 0, 0, N'https://tiki.vn/jumpsuits-thoi-trang-nu-p54008313.html?spid=71965934')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (94, N'JUMPSUITS Ð? BAY QU?N NG?N H?NG SUÔNG TRON C? SO MI VEST PLAYSUITS ÐI TI?C ÐI CHOI D?O PH? ÐI BI?N', N'assets/img/e409407cf6b06c4b48366914a82d5bd9.jpg.webp', 230000, NULL, 6, 0, 0, 0, N'https://tiki.vn/jumpsuits-do-bay-quan-ngan-hong-suong-tron-co-so-mi-vest-playsuits-di-tiec-di-choi-dao-pho-di-bien-p248934394.html?spid=248934395')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (95, N'Jumpsuits Dài C? Vest Th?i Trang', N'assets/img/30f7beb62d38e7c0b8c3d0f5b9f5e814.jpg.webp', 200000, NULL, 6, 0, 0, 0, N'https://tiki.vn/jumpsuits-dai-co-vest-thoi-trang-p115241437.html?spid=115241438')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (96, N'Jumpsuits hàng thi?t k? màu cam', N'assets/img/9c98f36bd612ce429d0261a69ced314d.jpg.webp', 200000, NULL, 6, 0, 0, 0, N'https://tiki.vn/jumpsuits-hang-thiet-ke-mau-cam-p92090309.html?spid=92090310')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (97, N'Jumpsuits d? ti?c Wabisaib N1011', N'assets/img/e81debf7911309d8b4bd6f0c748c7050.jpg.webp', 250000, NULL, 6, 0, 0, 0, N'https://tiki.vn/jumpsuits-du-tiec-wabisaib-n1011-p193578515.html?spid=193578558')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (98, N'Set Jumpsuits Jeans N? S524 - Free Size', N'assets/img/5a7d24c4a1b2a1363bb4259c2c58e281.jpg.webp', 180000, NULL, 6, 0, 0, 0, N'https://tiki.vn/set-jumpsuits-jeans-nu-s524-free-size-p10142675.html?spid=10142676')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (99, N'Jumpsuits Dài C? Y?m Ðính H?t Duyên Dáng', N'assets/img/b5b6d7c3e80ad94c0b92dd25a4d6ef26.jpg.webp', 200000, NULL, 6, 0, 0, 0, N'https://tiki.vn/jumpsuits-dai-co-yem-dinh-hat-duyen-dang-p114578864.html?spid=114578865')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (100, N'Áo khoác blazers big size (MS 3001)', N'assets/img/f873d4eab14424229deaa326b7dcd91e.jpg.webp', 230000, NULL, 7, 0, 0, 0, N'https://tiki.vn/ao-khoac-blazers-big-size-ms-3001-p143761290.html?spid=143761298')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (101, N'Áo Blazers sang ch?nh màu Tr?ng và màu Ðen - MIXMIX- hàng thi?t k?', N'assets/img/9812eb1066abe6fd4a8a2c8e69d4e90a.jpg.webp', 300000, NULL, 7, 0, 0, 0, N'https://tiki.vn/ao-blazers-sang-chanh-mau-trang-va-mau-den-mixmix-hang-thiet-ke-p149414486.html?spid=149414540')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (102, N'ÁO KHOÁC BLAZERS FASHION', N'assets/img/bcb36706f917e2b9084ef37f7bc850be.jpg.webp', 230000, NULL, 7, 0, 0, 0, N'https://tiki.vn/ao-khoac-blazers-fashion-p107541500.html?spid=107541557')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (103, N'ÁO BLAZERS 3 MÀU CO B?N', N'assets/img/c94d64a4e76bfaa5a5e81578335e782c.jpg.webp', 180000, NULL, 7, 0, 0, 0, N'https://tiki.vn/ao-blazers-3-mau-co-ban-p92949212.html?spid=92949219')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (104, N'Áo Vest M?t L?p 4 Cúc Dáng Ng?n NK FASHION Ki?u Dáng Sang Tr?ng Ch?t V?i Nh?p Hàn Cao C?p UKAK2210002', N'assets/img/0074bacdf692f51d37d590907b234fdb.jpg.webp', 230000, NULL, 7, 0, 0, 0, N'https://tiki.vn/ao-vest-mot-lop-4-cuc-dang-ngan-nk-fashion-kieu-dang-sang-trong-chat-vai-nhap-han-cao-cap-ukak2210002-p203841838.html?itm_campaign=SRC_YPD_TKA_PLA_UNK_ALL_UNK_UNK_UNK_UNK_X.194570_Y.1776897_Z.3549774_CN.AO-VEST&itm_medium=CPC&itm_source=tiki-ads&spid=203841842')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (105, N'Áo Thun Nam ERIC 5S (6 Màu) Ch?t Li?u Thoáng Mát, Co Giãn T?t, Th?m Hút M? Hôi, Tho?i Mái V?n Ð?ng (TSO22098-02)', N'assets/img/5a9ae81ff4fa29615cfe1c72783a0696.png.webp', 180000, NULL, 1, 0, 0, 0, N'https://tiki.vn/ao-thun-nam-eric-5s-6-mau-chat-lieu-thoang-mat-co-gian-tot-tham-hut-mo-hoi-thoai-mai-van-dong-tso22098-02-p174489321.html?itm_campaign=SRC_YPD_TKA_PLA_UNK_ALL_UNK_UNK_UNK_UNK_X.231092_Y.1813412_Z.3673390_CN.%5BApr-%2723%5D-Ao-thun-nam-ngan-tay-khong-co&itm_medium=CPC&itm_source=tiki-ads&spid=174489339')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (106, N'Áo thun tron Teeworld Basic Nam N? Nhi?u Màu Form R?ng Unisex', N'assets/img/8542759d4b8a3779293ffb4a8acedf1c.png.webp', 170000, NULL, 1, 0, 0, 0, N'https://tiki.vn/ao-thun-tron-teeworld-basic-nam-nu-nhieu-mau-form-rong-unisex-p211296548.html?itm_campaign=SRC_YPD_TKA_PLA_UNK_ALL_UNK_UNK_UNK_UNK_X.227551_Y.1809871_Z.3654658_CN.Product-Ads-13%2F03%2F2023&itm_medium=CPC&itm_source=tiki-ads&spid=195352196')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (107, N'Áo thun tron nam ZAVAS, c? tròn ng?n tay ch?t v?i cotton cao c?p, áo phông tiêu chu?n thoáng mát th?m hút m? hôi không gây nóng n?c, co giãn t?t - ZT01', N'assets/img/f1e0f971d77c4839a2f19870da5ca4f1.jpg.webp', 150000, NULL, 1, 0, 0, 0, N'https://tiki.vn/ao-thun-tron-nam-zavas-co-tron-ngan-tay-chat-vai-cotton-cao-cap-ao-phong-tieu-chuan-thoang-mat-tham-hut-mo-hoi-khong-gay-nong-nuc-co-gian-tot-zt01-p158720374.html?itm_campaign=SRC_YPD_TKA_PLA_UNK_ALL_UNK_UNK_UNK_UNK_X.228535_Y.1810855_Z.3659009_CN.ZT01-17%2F03%2F2023&itm_medium=CPC&itm_source=tiki-ads&spid=158720378')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (108, N'Áo Phông Nam Tay Ng?n 5S Ph?i Màu, V?i Cotton Premium Cao C?p, Thoáng Mát, Tr? Trung (00TSO23001)', N'assets/img/cebd2d94ba6fc4aac137070d407a06d1.jpg.webp', 180000, NULL, 1, 0, 0, 0, N'https://tiki.vn/ao-phong-nam-tay-ngan-5s-phoi-mau-vai-cotton-premium-cao-cap-thoang-mat-tre-trung-00tso23001-p251335666.html?itm_campaign=SRC_YPD_TKA_PLA_UNK_ALL_UNK_UNK_UNK_UNK_X.231092_Y.1813412_Z.3710283_CN.%5BApr-%2723%5D-Ao-thun-nam-ngan-tay-khong-co&itm_medium=CPC&itm_source=tiki-ads&spid=251335676')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (109, N'Womens Letter Print Short Sleeve Crewneck Cotton Casual T-Shirts', N'assets/img/d8cfa05855bf17b649970774750059b8.jpg.webp', 130000, NULL, 1, 0, 0, 0, N'https://tiki.vn/women-s-letter-print-short-sleeve-crewneck-cotton-casual-t-shirts-p112946855.html?spid=112946857')
GO
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (110, N'Áo Thun Nam Ng?n Tay 5S FUTURE, Ch?t Cotton USA, M?m M?n, Th?m Hút, Mát, Co Giãn, In Tr? Trung (TSO23017)', N'assets/img/7dabc89fb055e3180d66a51d91955636.jpg.webp', 130000, NULL, 1, 0, 0, 0, N'https://tiki.vn/ao-thun-nam-ngan-tay-5s-future-chat-cotton-usa-mem-min-tham-hut-mat-co-gian-in-tre-trung-tso23017-p241732326.html?itm_campaign=SRC_YPD_TKA_PLA_UNK_ALL_UNK_UNK_UNK_UNK_X.231092_Y.1813412_Z.3673389_CN.%5BApr-%2723%5D-Ao-thun-nam-ngan-tay-khong-co&itm_medium=CPC&itm_source=tiki-ads&spid=241732328')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (111, N'Mens Cotton -Shirts Women Modal Shirt Plain T Shirt Tee', N'assets/img/27c2ab5636960600ca92f171e8dd1220.jpg.webp', 100000, NULL, 1, 0, 0, 0, N'https://tiki.vn/mens-cotton-shirts-women-modal-shirt-plain-t-shirt-tee-p252931375.html?spid=252931402')
INSERT [dbo].[Product] ([productId], [productName], [productImg], [productPrice], [productDescription], [categoryId], [productIsFeatured], [productIsRecent], [productDeleted], [URL]) VALUES (112, N'Golf Silk Shirt Golf Bottoming Shirts Sunscreen Tops for Golfing', N'assets/img/04c19e51c65f7e2426d72db5e15bf705.jpg.webp', 400000, NULL, 1, 0, 0, 0, N'https://tiki.vn/golf-silk-shirt-golf-bottoming-shirts-sunscreen-tops-for-golfing-p251423397.html?spid=251423417')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([roleId], [roleName]) VALUES (1, N'ADMIN')
INSERT [dbo].[Role] ([roleId], [roleName]) VALUES (2, N'USER')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role] FOREIGN KEY([roleId])
REFERENCES [dbo].[Role] ([roleId])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role]
GO
ALTER TABLE [dbo].[AccountContact]  WITH CHECK ADD  CONSTRAINT [FK_AccountContact_Account] FOREIGN KEY([accountId])
REFERENCES [dbo].[Account] ([accountId])
GO
ALTER TABLE [dbo].[AccountContact] CHECK CONSTRAINT [FK_AccountContact_Account]
GO
ALTER TABLE [dbo].[AccountContact]  WITH CHECK ADD  CONSTRAINT [FK_AccountContact_District] FOREIGN KEY([districtId])
REFERENCES [dbo].[District] ([districtId])
GO
ALTER TABLE [dbo].[AccountContact] CHECK CONSTRAINT [FK_AccountContact_District]
GO
ALTER TABLE [dbo].[AccountDetail]  WITH CHECK ADD  CONSTRAINT [FK_AccountDetail_Account] FOREIGN KEY([accountId])
REFERENCES [dbo].[Account] ([accountId])
GO
ALTER TABLE [dbo].[AccountDetail] CHECK CONSTRAINT [FK_AccountDetail_Account]
GO
ALTER TABLE [dbo].[District]  WITH CHECK ADD  CONSTRAINT [FK_District_City] FOREIGN KEY([cityId])
REFERENCES [dbo].[City] ([cityId])
GO
ALTER TABLE [dbo].[District] CHECK CONSTRAINT [FK_District_City]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Account] FOREIGN KEY([accountId])
REFERENCES [dbo].[Account] ([accountId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Account]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderStatus] FOREIGN KEY([orderStatusId])
REFERENCES [dbo].[OrderStatus] ([orderStatusId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrderStatus]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([orderId])
REFERENCES [dbo].[Order] ([orderId])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([productId])
REFERENCES [dbo].[Product] ([productId])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([categoryId])
REFERENCES [dbo].[Category] ([categoryId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[ProductImgDetail]  WITH CHECK ADD  CONSTRAINT [FK_ProductImgDetail_Product] FOREIGN KEY([productId])
REFERENCES [dbo].[Product] ([productId])
GO
ALTER TABLE [dbo].[ProductImgDetail] CHECK CONSTRAINT [FK_ProductImgDetail_Product]
GO
ALTER TABLE [dbo].[ProductSize]  WITH CHECK ADD  CONSTRAINT [FK_ProductSize_Product] FOREIGN KEY([productId])
REFERENCES [dbo].[Product] ([productId])
GO
ALTER TABLE [dbo].[ProductSize] CHECK CONSTRAINT [FK_ProductSize_Product]
GO
ALTER TABLE [dbo].[ProductSize]  WITH CHECK ADD  CONSTRAINT [FK_ProductSize_Size] FOREIGN KEY([sizeId])
REFERENCES [dbo].[Size] ([sizeId])
GO
ALTER TABLE [dbo].[ProductSize] CHECK CONSTRAINT [FK_ProductSize_Size]
GO
USE [master]
GO
ALTER DATABASE [PRJShop] SET  READ_WRITE 
GO
