USE [master]
GO
/****** Object:  Database [Entertainment]    Script Date: 9/28/2021 10:58:40 PM ******/
CREATE DATABASE [Entertainment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Entertainment_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Entertainment_Data.mdf' , SIZE = 16064KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'Entertainment_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Entertainment_Log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 1024KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Entertainment] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Entertainment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Entertainment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Entertainment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Entertainment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Entertainment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Entertainment] SET ARITHABORT OFF 
GO
ALTER DATABASE [Entertainment] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Entertainment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Entertainment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Entertainment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Entertainment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Entertainment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Entertainment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Entertainment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Entertainment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Entertainment] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Entertainment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Entertainment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Entertainment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Entertainment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Entertainment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Entertainment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Entertainment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Entertainment] SET RECOVERY FULL 
GO
ALTER DATABASE [Entertainment] SET  MULTI_USER 
GO
ALTER DATABASE [Entertainment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Entertainment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Entertainment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Entertainment] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Entertainment] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Entertainment] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Entertainment', N'ON'
GO
ALTER DATABASE [Entertainment] SET QUERY_STORE = OFF
GO
USE [Entertainment]
GO
/****** Object:  Table [dbo].[Agents$]    Script Date: 9/28/2021 10:58:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agents$](
	[Agent ID] [nvarchar](255) NULL,
	[Agent FirstName] [nvarchar](255) NULL,
	[Agent LastName] [nvarchar](255) NULL,
	[Agent StreetAddress] [nvarchar](255) NULL,
	[Agent City] [nvarchar](255) NULL,
	[Agent State] [nvarchar](255) NULL,
	[Agent ZipCode] [float] NULL,
	[Phone] [nvarchar](255) NULL,
	[DateHired] [datetime] NULL,
	[Salary] [money] NULL,
	[CommissionRate] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers$]    Script Date: 9/28/2021 10:58:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers$](
	[Customer ID] [nvarchar](255) NULL,
	[Customer FirstName] [nvarchar](255) NULL,
	[Customer LastName] [nvarchar](255) NULL,
	[Customer ID1] [nvarchar](255) NULL,
	[Customer StreetAddress] [nvarchar](255) NULL,
	[Customer City] [nvarchar](255) NULL,
	[Customer State] [nvarchar](255) NULL,
	[Customer ZipCode] [float] NULL,
	[CustPhoneNumber] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Engagements$]    Script Date: 9/28/2021 10:58:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Engagements$](
	[Agent ID] [nvarchar](255) NULL,
	[Group ID] [nvarchar](255) NULL,
	[Customer ID] [nvarchar](255) NULL,
	[EngagementNumber] [float] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[StartTime] [datetime] NULL,
	[StopTime] [datetime] NULL,
	[ContractPrice] [money] NULL,
	[F10] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].['Group by Style$']    Script Date: 9/28/2021 10:58:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].['Group by Style$'](
	[StyleName ID] [nvarchar](255) NULL,
	[Group ID] [nvarchar](255) NULL,
	[StyleStrength] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].['Group Member$']    Script Date: 9/28/2021 10:58:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].['Group Member$'](
	[Group ID] [nvarchar](255) NULL,
	[Member ID] [nvarchar](255) NULL,
	[Status] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups$]    Script Date: 9/28/2021 10:58:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups$](
	[Group ID] [nvarchar](255) NULL,
	[Stage Name] [nvarchar](255) NULL,
	[Group ID1] [nvarchar](255) NULL,
	[SSN] [nvarchar](255) NULL,
	[Group Address Street] [nvarchar](255) NULL,
	[Group City] [nvarchar](255) NULL,
	[Group State] [nvarchar](255) NULL,
	[Group ZipCode] [float] NULL,
	[Phone] [nvarchar](255) NULL,
	[Page] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[DateEntered] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].['Music Style$']    Script Date: 9/28/2021 10:58:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].['Music Style$'](
	[StyleName ID] [nvarchar](255) NULL,
	[StyleName] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].['Musical Preferences$']    Script Date: 9/28/2021 10:58:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].['Musical Preferences$'](
	[Customer ID] [nvarchar](255) NULL,
	[StyleName ID] [nvarchar](255) NULL,
	[Preference Rating] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perfomers$]    Script Date: 9/28/2021 10:58:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfomers$](
	[Member ID] [nvarchar](255) NULL,
	[Members FirstName] [nvarchar](255) NULL,
	[Members LastName] [nvarchar](255) NULL,
	[Member ID1] [nvarchar](255) NULL,
	[MbrPhoneNumber] [nvarchar](255) NULL,
	[Gender] [nvarchar](255) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Entertainment] SET  READ_WRITE 
GO
