USE [master]
GO
/****** Object:  Database [ProductInfoDB]    Script Date: 05/15/2015 12:41:10 ******/
CREATE DATABASE [ProductInfoDB] ON  PRIMARY 
( NAME = N'ProductInfoDB', FILENAME = N'D:\sqlserversetupfile\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\ProductInfoDB.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ProductInfoDB_log', FILENAME = N'D:\sqlserversetupfile\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\ProductInfoDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ProductInfoDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProductInfoDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProductInfoDB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [ProductInfoDB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [ProductInfoDB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [ProductInfoDB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [ProductInfoDB] SET ARITHABORT OFF
GO
ALTER DATABASE [ProductInfoDB] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [ProductInfoDB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [ProductInfoDB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [ProductInfoDB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [ProductInfoDB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [ProductInfoDB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [ProductInfoDB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [ProductInfoDB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [ProductInfoDB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [ProductInfoDB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [ProductInfoDB] SET  DISABLE_BROKER
GO
ALTER DATABASE [ProductInfoDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [ProductInfoDB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [ProductInfoDB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [ProductInfoDB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [ProductInfoDB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [ProductInfoDB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [ProductInfoDB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [ProductInfoDB] SET  READ_WRITE
GO
ALTER DATABASE [ProductInfoDB] SET RECOVERY SIMPLE
GO
ALTER DATABASE [ProductInfoDB] SET  MULTI_USER
GO
ALTER DATABASE [ProductInfoDB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [ProductInfoDB] SET DB_CHAINING OFF
GO
USE [ProductInfoDB]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 05/15/2015 12:41:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[productId] [int] IDENTITY(1,1) NOT NULL,
	[productCode] [varchar](50) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[productId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON
INSERT [dbo].[Product] ([productId], [productCode], [Description], [Quantity]) VALUES (1, N'102', N'dan cake product', 25)
INSERT [dbo].[Product] ([productId], [productCode], [Description], [Quantity]) VALUES (3, N'103', N'Sony TV', 2)
INSERT [dbo].[Product] ([productId], [productCode], [Description], [Quantity]) VALUES (4, N'108', N'RANGS TV', 5)
INSERT [dbo].[Product] ([productId], [productCode], [Description], [Quantity]) VALUES (5, N'105', N'dthyjk', 3)
INSERT [dbo].[Product] ([productId], [productCode], [Description], [Quantity]) VALUES (6, N'101', N'mam panir botol', 2)
INSERT [dbo].[Product] ([productId], [productCode], [Description], [Quantity]) VALUES (7, N'1011', N'fresh panir botol', -1)
INSERT [dbo].[Product] ([productId], [productCode], [Description], [Quantity]) VALUES (8, N'114', N'fresh water ', -1)
INSERT [dbo].[Product] ([productId], [productCode], [Description], [Quantity]) VALUES (9, N'sv12', N'Medicine', 3200)
INSERT [dbo].[Product] ([productId], [productCode], [Description], [Quantity]) VALUES (10, N'639', N'sdgfuj', 103)
INSERT [dbo].[Product] ([productId], [productCode], [Description], [Quantity]) VALUES (11, N'123', N'Laptop dell,hp.samsung etc. company', 7)
SET IDENTITY_INSERT [dbo].[Product] OFF
