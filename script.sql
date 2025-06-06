USE [master]
GO
/****** Object:  Database [test1]    Script Date: 29.05.2025 11:58:59 ******/
CREATE DATABASE [test1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'test1', FILENAME = N'/var/opt/mssql/data/test1.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'test1_log', FILENAME = N'/var/opt/mssql/data/test1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [test1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [test1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [test1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [test1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [test1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [test1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [test1] SET ARITHABORT OFF 
GO
ALTER DATABASE [test1] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [test1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [test1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [test1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [test1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [test1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [test1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [test1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [test1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [test1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [test1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [test1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [test1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [test1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [test1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [test1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [test1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [test1] SET RECOVERY FULL 
GO
ALTER DATABASE [test1] SET  MULTI_USER 
GO
ALTER DATABASE [test1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [test1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [test1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [test1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [test1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [test1] SET QUERY_STORE = OFF
GO
USE [test1]
GO
/****** Object:  Table [dbo].[Material_type_import$]    Script Date: 29.05.2025 11:58:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material_type_import$](
	[Id] [float] NULL,
	[Тип материала] [nvarchar](255) NULL,
	[Процент брака материала ] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partner_products_import$]    Script Date: 29.05.2025 11:58:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner_products_import$](
	[ID] [float] NULL,
	[Продукция] [nvarchar](255) NULL,
	[Наименование партнера] [nvarchar](255) NULL,
	[Количество продукции] [float] NULL,
	[Дата продажи] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partners_import$]    Script Date: 29.05.2025 11:58:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners_import$](
	[ID_Partnuri] [int] NOT NULL,
	[Тип партнера] [nvarchar](255) NULL,
	[Наименование партнера] [nvarchar](255) NULL,
	[Директор] [nvarchar](255) NULL,
	[Электронная почта партнера] [nvarchar](255) NULL,
	[Телефон партнера] [nvarchar](255) NULL,
	[Юридический адрес партнера] [nvarchar](255) NULL,
	[ИНН] [float] NULL,
	[Рейтинг] [float] NULL,
 CONSTRAINT [PK_Partners_import$] PRIMARY KEY CLUSTERED 
(
	[ID_Partnuri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_type_import$]    Script Date: 29.05.2025 11:58:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_type_import$](
	[ID_Tipa_Producta] [int] NOT NULL,
	[Тип продукции] [nvarchar](255) NULL,
	[Коэффициент типа продукции] [float] NULL,
 CONSTRAINT [PK_Product_type_import$] PRIMARY KEY CLUSTERED 
(
	[ID_Tipa_Producta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products_import$]    Script Date: 29.05.2025 11:58:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products_import$](
	[IDTipProdukcii] [nvarchar](255) NULL,
	[TipProdukcii] [nvarchar](255) NULL,
	[NaimenovanieProdukcii] [nvarchar](255) NULL,
	[Articul] [float] NULL,
	[MinimalnaiaStoimostDlaPartnera ] [float] NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [test1] SET  READ_WRITE 
GO
