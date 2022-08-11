USE [master]
GO
/****** Object:  Database [MindBoxDatabaseSqlTaskDB]    Script Date: 08.08.2022 23:33:33 ******/
CREATE DATABASE [MindBoxDatabaseSqlTaskDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MindBoxDatabaseSqlTaskDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MindBoxDatabaseSqlTaskDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MindBoxDatabaseSqlTaskDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MindBoxDatabaseSqlTaskDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MindBoxDatabaseSqlTaskDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MindBoxDatabaseSqlTaskDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MindBoxDatabaseSqlTaskDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MindBoxDatabaseSqlTaskDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MindBoxDatabaseSqlTaskDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MindBoxDatabaseSqlTaskDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MindBoxDatabaseSqlTaskDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [MindBoxDatabaseSqlTaskDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MindBoxDatabaseSqlTaskDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MindBoxDatabaseSqlTaskDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MindBoxDatabaseSqlTaskDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MindBoxDatabaseSqlTaskDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MindBoxDatabaseSqlTaskDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MindBoxDatabaseSqlTaskDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MindBoxDatabaseSqlTaskDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MindBoxDatabaseSqlTaskDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MindBoxDatabaseSqlTaskDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MindBoxDatabaseSqlTaskDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MindBoxDatabaseSqlTaskDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MindBoxDatabaseSqlTaskDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MindBoxDatabaseSqlTaskDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MindBoxDatabaseSqlTaskDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MindBoxDatabaseSqlTaskDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MindBoxDatabaseSqlTaskDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MindBoxDatabaseSqlTaskDB] SET RECOVERY FULL 
GO
ALTER DATABASE [MindBoxDatabaseSqlTaskDB] SET  MULTI_USER 
GO
ALTER DATABASE [MindBoxDatabaseSqlTaskDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MindBoxDatabaseSqlTaskDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MindBoxDatabaseSqlTaskDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MindBoxDatabaseSqlTaskDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MindBoxDatabaseSqlTaskDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MindBoxDatabaseSqlTaskDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MindBoxDatabaseSqlTaskDB', N'ON'
GO
ALTER DATABASE [MindBoxDatabaseSqlTaskDB] SET QUERY_STORE = OFF
GO
USE [MindBoxDatabaseSqlTaskDB]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 08.08.2022 23:33:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 08.08.2022 23:33:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsCategories]    Script Date: 08.08.2022 23:33:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsCategories](
	[ProductId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC,
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 
GO
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (1, N'Нет категорий')
GO
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (2, N'Молочные продукты')
GO
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (3, N'Хранить в холодильнике')
GO
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (4, N'Хранить в морозильнике')
GO
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (5, N'Мясные продукты')
GO
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (6, N'Рыбные продукты')
GO
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (7, N'Хранить без охлаждения')
GO
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (8, N'Полуфабрикат')
GO
INSERT [dbo].[Categories] ([CategoryId], [Name]) VALUES (9, N'Готовый продукт')
GO
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([ProductId], [Price], [Name]) VALUES (1, CAST(70.00 AS Decimal(18, 2)), N'Молоко 1 литр')
GO
INSERT [dbo].[Products] ([ProductId], [Price], [Name]) VALUES (2, CAST(65.00 AS Decimal(18, 2)), N'Творог 200 грамм')
GO
INSERT [dbo].[Products] ([ProductId], [Price], [Name]) VALUES (3, CAST(100.00 AS Decimal(18, 2)), N'Молоко сухое 500 грамм')
GO
INSERT [dbo].[Products] ([ProductId], [Price], [Name]) VALUES (4, CAST(350.00 AS Decimal(18, 2)), N'Говядина 1 кг')
GO
INSERT [dbo].[Products] ([ProductId], [Price], [Name]) VALUES (5, CAST(200.00 AS Decimal(18, 2)), N'Котлеты мясные 1 кг')
GO
INSERT [dbo].[Products] ([ProductId], [Price], [Name]) VALUES (6, CAST(140.00 AS Decimal(18, 2)), N'Грудинка свиная 400 гр ')
GO
INSERT [dbo].[Products] ([ProductId], [Price], [Name]) VALUES (7, CAST(250.00 AS Decimal(18, 2)), N'Треска 1 кг')
GO
INSERT [dbo].[Products] ([ProductId], [Price], [Name]) VALUES (8, CAST(140.00 AS Decimal(18, 2)), N'Котлеты рыбные 500 гр')
GO
INSERT [dbo].[Products] ([ProductId], [Price], [Name]) VALUES (9, CAST(270.00 AS Decimal(18, 2)), N'Ставрида гор. копчения 1 кг')
GO
INSERT [dbo].[Products] ([ProductId], [Price], [Name]) VALUES (10, CAST(15.00 AS Decimal(18, 2)), N'Спички бытовые 1 уп')
GO
INSERT [dbo].[Products] ([ProductId], [Price], [Name]) VALUES (11, CAST(10.00 AS Decimal(18, 2)), N'Бумага туалетная 1 рулон')
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[ProductsCategories] ([ProductId], [CategoryId]) VALUES (1, 2)
GO
INSERT [dbo].[ProductsCategories] ([ProductId], [CategoryId]) VALUES (1, 3)
GO
INSERT [dbo].[ProductsCategories] ([ProductId], [CategoryId]) VALUES (1, 9)
GO
INSERT [dbo].[ProductsCategories] ([ProductId], [CategoryId]) VALUES (2, 2)
GO
INSERT [dbo].[ProductsCategories] ([ProductId], [CategoryId]) VALUES (2, 3)
GO
INSERT [dbo].[ProductsCategories] ([ProductId], [CategoryId]) VALUES (2, 9)
GO
INSERT [dbo].[ProductsCategories] ([ProductId], [CategoryId]) VALUES (3, 2)
GO
INSERT [dbo].[ProductsCategories] ([ProductId], [CategoryId]) VALUES (3, 7)
GO
INSERT [dbo].[ProductsCategories] ([ProductId], [CategoryId]) VALUES (4, 4)
GO
INSERT [dbo].[ProductsCategories] ([ProductId], [CategoryId]) VALUES (4, 5)
GO
INSERT [dbo].[ProductsCategories] ([ProductId], [CategoryId]) VALUES (5, 4)
GO
INSERT [dbo].[ProductsCategories] ([ProductId], [CategoryId]) VALUES (5, 5)
GO
INSERT [dbo].[ProductsCategories] ([ProductId], [CategoryId]) VALUES (5, 8)
GO
INSERT [dbo].[ProductsCategories] ([ProductId], [CategoryId]) VALUES (6, 3)
GO
INSERT [dbo].[ProductsCategories] ([ProductId], [CategoryId]) VALUES (6, 5)
GO
INSERT [dbo].[ProductsCategories] ([ProductId], [CategoryId]) VALUES (6, 6)
GO
INSERT [dbo].[ProductsCategories] ([ProductId], [CategoryId]) VALUES (6, 9)
GO
INSERT [dbo].[ProductsCategories] ([ProductId], [CategoryId]) VALUES (7, 4)
GO
INSERT [dbo].[ProductsCategories] ([ProductId], [CategoryId]) VALUES (7, 6)
GO
INSERT [dbo].[ProductsCategories] ([ProductId], [CategoryId]) VALUES (8, 4)
GO
INSERT [dbo].[ProductsCategories] ([ProductId], [CategoryId]) VALUES (8, 6)
GO
INSERT [dbo].[ProductsCategories] ([ProductId], [CategoryId]) VALUES (8, 8)
GO
INSERT [dbo].[ProductsCategories] ([ProductId], [CategoryId]) VALUES (9, 3)
GO
INSERT [dbo].[ProductsCategories] ([ProductId], [CategoryId]) VALUES (9, 9)
GO
INSERT [dbo].[ProductsCategories] ([ProductId], [CategoryId]) VALUES (10, 1)
GO
ALTER TABLE [dbo].[ProductsCategories] ADD  CONSTRAINT [Df_ProductsCategories_CategoryId]  DEFAULT ((1)) FOR [CategoryId]
GO
ALTER TABLE [dbo].[ProductsCategories]  WITH CHECK ADD  CONSTRAINT [Fk_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[ProductsCategories] CHECK CONSTRAINT [Fk_CategoryId]
GO
ALTER TABLE [dbo].[ProductsCategories]  WITH CHECK ADD  CONSTRAINT [Fk_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[ProductsCategories] CHECK CONSTRAINT [Fk_ProductId]
GO
USE [master]
GO
ALTER DATABASE [MindBoxDatabaseSqlTaskDB] SET  READ_WRITE 
GO
