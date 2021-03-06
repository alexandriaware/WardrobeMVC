USE [master]
GO
/****** Object:  Database [WardrobeDB]    Script Date: 11/5/2017 10:57:35 PM ******/
CREATE DATABASE [WardrobeDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WardrobeDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WardrobeDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WardrobeDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WardrobeDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WardrobeDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WardrobeDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WardrobeDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WardrobeDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WardrobeDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [WardrobeDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WardrobeDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WardrobeDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WardrobeDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WardrobeDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WardrobeDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WardrobeDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WardrobeDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WardrobeDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WardrobeDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WardrobeDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WardrobeDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WardrobeDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WardrobeDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WardrobeDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WardrobeDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WardrobeDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WardrobeDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WardrobeDB] SET  MULTI_USER 
GO
ALTER DATABASE [WardrobeDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WardrobeDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WardrobeDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WardrobeDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WardrobeDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [WardrobeDB]
GO
/****** Object:  Table [dbo].[ArmAccessory]    Script Date: 11/5/2017 10:57:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArmAccessory](
	[ArmAccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](200) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NULL,
	[Occasion] [nvarchar](50) NULL,
 CONSTRAINT [PK_ArmAccessory] PRIMARY KEY CLUSTERED 
(
	[ArmAccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 11/5/2017 10:57:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](200) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NULL,
	[Occasion] [nvarchar](50) NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HeadAccessory]    Script Date: 11/5/2017 10:57:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HeadAccessory](
	[HeadAccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](200) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NULL,
	[Occasion] [nvarchar](50) NULL,
 CONSTRAINT [PK_HeadAccessory] PRIMARY KEY CLUSTERED 
(
	[HeadAccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NeckAccessory]    Script Date: 11/5/2017 10:57:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NeckAccessory](
	[NeckAccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](200) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NULL,
	[Occasion] [nvarchar](50) NULL,
 CONSTRAINT [PK_NeckAccessory] PRIMARY KEY CLUSTERED 
(
	[NeckAccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Outfits]    Script Date: 11/5/2017 10:57:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outfits](
	[OutfitsID] [int] IDENTITY(1,1) NOT NULL,
	[TopID] [int] NOT NULL,
	[BottomID] [int] NOT NULL,
	[ShoeID] [int] NOT NULL,
	[HeadAccessoryID] [int] NOT NULL,
	[NeckAccessoryID] [int] NOT NULL,
	[ArmAccessoryID] [int] NOT NULL,
 CONSTRAINT [PK_Outfits] PRIMARY KEY CLUSTERED 
(
	[OutfitsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 11/5/2017 10:57:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoesID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](200) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NULL,
	[Occasion] [nvarchar](50) NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tops]    Script Date: 11/5/2017 10:57:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tops](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](200) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NULL,
	[Occasion] [varchar](50) NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Bottoms] ON 

INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Pup Pantyhose', N'Content/Images/PupPantyhose.jpg', N'Pants', N'Black', N'Any', N'Formal')
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Doggo Waders', N'Content/Images/NoMudDog.jpg', N'Pants', N'Black', N'Any', N'When')
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (3, N'Overalls for Paws', N'Content/Images/PupOveralls.jpg', N'Pants', N'Blue', N'Any', N'Casual')
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (4, N'Dog Diaper', N'Content/Images/DoggoNappy.jpg', N'Diaper Cover', N'Assorted', N'Any', N'When he pees the carpet')
SET IDENTITY_INSERT [dbo].[Bottoms] OFF
SET IDENTITY_INSERT [dbo].[NeckAccessory] ON 

INSERT [dbo].[NeckAccessory] ([NeckAccessoryID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Monkey Hood', N'Content/Images/MonkeyKat.jpg', N'Hat', N'Brown', N'Halloween', N'Costume')
INSERT [dbo].[NeckAccessory] ([NeckAccessoryID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (3, N'Crochet Beanie', N'Content/Images/catHat.jpeg', N'Hat', N'Multi', N'When it''s cold', N'Outerwear')
INSERT [dbo].[NeckAccessory] ([NeckAccessoryID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (4, N'Top Hat', N'Content/Images/SnikHat.jpg', N'Hat', N'Black', N'Any', N'Formal')
INSERT [dbo].[NeckAccessory] ([NeckAccessoryID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (5, N'Bowtie', N'Content/Images/PupTie.jpg', N'Tie', N'Assorted', N'Any', N'Formal')
INSERT [dbo].[NeckAccessory] ([NeckAccessoryID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (6, N'Harness', N'Content/Images/BunHarness.jpg', N'Leash', N'Black', N'Any', N'For walking your pet when you want to keep it')
INSERT [dbo].[NeckAccessory] ([NeckAccessoryID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (7, N'Neck Tie', N'Content/Images/BusinessCatTie.jpg', N'Tie', N'Multi', N'Any', N'Business')
SET IDENTITY_INSERT [dbo].[NeckAccessory] OFF
SET IDENTITY_INSERT [dbo].[Shoes] ON 

INSERT [dbo].[Shoes] ([ShoesID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Converse', N'Content/Images/PupChucks.jpg', N'Sneakers', N'Black', N'Any', N'Casual')
INSERT [dbo].[Shoes] ([ShoesID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Rainboots', N'Content/Images/DogRainboots.jpg', N'Boots', N'Pink', N'Spring', N'When it''s wet')
INSERT [dbo].[Shoes] ([ShoesID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (3, N'Cowboy Boots', N'Content/Images/PussInBoots.jpg', N'Boots', N'Brown', N'Any', N'Fashion')
INSERT [dbo].[Shoes] ([ShoesID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (4, N'All-Terrain Booties', N'Content/Images/AllTerrainBooties.jpg', N'Casual', N'Multi', N'Wet, hot, or cold', N'Outdoors')
SET IDENTITY_INSERT [dbo].[Shoes] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (3, N'Fluffy Coat', N'Content/Images/fluffycoat.jpg', N'Coat', N'Black', N'Winter', N'When you want to be warm')
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (4, N'Stitch Hoodie', N'/Content/Images/StitchShirt.jpg', N'Shirt', N'Blue', N'Halloween', N'Costume')
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (5, N'Fatshame Shirt', N'Content/Images/FatShirt.jpg', N'Tshirt', N'Pink', N'Any', N'Casual')
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (6, N'Ruffled Blouse', N'Content/Images/FormalKitty.jpg', N'Blouse', N'Pink', N'Any', N'Formal')
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (7, N'Knit Sweater', N'Content/Images/KittenSweater.jpg', N'Sweater', N'Multi', N'Fall / Winter', N'Any')
SET IDENTITY_INSERT [dbo].[Tops] OFF
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_ArmAccessory] FOREIGN KEY([ArmAccessoryID])
REFERENCES [dbo].[ArmAccessory] ([ArmAccessoryID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_ArmAccessory]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Bottoms] FOREIGN KEY([BottomID])
REFERENCES [dbo].[Bottoms] ([BottomID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Bottoms]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_HeadAccessory] FOREIGN KEY([HeadAccessoryID])
REFERENCES [dbo].[HeadAccessory] ([HeadAccessoryID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_HeadAccessory]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_NeckAccessory] FOREIGN KEY([NeckAccessoryID])
REFERENCES [dbo].[NeckAccessory] ([NeckAccessoryID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_NeckAccessory]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Shoes] FOREIGN KEY([ShoeID])
REFERENCES [dbo].[Shoes] ([ShoesID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Shoes]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Tops] FOREIGN KEY([TopID])
REFERENCES [dbo].[Tops] ([TopID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Tops]
GO
USE [master]
GO
ALTER DATABASE [WardrobeDB] SET  READ_WRITE 
GO
