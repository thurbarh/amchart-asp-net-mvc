USE [master]
GO
/****** Object:  Database [SampleDb]    Script Date: 1/18/2018 3:53:02 PM ******/
CREATE DATABASE [SampleDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SampleDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\SampleDb.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SampleDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\SampleDb_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SampleDb] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SampleDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SampleDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SampleDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SampleDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SampleDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SampleDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [SampleDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SampleDb] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [SampleDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SampleDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SampleDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SampleDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SampleDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SampleDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SampleDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SampleDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SampleDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SampleDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SampleDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SampleDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SampleDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SampleDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SampleDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SampleDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SampleDb] SET RECOVERY FULL 
GO
ALTER DATABASE [SampleDb] SET  MULTI_USER 
GO
ALTER DATABASE [SampleDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SampleDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SampleDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SampleDb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SampleDb', N'ON'
GO
USE [SampleDb]
GO
/****** Object:  Table [dbo].[Price]    Script Date: 1/18/2018 3:53:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Price](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NULL,
	[OfferPrice] [decimal](18, 2) NULL,
	[BidPrice] [decimal](18, 2) NULL,
	[EffectiveYield] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Price] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [SampleDb] SET  READ_WRITE 
GO
