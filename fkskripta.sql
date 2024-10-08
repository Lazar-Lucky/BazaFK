USE [Fudbalski_klub]
GO
/****** Object:  StoredProcedure [dbo].[kdpPromenaTerena]    Script Date: 9.7.2024. 02.57.11 ******/
DROP PROCEDURE [dbo].[kdpPromenaTerena]
GO
ALTER TABLE [dbo].[Utakmica] DROP CONSTRAINT [FK__Utakmica__Sudija__48CFD27E]
GO
ALTER TABLE [dbo].[Utakmica] DROP CONSTRAINT [FK__Utakmica__SifraL__47DBAE45]
GO
ALTER TABLE [dbo].[Utakmica] DROP CONSTRAINT [FK__Utakmica__SifraK__4AB81AF0]
GO
ALTER TABLE [dbo].[Utakmica] DROP CONSTRAINT [FK__Utakmica__SifraK__49C3F6B7]
GO
ALTER TABLE [dbo].[Ulaznica] DROP CONSTRAINT [FK__Ulaznica__SifraB__300424B4]
GO
ALTER TABLE [dbo].[Ucestvuje] DROP CONSTRAINT [FK__Ucestvuje__Sifra__5DCAEF64]
GO
ALTER TABLE [dbo].[Ucestvuje] DROP CONSTRAINT [FK__Ucestvuje__Igrac__5CD6CB2B]
GO
ALTER TABLE [dbo].[Trening] DROP CONSTRAINT [FK__Trening__TrenerJ__35BCFE0A]
GO
ALTER TABLE [dbo].[TrenerAngazovanje] DROP CONSTRAINT [FK__TrenerAng__Trene__5165187F]
GO
ALTER TABLE [dbo].[TrenerAngazovanje] DROP CONSTRAINT [FK__TrenerAng__Sifra__52593CB8]
GO
ALTER TABLE [dbo].[Teren] DROP CONSTRAINT [FK__Teren__SifraTren__398D8EEE]
GO
ALTER TABLE [dbo].[Teren] DROP CONSTRAINT [FK__Teren__NazivGrad__38996AB5]
GO
ALTER TABLE [dbo].[Sudija] DROP CONSTRAINT [FK__Sudija__SifraFS#__3F466844]
GO
ALTER TABLE [dbo].[RadnikAngazovanje] DROP CONSTRAINT [FK__RadnikAng__Sifra__5629CD9C]
GO
ALTER TABLE [dbo].[RadnikAngazovanje] DROP CONSTRAINT [FK__RadnikAng__Radni__5535A963]
GO
ALTER TABLE [dbo].[Radnik] DROP CONSTRAINT [FK__Radnik__SifraBla__32E0915F]
GO
ALTER TABLE [dbo].[Pomocni] DROP CONSTRAINT [FK__Pomocni__SudijaJ__44FF419A]
GO
ALTER TABLE [dbo].[Klub] DROP CONSTRAINT [FK__Klub__SifraFS#fk__3C69FB99]
GO
ALTER TABLE [dbo].[Izvestaj] DROP CONSTRAINT [FK__Izvestaj__Trener__59FA5E80]
GO
ALTER TABLE [dbo].[Izvestaj] DROP CONSTRAINT [FK__Izvestaj__Sudija__59063A47]
GO
ALTER TABLE [dbo].[IgracAngazovanje] DROP CONSTRAINT [FK__IgracAnga__Sifra__4E88ABD4]
GO
ALTER TABLE [dbo].[IgracAngazovanje] DROP CONSTRAINT [FK__IgracAnga__Igrac__4D94879B]
GO
ALTER TABLE [dbo].[Glavni] DROP CONSTRAINT [FK__Glavni__SudijaJM__4222D4EF]
GO
/****** Object:  Table [dbo].[Ulaznica]    Script Date: 9.7.2024. 02.57.11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ulaznica]') AND type in (N'U'))
DROP TABLE [dbo].[Ulaznica]
GO
/****** Object:  Table [dbo].[Ucestvuje]    Script Date: 9.7.2024. 02.57.11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ucestvuje]') AND type in (N'U'))
DROP TABLE [dbo].[Ucestvuje]
GO
/****** Object:  Table [dbo].[Trening]    Script Date: 9.7.2024. 02.57.11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Trening]') AND type in (N'U'))
DROP TABLE [dbo].[Trening]
GO
/****** Object:  Table [dbo].[TrenerAngazovanje]    Script Date: 9.7.2024. 02.57.11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TrenerAngazovanje]') AND type in (N'U'))
DROP TABLE [dbo].[TrenerAngazovanje]
GO
/****** Object:  Table [dbo].[Trener]    Script Date: 9.7.2024. 02.57.11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Trener]') AND type in (N'U'))
DROP TABLE [dbo].[Trener]
GO
/****** Object:  Table [dbo].[RadnoMesto]    Script Date: 9.7.2024. 02.57.11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RadnoMesto]') AND type in (N'U'))
DROP TABLE [dbo].[RadnoMesto]
GO
/****** Object:  Table [dbo].[RadnikAngazovanje]    Script Date: 9.7.2024. 02.57.11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RadnikAngazovanje]') AND type in (N'U'))
DROP TABLE [dbo].[RadnikAngazovanje]
GO
/****** Object:  Table [dbo].[Radnik]    Script Date: 9.7.2024. 02.57.11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Radnik]') AND type in (N'U'))
DROP TABLE [dbo].[Radnik]
GO
/****** Object:  Table [dbo].[Pomocni]    Script Date: 9.7.2024. 02.57.11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pomocni]') AND type in (N'U'))
DROP TABLE [dbo].[Pomocni]
GO
/****** Object:  Table [dbo].[Klub]    Script Date: 9.7.2024. 02.57.11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Klub]') AND type in (N'U'))
DROP TABLE [dbo].[Klub]
GO
/****** Object:  Table [dbo].[Izvestaj]    Script Date: 9.7.2024. 02.57.11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Izvestaj]') AND type in (N'U'))
DROP TABLE [dbo].[Izvestaj]
GO
/****** Object:  Table [dbo].[IgracAngazovanje]    Script Date: 9.7.2024. 02.57.11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IgracAngazovanje]') AND type in (N'U'))
DROP TABLE [dbo].[IgracAngazovanje]
GO
/****** Object:  Table [dbo].[Igrac]    Script Date: 9.7.2024. 02.57.11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Igrac]') AND type in (N'U'))
DROP TABLE [dbo].[Igrac]
GO
/****** Object:  Table [dbo].[Grad]    Script Date: 9.7.2024. 02.57.11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Grad]') AND type in (N'U'))
DROP TABLE [dbo].[Grad]
GO
/****** Object:  Table [dbo].[Glavni]    Script Date: 9.7.2024. 02.57.11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Glavni]') AND type in (N'U'))
DROP TABLE [dbo].[Glavni]
GO
/****** Object:  Table [dbo].[FudbalskiSavez]    Script Date: 9.7.2024. 02.57.11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FudbalskiSavez]') AND type in (N'U'))
DROP TABLE [dbo].[FudbalskiSavez]
GO
/****** Object:  Table [dbo].[Blagajna]    Script Date: 9.7.2024. 02.57.11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Blagajna]') AND type in (N'U'))
DROP TABLE [dbo].[Blagajna]
GO
/****** Object:  UserDefinedFunction [dbo].[kdfPromenaTerena]    Script Date: 9.7.2024. 02.57.11 ******/
DROP FUNCTION [dbo].[kdfPromenaTerena]
GO
/****** Object:  View [dbo].[pUtakmica_Teren_Grad_Sudija]    Script Date: 9.7.2024. 02.57.11 ******/
DROP VIEW [dbo].[pUtakmica_Teren_Grad_Sudija]
GO
/****** Object:  Table [dbo].[Utakmica]    Script Date: 9.7.2024. 02.57.11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Utakmica]') AND type in (N'U'))
DROP TABLE [dbo].[Utakmica]
GO
/****** Object:  Table [dbo].[Sudija]    Script Date: 9.7.2024. 02.57.11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sudija]') AND type in (N'U'))
DROP TABLE [dbo].[Sudija]
GO
/****** Object:  Table [dbo].[Teren]    Script Date: 9.7.2024. 02.57.11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Teren]') AND type in (N'U'))
DROP TABLE [dbo].[Teren]
GO
USE [master]
GO
/****** Object:  Database [Fudbalski_klub]    Script Date: 9.7.2024. 02.57.11 ******/
DROP DATABASE [Fudbalski_klub]
GO
/****** Object:  Database [Fudbalski_klub]    Script Date: 9.7.2024. 02.57.11 ******/
CREATE DATABASE [Fudbalski_klub]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Fudbalski_klub', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL2019\MSSQL\DATA\Fudbalski_klub.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Fudbalski_klub_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL2019\MSSQL\DATA\Fudbalski_klub_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Fudbalski_klub] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Fudbalski_klub].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Fudbalski_klub] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Fudbalski_klub] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Fudbalski_klub] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Fudbalski_klub] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Fudbalski_klub] SET ARITHABORT OFF 
GO
ALTER DATABASE [Fudbalski_klub] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Fudbalski_klub] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Fudbalski_klub] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Fudbalski_klub] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Fudbalski_klub] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Fudbalski_klub] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Fudbalski_klub] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Fudbalski_klub] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Fudbalski_klub] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Fudbalski_klub] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Fudbalski_klub] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Fudbalski_klub] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Fudbalski_klub] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Fudbalski_klub] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Fudbalski_klub] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Fudbalski_klub] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Fudbalski_klub] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Fudbalski_klub] SET RECOVERY FULL 
GO
ALTER DATABASE [Fudbalski_klub] SET  MULTI_USER 
GO
ALTER DATABASE [Fudbalski_klub] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Fudbalski_klub] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Fudbalski_klub] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Fudbalski_klub] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Fudbalski_klub] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Fudbalski_klub] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Fudbalski_klub', N'ON'
GO
ALTER DATABASE [Fudbalski_klub] SET QUERY_STORE = OFF
GO
USE [Fudbalski_klub]
GO
/****** Object:  Table [dbo].[Teren]    Script Date: 9.7.2024. 02.57.11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teren](
	[SifraLokacije#] [int] NOT NULL,
	[NazivTerena] [nvarchar](30) NOT NULL,
	[AdresaTerena] [nvarchar](30) NOT NULL,
	[NazivGrada#fk] [nvarchar](30) NOT NULL,
	[SifraTreninga#fk] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SifraLokacije#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sudija]    Script Date: 9.7.2024. 02.57.11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sudija](
	[SudijaJMBG#] [int] NOT NULL,
	[ImePrezimeS] [nvarchar](30) NOT NULL,
	[PolS] [nvarchar](10) NOT NULL,
	[DatumRodjenjaS] [date] NOT NULL,
	[PlataS] [money] NOT NULL,
	[PremijaS] [money] NOT NULL,
	[SifraFS#fk] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SudijaJMBG#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Utakmica]    Script Date: 9.7.2024. 02.57.11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Utakmica](
	[SifraUtakmice#] [int] NOT NULL,
	[Vreme] [time](7) NOT NULL,
	[Datum] [date] NOT NULL,
	[SifraLokacije#fk] [int] NOT NULL,
	[SudijaJMBG#fk] [int] NOT NULL,
	[SifraKlubaD#fk] [int] NOT NULL,
	[SifraKlubaG#fk] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SudijaJMBG#fk] ASC,
	[SifraLokacije#fk] ASC,
	[SifraUtakmice#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[pUtakmica_Teren_Grad_Sudija]    Script Date: 9.7.2024. 02.57.11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[pUtakmica_Teren_Grad_Sudija] (SifraUtakmice#,SudijaJMBG#fk,SifraKlubaG#fk,SifraKlubaD#fk,Vreme,Datum,SifraLokacije#,NazivTerena,AdresaTerena,NazivGrada#fk,PremijaS)
AS 
SELECT u.SifraUtakmice#,u.SudijaJMBG#fk,u.SifraKlubaG#fk,u.SifraKlubaD#fk,u.Vreme,u.Datum,te.SifraLokacije#,te.NazivTerena,te.AdresaTerena,te.NazivGrada#fk,s.PremijaS
From Utakmica u join Teren te on u.SifraLokacije#fk=te.SifraLokacije# join Sudija s on u.SudijaJMBG#fk=s.SudijaJMBG#
GO
/****** Object:  UserDefinedFunction [dbo].[kdfPromenaTerena]    Script Date: 9.7.2024. 02.57.11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create function [dbo].[kdfPromenaTerena](@pSifraUtakmice# int, @pNazivTerena nvarchar(30), @pAdresaTerena nvarchar(30), @pNazivGrada nvarchar(30), @lprocpovecanja numeric)
	Returns table
AS 
RETURN SELECT p.SifraUtakmice#,p.SudijaJMBG#fk,p.SifraKlubaG#fk,p.SifraKlubaD#fk,p.Vreme,p.Datum,p.SifraLokacije#,p.NazivTerena,p.AdresaTerena,p.NazivGrada#fk,p.PremijaS
	FROM pUtakmica_Teren_Grad_Sudija P 
	
GO
/****** Object:  Table [dbo].[Blagajna]    Script Date: 9.7.2024. 02.57.11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blagajna](
	[SifraBlagajne#] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SifraBlagajne#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FudbalskiSavez]    Script Date: 9.7.2024. 02.57.11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FudbalskiSavez](
	[SifraFS#] [int] NOT NULL,
	[GodinaOsnivanja] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SifraFS#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Glavni]    Script Date: 9.7.2024. 02.57.11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Glavni](
	[SudijaJMBG#fk] [int] NOT NULL,
	[SifraLicence] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SudijaJMBG#fk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grad]    Script Date: 9.7.2024. 02.57.11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grad](
	[NazivGrada#] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NazivGrada#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Igrac]    Script Date: 9.7.2024. 02.57.11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Igrac](
	[IgracJMBG#] [int] NOT NULL,
	[ImePrezimeIg] [nvarchar](30) NOT NULL,
	[PolIg] [nvarchar](10) NOT NULL,
	[DatumRodjenjaIg] [date] NOT NULL,
	[PlataIg] [money] NOT NULL,
	[PremijaIg] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IgracJMBG#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IgracAngazovanje]    Script Date: 9.7.2024. 02.57.11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IgracAngazovanje](
	[IgracJMBG#fk] [int] NOT NULL,
	[SifraRM#fk] [int] NOT NULL,
	[DatOd#] [date] NOT NULL,
	[DatDo] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[IgracJMBG#fk] ASC,
	[SifraRM#fk] ASC,
	[DatOd#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Izvestaj]    Script Date: 9.7.2024. 02.57.11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Izvestaj](
	[Sadrzaj#] [nvarchar](70) NOT NULL,
	[SudijaJMBG#fk] [int] NOT NULL,
	[TrenerJMBG#fk] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TrenerJMBG#fk] ASC,
	[SudijaJMBG#fk] ASC,
	[Sadrzaj#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Klub]    Script Date: 9.7.2024. 02.57.11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Klub](
	[SifraKluba#] [int] NOT NULL,
	[NazivKluba] [nvarchar](30) NOT NULL,
	[SifraFS#fk] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SifraKluba#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pomocni]    Script Date: 9.7.2024. 02.57.11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pomocni](
	[SudijaJMBG#fk] [int] NOT NULL,
	[BrojLicneKarte] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SudijaJMBG#fk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Radnik]    Script Date: 9.7.2024. 02.57.11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Radnik](
	[RadnikJMBG#] [int] NOT NULL,
	[ImePrezimeR] [nvarchar](30) NOT NULL,
	[PolR] [nvarchar](10) NOT NULL,
	[DatumRodjenjaR] [date] NOT NULL,
	[PlataR] [money] NOT NULL,
	[PremijaR] [money] NOT NULL,
	[SifraBlagajne#fk] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RadnikJMBG#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RadnikAngazovanje]    Script Date: 9.7.2024. 02.57.11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RadnikAngazovanje](
	[RadnikJMBG#fk] [int] NOT NULL,
	[SifraRM#fk] [int] NOT NULL,
	[DatOd#] [date] NOT NULL,
	[DatDo] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[RadnikJMBG#fk] ASC,
	[SifraRM#fk] ASC,
	[DatOd#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RadnoMesto]    Script Date: 9.7.2024. 02.57.11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RadnoMesto](
	[SifraRM#] [int] NOT NULL,
	[NazivRM] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SifraRM#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trener]    Script Date: 9.7.2024. 02.57.11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trener](
	[TrenerJMBG#] [int] NOT NULL,
	[ImePrezimeT] [nvarchar](30) NOT NULL,
	[PolT] [nvarchar](10) NOT NULL,
	[DatumRodjenjaT] [date] NOT NULL,
	[PlataT] [money] NOT NULL,
	[PremijaT] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TrenerJMBG#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrenerAngazovanje]    Script Date: 9.7.2024. 02.57.11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrenerAngazovanje](
	[TrenerJMBG#fk] [int] NOT NULL,
	[SifraRM#fk] [int] NOT NULL,
	[DatOd#] [date] NOT NULL,
	[DatDo] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[TrenerJMBG#fk] ASC,
	[SifraRM#fk] ASC,
	[DatOd#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trening]    Script Date: 9.7.2024. 02.57.11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trening](
	[SifraTreninga#] [int] NOT NULL,
	[Vreme] [nvarchar](30) NOT NULL,
	[Datum] [nvarchar](30) NOT NULL,
	[TrenerJMBG#fk] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SifraTreninga#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ucestvuje]    Script Date: 9.7.2024. 02.57.11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ucestvuje](
	[IgracJMBG#fk] [int] NOT NULL,
	[SifraTreninga#fk] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IgracJMBG#fk] ASC,
	[SifraTreninga#fk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ulaznica]    Script Date: 9.7.2024. 02.57.11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ulaznica](
	[SifraUlaznice#] [int] NOT NULL,
	[Cena] [money] NOT NULL,
	[SifraBlagajne#fk] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SifraUlaznice#] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Blagajna] ([SifraBlagajne#]) VALUES (1111)
INSERT [dbo].[Blagajna] ([SifraBlagajne#]) VALUES (2222)
GO
INSERT [dbo].[FudbalskiSavez] ([SifraFS#], [GodinaOsnivanja]) VALUES (1, 1919)
GO
INSERT [dbo].[Glavni] ([SudijaJMBG#fk], [SifraLicence]) VALUES (123, 987)
INSERT [dbo].[Glavni] ([SudijaJMBG#fk], [SifraLicence]) VALUES (623, 789)
GO
INSERT [dbo].[Grad] ([NazivGrada#]) VALUES (N'Beograd')
INSERT [dbo].[Grad] ([NazivGrada#]) VALUES (N'Kraljevo')
INSERT [dbo].[Grad] ([NazivGrada#]) VALUES (N'Nis')
INSERT [dbo].[Grad] ([NazivGrada#]) VALUES (N'Novi Beograd')
INSERT [dbo].[Grad] ([NazivGrada#]) VALUES (N'Novi Sad')
GO
INSERT [dbo].[Igrac] ([IgracJMBG#], [ImePrezimeIg], [PolIg], [DatumRodjenjaIg], [PlataIg], [PremijaIg]) VALUES (111, N'Dusan Skoric', N'Muski', CAST(N'1996-05-30' AS Date), 50000.0000, 10000.0000)
INSERT [dbo].[Igrac] ([IgracJMBG#], [ImePrezimeIg], [PolIg], [DatumRodjenjaIg], [PlataIg], [PremijaIg]) VALUES (222, N'Ilija Rajkovic', N'Muski', CAST(N'1996-05-10' AS Date), 65000.0000, 10000.0000)
INSERT [dbo].[Igrac] ([IgracJMBG#], [ImePrezimeIg], [PolIg], [DatumRodjenjaIg], [PlataIg], [PremijaIg]) VALUES (333, N'David Ilikic', N'Muski', CAST(N'1995-02-21' AS Date), 45000.0000, 10000.0000)
INSERT [dbo].[Igrac] ([IgracJMBG#], [ImePrezimeIg], [PolIg], [DatumRodjenjaIg], [PlataIg], [PremijaIg]) VALUES (444, N'Mihajlo Jovanovic', N'Muski', CAST(N'1997-01-03' AS Date), 40000.0000, 10000.0000)
INSERT [dbo].[Igrac] ([IgracJMBG#], [ImePrezimeIg], [PolIg], [DatumRodjenjaIg], [PlataIg], [PremijaIg]) VALUES (555, N'Strahinja Hajdukovic', N'Muski', CAST(N'1996-06-17' AS Date), 55000.0000, 10000.0000)
INSERT [dbo].[Igrac] ([IgracJMBG#], [ImePrezimeIg], [PolIg], [DatumRodjenjaIg], [PlataIg], [PremijaIg]) VALUES (666, N'Vasilije Adamovic', N'Muski', CAST(N'1992-03-08' AS Date), 60000.0000, 10000.0000)
INSERT [dbo].[Igrac] ([IgracJMBG#], [ImePrezimeIg], [PolIg], [DatumRodjenjaIg], [PlataIg], [PremijaIg]) VALUES (777, N'Grigor Dabizljevic', N'Muski', CAST(N'1995-10-29' AS Date), 35000.0000, 10000.0000)
INSERT [dbo].[Igrac] ([IgracJMBG#], [ImePrezimeIg], [PolIg], [DatumRodjenjaIg], [PlataIg], [PremijaIg]) VALUES (888, N'Nikola Bora', N'Muski', CAST(N'1996-06-02' AS Date), 45000.0000, 10000.0000)
INSERT [dbo].[Igrac] ([IgracJMBG#], [ImePrezimeIg], [PolIg], [DatumRodjenjaIg], [PlataIg], [PremijaIg]) VALUES (999, N'Sanja Maric', N'Zenski', CAST(N'1993-10-28' AS Date), 55000.0000, 10000.0000)
INSERT [dbo].[Igrac] ([IgracJMBG#], [ImePrezimeIg], [PolIg], [DatumRodjenjaIg], [PlataIg], [PremijaIg]) VALUES (1010, N'Ana Cocic', N'Zenski', CAST(N'1991-05-15' AS Date), 65000.0000, 10000.0000)
INSERT [dbo].[Igrac] ([IgracJMBG#], [ImePrezimeIg], [PolIg], [DatumRodjenjaIg], [PlataIg], [PremijaIg]) VALUES (1212, N'Katarina Stanojevic', N'Zenski', CAST(N'1999-09-09' AS Date), 75000.0000, 10000.0000)
INSERT [dbo].[Igrac] ([IgracJMBG#], [ImePrezimeIg], [PolIg], [DatumRodjenjaIg], [PlataIg], [PremijaIg]) VALUES (1313, N'Tamara Glisic', N'Zenski', CAST(N'1998-08-08' AS Date), 35000.0000, 10000.0000)
INSERT [dbo].[Igrac] ([IgracJMBG#], [ImePrezimeIg], [PolIg], [DatumRodjenjaIg], [PlataIg], [PremijaIg]) VALUES (1414, N'Nina Djukic', N'Zenski', CAST(N'1994-10-11' AS Date), 50000.0000, 10000.0000)
INSERT [dbo].[Igrac] ([IgracJMBG#], [ImePrezimeIg], [PolIg], [DatumRodjenjaIg], [PlataIg], [PremijaIg]) VALUES (1515, N'Marija Jankovic', N'Zenski', CAST(N'1996-06-12' AS Date), 60000.0000, 10000.0000)
INSERT [dbo].[Igrac] ([IgracJMBG#], [ImePrezimeIg], [PolIg], [DatumRodjenjaIg], [PlataIg], [PremijaIg]) VALUES (1616, N'Marijana Dumic', N'Zenski', CAST(N'1967-03-29' AS Date), 65000.0000, 10000.0000)
GO
INSERT [dbo].[IgracAngazovanje] ([IgracJMBG#fk], [SifraRM#fk], [DatOd#], [DatDo]) VALUES (111, 2222, CAST(N'2018-07-15' AS Date), NULL)
INSERT [dbo].[IgracAngazovanje] ([IgracJMBG#fk], [SifraRM#fk], [DatOd#], [DatDo]) VALUES (222, 2222, CAST(N'2017-01-15' AS Date), NULL)
INSERT [dbo].[IgracAngazovanje] ([IgracJMBG#fk], [SifraRM#fk], [DatOd#], [DatDo]) VALUES (333, 3333, CAST(N'2018-03-05' AS Date), CAST(N'2020-03-05' AS Date))
INSERT [dbo].[IgracAngazovanje] ([IgracJMBG#fk], [SifraRM#fk], [DatOd#], [DatDo]) VALUES (777, 2222, CAST(N'2015-07-16' AS Date), CAST(N'2019-07-16' AS Date))
INSERT [dbo].[IgracAngazovanje] ([IgracJMBG#fk], [SifraRM#fk], [DatOd#], [DatDo]) VALUES (1010, 3333, CAST(N'2017-12-12' AS Date), NULL)
INSERT [dbo].[IgracAngazovanje] ([IgracJMBG#fk], [SifraRM#fk], [DatOd#], [DatDo]) VALUES (1616, 2222, CAST(N'2016-12-30' AS Date), CAST(N'2022-12-30' AS Date))
GO
INSERT [dbo].[Izvestaj] ([Sadrzaj#], [SudijaJMBG#fk], [TrenerJMBG#fk]) VALUES (N'Rezultat: 2:1. Na Utakmici je bilo 6 ZUTA(IH) i 1 CRVENI\H karton(a)', 623, 1111)
INSERT [dbo].[Izvestaj] ([Sadrzaj#], [SudijaJMBG#fk], [TrenerJMBG#fk]) VALUES (N'Rezultat: 1:0. Na Utakmici je bilo 5 ZUTA(IH) i 0 CRVENI\H karton(a)', 123, 2222)
INSERT [dbo].[Izvestaj] ([Sadrzaj#], [SudijaJMBG#fk], [TrenerJMBG#fk]) VALUES (N'Rezultat: 3:4. Na Utakmici je bilo 4 ZUTA(IH) i 0 CRVENI\H karton(a)', 623, 4444)
INSERT [dbo].[Izvestaj] ([Sadrzaj#], [SudijaJMBG#fk], [TrenerJMBG#fk]) VALUES (N'Rezultat: 3:0. Na Utakmici je bilo 2 ZUTA(IH) i 2 CRVENI\H karton(a)', 123, 5555)
INSERT [dbo].[Izvestaj] ([Sadrzaj#], [SudijaJMBG#fk], [TrenerJMBG#fk]) VALUES (N'Rezultat: 3:2. Na Utakmici je bilo 0 ZUTA(IH) i 0 CRVENI\H karton(a)', 623, 7777)
GO
INSERT [dbo].[Klub] ([SifraKluba#], [NazivKluba], [SifraFS#fk]) VALUES (10, N'Macva', 1)
INSERT [dbo].[Klub] ([SifraKluba#], [NazivKluba], [SifraFS#fk]) VALUES (11, N'Crvena Zvezda', 1)
INSERT [dbo].[Klub] ([SifraKluba#], [NazivKluba], [SifraFS#fk]) VALUES (22, N'Partizan', 1)
INSERT [dbo].[Klub] ([SifraKluba#], [NazivKluba], [SifraFS#fk]) VALUES (33, N'Vojvodina', 1)
INSERT [dbo].[Klub] ([SifraKluba#], [NazivKluba], [SifraFS#fk]) VALUES (44, N'Cukaricki', 1)
INSERT [dbo].[Klub] ([SifraKluba#], [NazivKluba], [SifraFS#fk]) VALUES (55, N'Metalac', 1)
INSERT [dbo].[Klub] ([SifraKluba#], [NazivKluba], [SifraFS#fk]) VALUES (66, N'Mladost', 1)
INSERT [dbo].[Klub] ([SifraKluba#], [NazivKluba], [SifraFS#fk]) VALUES (77, N'Proleter', 1)
INSERT [dbo].[Klub] ([SifraKluba#], [NazivKluba], [SifraFS#fk]) VALUES (88, N'Vozdovac', 1)
INSERT [dbo].[Klub] ([SifraKluba#], [NazivKluba], [SifraFS#fk]) VALUES (99, N'Rad', 1)
GO
INSERT [dbo].[Pomocni] ([SudijaJMBG#fk], [BrojLicneKarte]) VALUES (223, 2468)
INSERT [dbo].[Pomocni] ([SudijaJMBG#fk], [BrojLicneKarte]) VALUES (323, 1357)
INSERT [dbo].[Pomocni] ([SudijaJMBG#fk], [BrojLicneKarte]) VALUES (423, 6648)
INSERT [dbo].[Pomocni] ([SudijaJMBG#fk], [BrojLicneKarte]) VALUES (523, 3986)
GO
INSERT [dbo].[Radnik] ([RadnikJMBG#], [ImePrezimeR], [PolR], [DatumRodjenjaR], [PlataR], [PremijaR], [SifraBlagajne#fk]) VALUES (11111, N'Nikola Vujicic', N'Muski', CAST(N'1973-05-30' AS Date), 50000.0000, 9000.0000, 1111)
INSERT [dbo].[Radnik] ([RadnikJMBG#], [ImePrezimeR], [PolR], [DatumRodjenjaR], [PlataR], [PremijaR], [SifraBlagajne#fk]) VALUES (22222, N'Darko Bjelogrlic', N'Muski', CAST(N'1979-05-10' AS Date), 65000.0000, 8000.0000, 1111)
INSERT [dbo].[Radnik] ([RadnikJMBG#], [ImePrezimeR], [PolR], [DatumRodjenjaR], [PlataR], [PremijaR], [SifraBlagajne#fk]) VALUES (33333, N'Bosko Radovic', N'Muski', CAST(N'1980-12-15' AS Date), 65000.0000, 7500.0000, 2222)
GO
INSERT [dbo].[RadnikAngazovanje] ([RadnikJMBG#fk], [SifraRM#fk], [DatOd#], [DatDo]) VALUES (11111, 4444, CAST(N'2016-08-09' AS Date), NULL)
INSERT [dbo].[RadnikAngazovanje] ([RadnikJMBG#fk], [SifraRM#fk], [DatOd#], [DatDo]) VALUES (22222, 4444, CAST(N'2015-02-06' AS Date), NULL)
INSERT [dbo].[RadnikAngazovanje] ([RadnikJMBG#fk], [SifraRM#fk], [DatOd#], [DatDo]) VALUES (33333, 4444, CAST(N'2018-01-12' AS Date), NULL)
GO
INSERT [dbo].[RadnoMesto] ([SifraRM#], [NazivRM]) VALUES (1111, N'Trener')
INSERT [dbo].[RadnoMesto] ([SifraRM#], [NazivRM]) VALUES (2222, N'Igrac_Stalan')
INSERT [dbo].[RadnoMesto] ([SifraRM#], [NazivRM]) VALUES (3333, N'Igrac_Pozajmica')
INSERT [dbo].[RadnoMesto] ([SifraRM#], [NazivRM]) VALUES (4444, N'Blagajnik')
GO
INSERT [dbo].[Sudija] ([SudijaJMBG#], [ImePrezimeS], [PolS], [DatumRodjenjaS], [PlataS], [PremijaS], [SifraFS#fk]) VALUES (123, N'Milorad Miskovic', N'Muski', CAST(N'1975-12-02' AS Date), 170000.0000, 50000.0000, 1)
INSERT [dbo].[Sudija] ([SudijaJMBG#], [ImePrezimeS], [PolS], [DatumRodjenjaS], [PlataS], [PremijaS], [SifraFS#fk]) VALUES (223, N'Uros Djokic', N'Muski', CAST(N'1985-01-30' AS Date), 120000.0000, 15000.0000, 1)
INSERT [dbo].[Sudija] ([SudijaJMBG#], [ImePrezimeS], [PolS], [DatumRodjenjaS], [PlataS], [PremijaS], [SifraFS#fk]) VALUES (323, N'Jovana Nikolic', N'Zenski', CAST(N'1988-02-28' AS Date), 110000.0000, 20000.0000, 1)
INSERT [dbo].[Sudija] ([SudijaJMBG#], [ImePrezimeS], [PolS], [DatumRodjenjaS], [PlataS], [PremijaS], [SifraFS#fk]) VALUES (423, N'Mitar Maric', N'Muski', CAST(N'1996-12-22' AS Date), 100000.0000, 20000.0000, 1)
INSERT [dbo].[Sudija] ([SudijaJMBG#], [ImePrezimeS], [PolS], [DatumRodjenjaS], [PlataS], [PremijaS], [SifraFS#fk]) VALUES (523, N'Dragana Vukmirovic', N'Zenski', CAST(N'1978-04-05' AS Date), 110000.0000, 16000.0000, 1)
INSERT [dbo].[Sudija] ([SudijaJMBG#], [ImePrezimeS], [PolS], [DatumRodjenjaS], [PlataS], [PremijaS], [SifraFS#fk]) VALUES (623, N'Boban Rajovic', N'Muski', CAST(N'1999-09-23' AS Date), 180000.0000, 63000.0000, 1)
GO
INSERT [dbo].[Teren] ([SifraLokacije#], [NazivTerena], [AdresaTerena], [NazivGrada#fk], [SifraTreninga#fk]) VALUES (1111, N'STADION "RAJKO MITIC"', N'Ljutice Bogdana 1', N'Beograd', 5)
INSERT [dbo].[Teren] ([SifraLokacije#], [NazivTerena], [AdresaTerena], [NazivGrada#fk], [SifraTreninga#fk]) VALUES (2222, N'STADION FK "PARTIZAN"', N'Humska 1', N'Beograd', 3)
INSERT [dbo].[Teren] ([SifraLokacije#], [NazivTerena], [AdresaTerena], [NazivGrada#fk], [SifraTreninga#fk]) VALUES (3333, N'OMLADINSKI STADION', N'Milje Kovacevica 10', N'Novi Sad', 11)
INSERT [dbo].[Teren] ([SifraLokacije#], [NazivTerena], [AdresaTerena], [NazivGrada#fk], [SifraTreninga#fk]) VALUES (4444, N'GRADSKI STADION ZEMUN', N'Ugrinovacka 80', N'Kraljevo', 4)
INSERT [dbo].[Teren] ([SifraLokacije#], [NazivTerena], [AdresaTerena], [NazivGrada#fk], [SifraTreninga#fk]) VALUES (5555, N'STADION FK "OBILIC"', N'Gospodara Mucica 189', N'Nis', 1)
INSERT [dbo].[Teren] ([SifraLokacije#], [NazivTerena], [AdresaTerena], [NazivGrada#fk], [SifraTreninga#fk]) VALUES (6666, N'Rupaca', N'Blok 33', N'Novi Beograd', NULL)
GO
INSERT [dbo].[Trener] ([TrenerJMBG#], [ImePrezimeT], [PolT], [DatumRodjenjaT], [PlataT], [PremijaT]) VALUES (1111, N'Milos Obrenovic', N'Muski', CAST(N'1965-05-30' AS Date), 50000.0000, 10000.0000)
INSERT [dbo].[Trener] ([TrenerJMBG#], [ImePrezimeT], [PolT], [DatumRodjenjaT], [PlataT], [PremijaT]) VALUES (2222, N'Ilija Brcanin', N'Muski', CAST(N'1970-05-10' AS Date), 65000.0000, 10000.0000)
INSERT [dbo].[Trener] ([TrenerJMBG#], [ImePrezimeT], [PolT], [DatumRodjenjaT], [PlataT], [PremijaT]) VALUES (3333, N'Aleksa Nenadovic', N'Muski', CAST(N'1969-02-21' AS Date), 45000.0000, 10000.0000)
INSERT [dbo].[Trener] ([TrenerJMBG#], [ImePrezimeT], [PolT], [DatumRodjenjaT], [PlataT], [PremijaT]) VALUES (4444, N'Matija Nenadovic', N'Muski', CAST(N'1992-01-03' AS Date), 40000.0000, 10000.0000)
INSERT [dbo].[Trener] ([TrenerJMBG#], [ImePrezimeT], [PolT], [DatumRodjenjaT], [PlataT], [PremijaT]) VALUES (5555, N'Stevan Andreic', N'Muski', CAST(N'1990-06-17' AS Date), 55000.0000, 10000.0000)
INSERT [dbo].[Trener] ([TrenerJMBG#], [ImePrezimeT], [PolT], [DatumRodjenjaT], [PlataT], [PremijaT]) VALUES (6666, N'Stojan Mihajlovic', N'Muski', CAST(N'1979-03-08' AS Date), 60000.0000, 10000.0000)
INSERT [dbo].[Trener] ([TrenerJMBG#], [ImePrezimeT], [PolT], [DatumRodjenjaT], [PlataT], [PremijaT]) VALUES (7777, N'Marko Carapic', N'Muski', CAST(N'1988-10-29' AS Date), 35000.0000, 10000.0000)
GO
INSERT [dbo].[TrenerAngazovanje] ([TrenerJMBG#fk], [SifraRM#fk], [DatOd#], [DatDo]) VALUES (1111, 1111, CAST(N'2013-08-09' AS Date), CAST(N'2019-08-09' AS Date))
INSERT [dbo].[TrenerAngazovanje] ([TrenerJMBG#fk], [SifraRM#fk], [DatOd#], [DatDo]) VALUES (2222, 1111, CAST(N'2014-06-15' AS Date), NULL)
INSERT [dbo].[TrenerAngazovanje] ([TrenerJMBG#fk], [SifraRM#fk], [DatOd#], [DatDo]) VALUES (3333, 1111, CAST(N'2015-10-16' AS Date), NULL)
INSERT [dbo].[TrenerAngazovanje] ([TrenerJMBG#fk], [SifraRM#fk], [DatOd#], [DatDo]) VALUES (4444, 1111, CAST(N'2017-01-01' AS Date), NULL)
INSERT [dbo].[TrenerAngazovanje] ([TrenerJMBG#fk], [SifraRM#fk], [DatOd#], [DatDo]) VALUES (5555, 1111, CAST(N'2011-11-11' AS Date), CAST(N'2015-11-11' AS Date))
GO
INSERT [dbo].[Trening] ([SifraTreninga#], [Vreme], [Datum], [TrenerJMBG#fk]) VALUES (1, N'18:00', N'2018-08-01', 1111)
INSERT [dbo].[Trening] ([SifraTreninga#], [Vreme], [Datum], [TrenerJMBG#fk]) VALUES (2, N'09:00', N'2018-08-01', 2222)
INSERT [dbo].[Trening] ([SifraTreninga#], [Vreme], [Datum], [TrenerJMBG#fk]) VALUES (3, N'18:00', N'2018-08-02', 7777)
INSERT [dbo].[Trening] ([SifraTreninga#], [Vreme], [Datum], [TrenerJMBG#fk]) VALUES (4, N'09:00', N'2018-08-02', 1111)
INSERT [dbo].[Trening] ([SifraTreninga#], [Vreme], [Datum], [TrenerJMBG#fk]) VALUES (5, N'18:00', N'2018-08-03', 3333)
INSERT [dbo].[Trening] ([SifraTreninga#], [Vreme], [Datum], [TrenerJMBG#fk]) VALUES (6, N'18:00', N'2018-08-04', 1111)
INSERT [dbo].[Trening] ([SifraTreninga#], [Vreme], [Datum], [TrenerJMBG#fk]) VALUES (7, N'09:00', N'2018-08-04', 5555)
INSERT [dbo].[Trening] ([SifraTreninga#], [Vreme], [Datum], [TrenerJMBG#fk]) VALUES (8, N'09:00', N'2018-08-05', 4444)
INSERT [dbo].[Trening] ([SifraTreninga#], [Vreme], [Datum], [TrenerJMBG#fk]) VALUES (9, N'18:00', N'2018-08-05', 1111)
INSERT [dbo].[Trening] ([SifraTreninga#], [Vreme], [Datum], [TrenerJMBG#fk]) VALUES (10, N'09:00', N'2018-08-06', 3333)
INSERT [dbo].[Trening] ([SifraTreninga#], [Vreme], [Datum], [TrenerJMBG#fk]) VALUES (11, N'18:00', N'2018-08-06', 2222)
INSERT [dbo].[Trening] ([SifraTreninga#], [Vreme], [Datum], [TrenerJMBG#fk]) VALUES (12, N'09:00', N'2018-08-07', 6666)
GO
INSERT [dbo].[Ucestvuje] ([IgracJMBG#fk], [SifraTreninga#fk]) VALUES (111, 1)
INSERT [dbo].[Ucestvuje] ([IgracJMBG#fk], [SifraTreninga#fk]) VALUES (222, 2)
INSERT [dbo].[Ucestvuje] ([IgracJMBG#fk], [SifraTreninga#fk]) VALUES (333, 3)
INSERT [dbo].[Ucestvuje] ([IgracJMBG#fk], [SifraTreninga#fk]) VALUES (444, 4)
INSERT [dbo].[Ucestvuje] ([IgracJMBG#fk], [SifraTreninga#fk]) VALUES (555, 5)
INSERT [dbo].[Ucestvuje] ([IgracJMBG#fk], [SifraTreninga#fk]) VALUES (666, 6)
INSERT [dbo].[Ucestvuje] ([IgracJMBG#fk], [SifraTreninga#fk]) VALUES (777, 7)
INSERT [dbo].[Ucestvuje] ([IgracJMBG#fk], [SifraTreninga#fk]) VALUES (888, 8)
INSERT [dbo].[Ucestvuje] ([IgracJMBG#fk], [SifraTreninga#fk]) VALUES (999, 9)
INSERT [dbo].[Ucestvuje] ([IgracJMBG#fk], [SifraTreninga#fk]) VALUES (1010, 10)
INSERT [dbo].[Ucestvuje] ([IgracJMBG#fk], [SifraTreninga#fk]) VALUES (1212, 11)
INSERT [dbo].[Ucestvuje] ([IgracJMBG#fk], [SifraTreninga#fk]) VALUES (1313, 12)
INSERT [dbo].[Ucestvuje] ([IgracJMBG#fk], [SifraTreninga#fk]) VALUES (1414, 3)
INSERT [dbo].[Ucestvuje] ([IgracJMBG#fk], [SifraTreninga#fk]) VALUES (1515, 6)
INSERT [dbo].[Ucestvuje] ([IgracJMBG#fk], [SifraTreninga#fk]) VALUES (1616, 9)
GO
INSERT [dbo].[Ulaznica] ([SifraUlaznice#], [Cena], [SifraBlagajne#fk]) VALUES (1, 250.0000, 1111)
INSERT [dbo].[Ulaznica] ([SifraUlaznice#], [Cena], [SifraBlagajne#fk]) VALUES (2, 250.0000, 1111)
INSERT [dbo].[Ulaznica] ([SifraUlaznice#], [Cena], [SifraBlagajne#fk]) VALUES (3, 300.0000, 2222)
INSERT [dbo].[Ulaznica] ([SifraUlaznice#], [Cena], [SifraBlagajne#fk]) VALUES (4, 300.0000, 2222)
INSERT [dbo].[Ulaznica] ([SifraUlaznice#], [Cena], [SifraBlagajne#fk]) VALUES (5, 250.0000, 1111)
GO
INSERT [dbo].[Utakmica] ([SifraUtakmice#], [Vreme], [Datum], [SifraLokacije#fk], [SudijaJMBG#fk], [SifraKlubaD#fk], [SifraKlubaG#fk]) VALUES (1, CAST(N'11:00:00' AS Time), CAST(N'2018-09-15' AS Date), 1111, 123, 11, 66)
INSERT [dbo].[Utakmica] ([SifraUtakmice#], [Vreme], [Datum], [SifraLokacije#fk], [SudijaJMBG#fk], [SifraKlubaD#fk], [SifraKlubaG#fk]) VALUES (4, CAST(N'17:00:00' AS Time), CAST(N'2018-09-17' AS Date), 4444, 123, 44, 99)
INSERT [dbo].[Utakmica] ([SifraUtakmice#], [Vreme], [Datum], [SifraLokacije#fk], [SudijaJMBG#fk], [SifraKlubaD#fk], [SifraKlubaG#fk]) VALUES (2, CAST(N'15:00:00' AS Time), CAST(N'2018-09-15' AS Date), 2222, 623, 22, 77)
INSERT [dbo].[Utakmica] ([SifraUtakmice#], [Vreme], [Datum], [SifraLokacije#fk], [SudijaJMBG#fk], [SifraKlubaD#fk], [SifraKlubaG#fk]) VALUES (3, CAST(N'12:00:00' AS Time), CAST(N'2018-09-17' AS Date), 3333, 623, 33, 88)
INSERT [dbo].[Utakmica] ([SifraUtakmice#], [Vreme], [Datum], [SifraLokacije#fk], [SudijaJMBG#fk], [SifraKlubaD#fk], [SifraKlubaG#fk]) VALUES (5, CAST(N'20:00:00' AS Time), CAST(N'2018-09-20' AS Date), 6666, 623, 55, 10)
GO
ALTER TABLE [dbo].[Glavni]  WITH CHECK ADD FOREIGN KEY([SudijaJMBG#fk])
REFERENCES [dbo].[Sudija] ([SudijaJMBG#])
GO
ALTER TABLE [dbo].[IgracAngazovanje]  WITH CHECK ADD FOREIGN KEY([IgracJMBG#fk])
REFERENCES [dbo].[Igrac] ([IgracJMBG#])
GO
ALTER TABLE [dbo].[IgracAngazovanje]  WITH CHECK ADD FOREIGN KEY([SifraRM#fk])
REFERENCES [dbo].[RadnoMesto] ([SifraRM#])
GO
ALTER TABLE [dbo].[Izvestaj]  WITH CHECK ADD FOREIGN KEY([SudijaJMBG#fk])
REFERENCES [dbo].[Sudija] ([SudijaJMBG#])
GO
ALTER TABLE [dbo].[Izvestaj]  WITH CHECK ADD FOREIGN KEY([TrenerJMBG#fk])
REFERENCES [dbo].[Trener] ([TrenerJMBG#])
GO
ALTER TABLE [dbo].[Klub]  WITH CHECK ADD FOREIGN KEY([SifraFS#fk])
REFERENCES [dbo].[FudbalskiSavez] ([SifraFS#])
GO
ALTER TABLE [dbo].[Pomocni]  WITH CHECK ADD FOREIGN KEY([SudijaJMBG#fk])
REFERENCES [dbo].[Sudija] ([SudijaJMBG#])
GO
ALTER TABLE [dbo].[Radnik]  WITH CHECK ADD FOREIGN KEY([SifraBlagajne#fk])
REFERENCES [dbo].[Blagajna] ([SifraBlagajne#])
GO
ALTER TABLE [dbo].[RadnikAngazovanje]  WITH CHECK ADD FOREIGN KEY([RadnikJMBG#fk])
REFERENCES [dbo].[Radnik] ([RadnikJMBG#])
GO
ALTER TABLE [dbo].[RadnikAngazovanje]  WITH CHECK ADD FOREIGN KEY([SifraRM#fk])
REFERENCES [dbo].[RadnoMesto] ([SifraRM#])
GO
ALTER TABLE [dbo].[Sudija]  WITH CHECK ADD FOREIGN KEY([SifraFS#fk])
REFERENCES [dbo].[FudbalskiSavez] ([SifraFS#])
GO
ALTER TABLE [dbo].[Teren]  WITH CHECK ADD FOREIGN KEY([NazivGrada#fk])
REFERENCES [dbo].[Grad] ([NazivGrada#])
GO
ALTER TABLE [dbo].[Teren]  WITH CHECK ADD FOREIGN KEY([SifraTreninga#fk])
REFERENCES [dbo].[Trening] ([SifraTreninga#])
GO
ALTER TABLE [dbo].[TrenerAngazovanje]  WITH CHECK ADD FOREIGN KEY([SifraRM#fk])
REFERENCES [dbo].[RadnoMesto] ([SifraRM#])
GO
ALTER TABLE [dbo].[TrenerAngazovanje]  WITH CHECK ADD FOREIGN KEY([TrenerJMBG#fk])
REFERENCES [dbo].[Trener] ([TrenerJMBG#])
GO
ALTER TABLE [dbo].[Trening]  WITH CHECK ADD FOREIGN KEY([TrenerJMBG#fk])
REFERENCES [dbo].[Trener] ([TrenerJMBG#])
GO
ALTER TABLE [dbo].[Ucestvuje]  WITH CHECK ADD FOREIGN KEY([IgracJMBG#fk])
REFERENCES [dbo].[Igrac] ([IgracJMBG#])
GO
ALTER TABLE [dbo].[Ucestvuje]  WITH CHECK ADD FOREIGN KEY([SifraTreninga#fk])
REFERENCES [dbo].[Trening] ([SifraTreninga#])
GO
ALTER TABLE [dbo].[Ulaznica]  WITH CHECK ADD FOREIGN KEY([SifraBlagajne#fk])
REFERENCES [dbo].[Blagajna] ([SifraBlagajne#])
GO
ALTER TABLE [dbo].[Utakmica]  WITH CHECK ADD FOREIGN KEY([SifraKlubaD#fk])
REFERENCES [dbo].[Klub] ([SifraKluba#])
GO
ALTER TABLE [dbo].[Utakmica]  WITH CHECK ADD FOREIGN KEY([SifraKlubaG#fk])
REFERENCES [dbo].[Klub] ([SifraKluba#])
GO
ALTER TABLE [dbo].[Utakmica]  WITH CHECK ADD FOREIGN KEY([SifraLokacije#fk])
REFERENCES [dbo].[Teren] ([SifraLokacije#])
GO
ALTER TABLE [dbo].[Utakmica]  WITH CHECK ADD FOREIGN KEY([SudijaJMBG#fk])
REFERENCES [dbo].[Sudija] ([SudijaJMBG#])
GO
/****** Object:  StoredProcedure [dbo].[kdpPromenaTerena]    Script Date: 9.7.2024. 02.57.12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[kdpPromenaTerena] 
			@pSifraUtakmice# int, @pNazivTerena nvarchar(30), @pAdresaTerena nvarchar(30), @pNazivGrada nvarchar(30), @lprocpovecanja numeric
AS
DECLARE @lSifraNoveLokacije as int

BEGIN TRY 
	SET XACT_ABORT ON --U slučaju pojave greške sprečavanje daljeg izvršavanja
	if not @lprocpovecanja > 0  throw 50000 ,'', 1

	BEGIN TRANSACTION

	--Ubacivanje novog grada
		INSERT INTO Grad(NazivGrada#)
			values(@pNazivGrada)

	--Ubacivanje novog terena
	SELECT @lSifraNoveLokacije=isnull(max(Teren.SifraLokacije#),0)+1111
	FROM Teren
		INSERT INTO Teren([SifraLokacije#],[NazivTerena],[AdresaTerena],[NazivGrada#fk],[SifraTreninga#fk])
			values(@lSifraNoveLokacije,@pNazivTerena,@pAdresaTerena,@pNazivGrada,null)

UPDATE pUtakmica_Teren_Grad_Sudija
	set pUtakmica_Teren_Grad_Sudija.PremijaS = pUtakmica_Teren_Grad_Sudija.PremijaS + (pUtakmica_Teren_Grad_Sudija.PremijaS * @lprocpovecanja/100)
	FROM pUtakmica_Teren_Grad_Sudija
	WHERE (pUtakmica_Teren_Grad_Sudija.SifraUtakmice# = @pSifraUtakmice# )

UPDATE Utakmica
	set Utakmica.SifraLokacije#fk=6666
	FROM Utakmica
	WHERE (Utakmica.SifraUtakmice# = 5 )

	COMMIT TRANSACTION

	END TRY 

	BEGIN CATCH 
		PRINT 'DOŠLO JE DO GREŠKE!'
		PRINT '-----Proverite ulazne parametre-----'
		ROLLBACK TRANSACTION; 
		PRINT 'Transakcija je poništila promene.'
	END CATCH;
GO
USE [master]
GO
ALTER DATABASE [Fudbalski_klub] SET  READ_WRITE 
GO
