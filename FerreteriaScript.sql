USE [master]
GO

/****** Object:  Database [FerreteriaLosHermanos]    Script Date: 11/5/2021 18:31:18 ******/
CREATE DATABASE [FerreteriaLosHermanos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FerreteriaLosHermanos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLSERVIDOR\MSSQL\DATA\FerreteriaLosHermanos.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FerreteriaLosHermanos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLSERVIDOR\MSSQL\DATA\FerreteriaLosHermanos_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FerreteriaLosHermanos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [FerreteriaLosHermanos] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [FerreteriaLosHermanos] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [FerreteriaLosHermanos] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [FerreteriaLosHermanos] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [FerreteriaLosHermanos] SET ARITHABORT OFF 
GO

ALTER DATABASE [FerreteriaLosHermanos] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [FerreteriaLosHermanos] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [FerreteriaLosHermanos] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [FerreteriaLosHermanos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [FerreteriaLosHermanos] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [FerreteriaLosHermanos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [FerreteriaLosHermanos] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [FerreteriaLosHermanos] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [FerreteriaLosHermanos] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [FerreteriaLosHermanos] SET  DISABLE_BROKER 
GO

ALTER DATABASE [FerreteriaLosHermanos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [FerreteriaLosHermanos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [FerreteriaLosHermanos] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [FerreteriaLosHermanos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [FerreteriaLosHermanos] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [FerreteriaLosHermanos] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [FerreteriaLosHermanos] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [FerreteriaLosHermanos] SET RECOVERY FULL 
GO

ALTER DATABASE [FerreteriaLosHermanos] SET  MULTI_USER 
GO

ALTER DATABASE [FerreteriaLosHermanos] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [FerreteriaLosHermanos] SET DB_CHAINING OFF 
GO

ALTER DATABASE [FerreteriaLosHermanos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [FerreteriaLosHermanos] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [FerreteriaLosHermanos] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [FerreteriaLosHermanos] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [FerreteriaLosHermanos] SET QUERY_STORE = OFF
GO

ALTER DATABASE [FerreteriaLosHermanos] SET  READ_WRITE 
GO

