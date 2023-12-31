USE [master]
GO
/****** Object:  Database [Projekat]    Script Date: 12/15/2023 6:28:04 PM ******/
CREATE DATABASE [Projekat] ON  PRIMARY 
( NAME = N'Projekat', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Projekat.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Projekat_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Projekat_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Projekat].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Projekat] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Projekat] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Projekat] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Projekat] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Projekat] SET ARITHABORT OFF 
GO
ALTER DATABASE [Projekat] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Projekat] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Projekat] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Projekat] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Projekat] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Projekat] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Projekat] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Projekat] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Projekat] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Projekat] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Projekat] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Projekat] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Projekat] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Projekat] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Projekat] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Projekat] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Projekat] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Projekat] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Projekat] SET  MULTI_USER 
GO
ALTER DATABASE [Projekat] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Projekat] SET DB_CHAINING OFF 
GO
USE [Projekat]
GO
/****** Object:  Table [dbo].[Vojnik]    Script Date: 12/15/2023 6:28:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vojnik](
	[JMBG] [int] IDENTITY(1,1) NOT NULL,
	[Ime] [nvarchar](50) NOT NULL,
	[Prezime] [nvarchar](50) NOT NULL,
	[MestoRodjenja] [nvarchar](50) NOT NULL,
	[NazivOdlikovanja] [nvarchar](50) NOT NULL,
	[NazivCina] [nvarchar](50) NOT NULL,
	[Kontakt] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Vojnik] PRIMARY KEY CLUSTERED 
(
	[JMBG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Vojnik] ON 

INSERT [dbo].[Vojnik] ([JMBG], [Ime], [Prezime], [MestoRodjenja], [NazivOdlikovanja], [NazivCina], [Kontakt]) VALUES (12, N'Marko ', N'Markovic', N'Novi Sad', N'Orden', N'Oficir', N'065435678')
INSERT [dbo].[Vojnik] ([JMBG], [Ime], [Prezime], [MestoRodjenja], [NazivOdlikovanja], [NazivCina], [Kontakt]) VALUES (13, N'Ana', N'Aleksic', N'Beograd', N'Orden', N'Kapetan', N'065645318')
INSERT [dbo].[Vojnik] ([JMBG], [Ime], [Prezime], [MestoRodjenja], [NazivOdlikovanja], [NazivCina], [Kontakt]) VALUES (14, N'Danilo', N'Torbica', N'Bj', N'General prve klase', N'Kapetan', N'45152652')
INSERT [dbo].[Vojnik] ([JMBG], [Ime], [Prezime], [MestoRodjenja], [NazivOdlikovanja], [NazivCina], [Kontakt]) VALUES (15, N'Strahinja', N'Carevic', N'Kac', N'Karadjordjeva zvezda', N'Pukovnik', N'5264343')
SET IDENTITY_INSERT [dbo].[Vojnik] OFF
GO
/****** Object:  StoredProcedure [dbo].[usp_SviOficiri]    Script Date: 12/15/2023 6:28:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_SviOficiri]
AS
begin
SELECT * FROM Vojnik
end
GO
/****** Object:  StoredProcedure [dbo].[usp_UnesiOficira]    Script Date: 12/15/2023 6:28:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_UnesiOficira] @ime nvarchar(50),@prezime nvarchar(50),@mesto nvarchar(50),@nazivOdlikovanja nvarchar(50),@nazivCina nvarchar(50),@kontakt nvarchar(50)
as
Insert Into Vojnik
Values(@ime,@prezime,@mesto,@nazivOdlikovanja,@nazivCina,@kontakt)
GO
USE [master]
GO
ALTER DATABASE [Projekat] SET  READ_WRITE 
GO
