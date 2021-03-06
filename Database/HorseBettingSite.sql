USE [HorseBettingSite]
GO
/****** Object:  Table [dbo].[horse]    Script Date: 2019-10-06 12:24:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[horse](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[ownerid] [int] NOT NULL,
 CONSTRAINT [PK_horse] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jockey]    Script Date: 2019-10-06 12:24:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jockey](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_jockey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[location]    Script Date: 2019-10-06 12:24:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[location](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](200) NOT NULL,
 CONSTRAINT [PK_location] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[owner]    Script Date: 2019-10-06 12:24:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[owner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[address] [varchar](300) NULL,
	[phone] [varchar](50) NULL,
 CONSTRAINT [PK_owner] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[race]    Script Date: 2019-10-06 12:24:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[race](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [datetime] NULL,
	[locationid] [int] NOT NULL,
 CONSTRAINT [PK_race] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[racehorse]    Script Date: 2019-10-06 12:24:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[racehorse](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[raceid] [int] NOT NULL,
	[horseid] [int] NOT NULL,
	[jockeyid] [int] NULL,
	[odd] [int] NOT NULL,
	[position] [int] NULL,
 CONSTRAINT [PK_racehorse] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[horse] ON 
GO
INSERT [dbo].[horse] ([id], [name], [ownerid]) VALUES (1, N'Pink Tulip', 1)
GO
INSERT [dbo].[horse] ([id], [name], [ownerid]) VALUES (2, N'Wind Rider', 1)
GO
INSERT [dbo].[horse] ([id], [name], [ownerid]) VALUES (3, N'Black Velvet', 1)
GO
INSERT [dbo].[horse] ([id], [name], [ownerid]) VALUES (4, N'Blue Ocean', 1)
GO
INSERT [dbo].[horse] ([id], [name], [ownerid]) VALUES (5, N'Night Wind', 1)
GO
INSERT [dbo].[horse] ([id], [name], [ownerid]) VALUES (6, N'Jewel Mark', 1)
GO
INSERT [dbo].[horse] ([id], [name], [ownerid]) VALUES (7, N'Sweet Sondra', 1)
GO
INSERT [dbo].[horse] ([id], [name], [ownerid]) VALUES (8, N'Mark of the Unicorn', 2)
GO
INSERT [dbo].[horse] ([id], [name], [ownerid]) VALUES (9, N'Swindling Eyes', 2)
GO
INSERT [dbo].[horse] ([id], [name], [ownerid]) VALUES (10, N'Love, Death, Prey', 2)
GO
INSERT [dbo].[horse] ([id], [name], [ownerid]) VALUES (11, N'The Underdog', 2)
GO
INSERT [dbo].[horse] ([id], [name], [ownerid]) VALUES (12, N'Grey Wolf', 2)
GO
INSERT [dbo].[horse] ([id], [name], [ownerid]) VALUES (13, N'Serpent Hill', 2)
GO
INSERT [dbo].[horse] ([id], [name], [ownerid]) VALUES (14, N'Tired Vixen', 3)
GO
INSERT [dbo].[horse] ([id], [name], [ownerid]) VALUES (15, N'Blood Angel', 3)
GO
INSERT [dbo].[horse] ([id], [name], [ownerid]) VALUES (16, N'Stuffed Fury', 3)
GO
INSERT [dbo].[horse] ([id], [name], [ownerid]) VALUES (17, N'Longneck', 3)
GO
INSERT [dbo].[horse] ([id], [name], [ownerid]) VALUES (18, N'Sepient Lizzy', 3)
GO
INSERT [dbo].[horse] ([id], [name], [ownerid]) VALUES (19, N'Olden Goldie', 4)
GO
INSERT [dbo].[horse] ([id], [name], [ownerid]) VALUES (20, N'Shanting Roach', 4)
GO
INSERT [dbo].[horse] ([id], [name], [ownerid]) VALUES (21, N'Bloody Marry', 4)
GO
INSERT [dbo].[horse] ([id], [name], [ownerid]) VALUES (22, N'Sucking Soul', 4)
GO
INSERT [dbo].[horse] ([id], [name], [ownerid]) VALUES (23, N'Wind of Change', 4)
GO
INSERT [dbo].[horse] ([id], [name], [ownerid]) VALUES (24, N'Sea of Ocean', 4)
GO
INSERT [dbo].[horse] ([id], [name], [ownerid]) VALUES (25, N'Blinding Light', 4)
GO
SET IDENTITY_INSERT [dbo].[horse] OFF
GO
SET IDENTITY_INSERT [dbo].[jockey] ON 
GO
INSERT [dbo].[jockey] ([id], [name]) VALUES (1, N'Kurt Swindon')
GO
INSERT [dbo].[jockey] ([id], [name]) VALUES (2, N'Sara Uplong')
GO
INSERT [dbo].[jockey] ([id], [name]) VALUES (3, N'Lena Rake')
GO
INSERT [dbo].[jockey] ([id], [name]) VALUES (4, N'Matt Lachance')
GO
INSERT [dbo].[jockey] ([id], [name]) VALUES (5, N'Matthew Smith')
GO
INSERT [dbo].[jockey] ([id], [name]) VALUES (6, N'Susan Herrford')
GO
INSERT [dbo].[jockey] ([id], [name]) VALUES (7, N'Tina Abberdin')
GO
INSERT [dbo].[jockey] ([id], [name]) VALUES (8, N'Tim Ruthford')
GO
INSERT [dbo].[jockey] ([id], [name]) VALUES (9, N'Harry Gordon')
GO
INSERT [dbo].[jockey] ([id], [name]) VALUES (10, N'Flash Groben')
GO
INSERT [dbo].[jockey] ([id], [name]) VALUES (11, N'Marry  Couldron')
GO
INSERT [dbo].[jockey] ([id], [name]) VALUES (12, N'Tex Wildchild')
GO
INSERT [dbo].[jockey] ([id], [name]) VALUES (13, N'Andrew Lobo')
GO
INSERT [dbo].[jockey] ([id], [name]) VALUES (14, N'Carl Urban')
GO
INSERT [dbo].[jockey] ([id], [name]) VALUES (15, N'Ingrid Svensson')
GO
INSERT [dbo].[jockey] ([id], [name]) VALUES (16, N'Amberly Ticker')
GO
SET IDENTITY_INSERT [dbo].[jockey] OFF
GO
SET IDENTITY_INSERT [dbo].[location] ON 
GO
INSERT [dbo].[location] ([id], [name]) VALUES (1, N'Track of Heaven')
GO
INSERT [dbo].[location] ([id], [name]) VALUES (2, N'The Underground')
GO
INSERT [dbo].[location] ([id], [name]) VALUES (3, N'Middlway Course')
GO
INSERT [dbo].[location] ([id], [name]) VALUES (4, N'Until the Sunset')
GO
SET IDENTITY_INSERT [dbo].[location] OFF
GO
SET IDENTITY_INSERT [dbo].[owner] ON 
GO
INSERT [dbo].[owner] ([id], [name], [address], [phone]) VALUES (1, N'Mystic Horses', N'Wild West Ranche', N'0467238234')
GO
INSERT [dbo].[owner] ([id], [name], [address], [phone]) VALUES (2, N'Gordons', N'The Outback, Australia', N'000987653')
GO
INSERT [dbo].[owner] ([id], [name], [address], [phone]) VALUES (3, N'Tantrum Souls', N'Islands of Greek, 08734', N'0678947435')
GO
INSERT [dbo].[owner] ([id], [name], [address], [phone]) VALUES (4, N'The Wind', N'Mountains of Norway', N'00656238234')
GO
SET IDENTITY_INSERT [dbo].[owner] OFF
GO
SET IDENTITY_INSERT [dbo].[race] ON 
GO
INSERT [dbo].[race] ([id], [date], [locationid]) VALUES (1, CAST(N'2017-12-31T13:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[race] ([id], [date], [locationid]) VALUES (2, CAST(N'2018-01-01T17:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[race] ([id], [date], [locationid]) VALUES (3, CAST(N'2018-06-12T18:30:00.000' AS DateTime), 2)
GO
INSERT [dbo].[race] ([id], [date], [locationid]) VALUES (4, CAST(N'2018-12-24T13:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[race] ([id], [date], [locationid]) VALUES (5, CAST(N'2018-12-31T21:00:00.000' AS DateTime), 3)
GO
INSERT [dbo].[race] ([id], [date], [locationid]) VALUES (6, CAST(N'2019-01-01T17:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[race] ([id], [date], [locationid]) VALUES (7, CAST(N'2019-02-14T13:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[race] ([id], [date], [locationid]) VALUES (8, CAST(N'2019-03-17T22:00:00.000' AS DateTime), 3)
GO
INSERT [dbo].[race] ([id], [date], [locationid]) VALUES (9, CAST(N'2019-05-04T18:10:00.000' AS DateTime), 4)
GO
INSERT [dbo].[race] ([id], [date], [locationid]) VALUES (10, CAST(N'2019-06-07T12:00:00.000' AS DateTime), 4)
GO
INSERT [dbo].[race] ([id], [date], [locationid]) VALUES (11, CAST(N'2019-10-01T14:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[race] ([id], [date], [locationid]) VALUES (12, CAST(N'2019-10-15T15:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[race] ([id], [date], [locationid]) VALUES (13, CAST(N'2019-11-05T09:00:00.000' AS DateTime), 3)
GO
INSERT [dbo].[race] ([id], [date], [locationid]) VALUES (14, CAST(N'2019-11-17T17:00:00.000' AS DateTime), 4)
GO
INSERT [dbo].[race] ([id], [date], [locationid]) VALUES (15, CAST(N'2019-12-24T13:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[race] ([id], [date], [locationid]) VALUES (16, CAST(N'2019-12-31T21:00:00.000' AS DateTime), 4)
GO
SET IDENTITY_INSERT [dbo].[race] OFF
GO
SET IDENTITY_INSERT [dbo].[racehorse] ON 
GO
INSERT [dbo].[racehorse] ([id], [raceid], [horseid], [jockeyid], [odd], [position]) VALUES (1, 11, 1, 1, 4, NULL)
GO
INSERT [dbo].[racehorse] ([id], [raceid], [horseid], [jockeyid], [odd], [position]) VALUES (2, 11, 2, 2, 3, NULL)
GO
INSERT [dbo].[racehorse] ([id], [raceid], [horseid], [jockeyid], [odd], [position]) VALUES (3, 11, 3, 4, 2, NULL)
GO
INSERT [dbo].[racehorse] ([id], [raceid], [horseid], [jockeyid], [odd], [position]) VALUES (4, 11, 6, 7, 1, NULL)
GO
INSERT [dbo].[racehorse] ([id], [raceid], [horseid], [jockeyid], [odd], [position]) VALUES (5, 11, 10, 6, 5, NULL)
GO
INSERT [dbo].[racehorse] ([id], [raceid], [horseid], [jockeyid], [odd], [position]) VALUES (6, 11, 12, 10, 3, NULL)
GO
INSERT [dbo].[racehorse] ([id], [raceid], [horseid], [jockeyid], [odd], [position]) VALUES (7, 12, 2, 3, 2, NULL)
GO
INSERT [dbo].[racehorse] ([id], [raceid], [horseid], [jockeyid], [odd], [position]) VALUES (8, 12, 1, 1, 3, NULL)
GO
INSERT [dbo].[racehorse] ([id], [raceid], [horseid], [jockeyid], [odd], [position]) VALUES (9, 12, 3, 4, 1, NULL)
GO
INSERT [dbo].[racehorse] ([id], [raceid], [horseid], [jockeyid], [odd], [position]) VALUES (10, 12, 5, 7, 4, NULL)
GO
INSERT [dbo].[racehorse] ([id], [raceid], [horseid], [jockeyid], [odd], [position]) VALUES (11, 12, 7, 6, 2, NULL)
GO
INSERT [dbo].[racehorse] ([id], [raceid], [horseid], [jockeyid], [odd], [position]) VALUES (12, 12, 13, 5, 1, NULL)
GO
INSERT [dbo].[racehorse] ([id], [raceid], [horseid], [jockeyid], [odd], [position]) VALUES (13, 13, 5, 7, 2, NULL)
GO
INSERT [dbo].[racehorse] ([id], [raceid], [horseid], [jockeyid], [odd], [position]) VALUES (14, 13, 6, 5, 3, NULL)
GO
INSERT [dbo].[racehorse] ([id], [raceid], [horseid], [jockeyid], [odd], [position]) VALUES (15, 13, 7, 6, 1, NULL)
GO
INSERT [dbo].[racehorse] ([id], [raceid], [horseid], [jockeyid], [odd], [position]) VALUES (16, 13, 16, 8, 4, NULL)
GO
INSERT [dbo].[racehorse] ([id], [raceid], [horseid], [jockeyid], [odd], [position]) VALUES (17, 13, 14, 1, 3, NULL)
GO
INSERT [dbo].[racehorse] ([id], [raceid], [horseid], [jockeyid], [odd], [position]) VALUES (18, 13, 15, 2, 2, NULL)
GO
SET IDENTITY_INSERT [dbo].[racehorse] OFF
GO
ALTER TABLE [dbo].[horse]  WITH CHECK ADD  CONSTRAINT [FK_horse_owner] FOREIGN KEY([ownerid])
REFERENCES [dbo].[owner] ([id])
GO
ALTER TABLE [dbo].[horse] CHECK CONSTRAINT [FK_horse_owner]
GO
ALTER TABLE [dbo].[race]  WITH CHECK ADD  CONSTRAINT [FK_race_location] FOREIGN KEY([locationid])
REFERENCES [dbo].[location] ([id])
GO
ALTER TABLE [dbo].[race] CHECK CONSTRAINT [FK_race_location]
GO
ALTER TABLE [dbo].[racehorse]  WITH CHECK ADD  CONSTRAINT [FK_racehorse_horse] FOREIGN KEY([horseid])
REFERENCES [dbo].[horse] ([id])
GO
ALTER TABLE [dbo].[racehorse] CHECK CONSTRAINT [FK_racehorse_horse]
GO
ALTER TABLE [dbo].[racehorse]  WITH CHECK ADD  CONSTRAINT [FK_racehorse_jockey] FOREIGN KEY([jockeyid])
REFERENCES [dbo].[jockey] ([id])
GO
ALTER TABLE [dbo].[racehorse] CHECK CONSTRAINT [FK_racehorse_jockey]
GO
ALTER TABLE [dbo].[racehorse]  WITH CHECK ADD  CONSTRAINT [FK_racehorse_race] FOREIGN KEY([raceid])
REFERENCES [dbo].[race] ([id])
GO
ALTER TABLE [dbo].[racehorse] CHECK CONSTRAINT [FK_racehorse_race]
GO
