-- add in the authors
SET IDENTITY_INSERT [dbo].[tblAuthor] ON 

INSERT [dbo].[tblAuthor] ([AuthorId], [AuthorName]) VALUES (1, N'Chris Chibnall')

INSERT [dbo].[tblAuthor] ([AuthorId], [AuthorName]) VALUES (2, N'Gareth Roberts')

INSERT [dbo].[tblAuthor] ([AuthorId], [AuthorName]) VALUES (3, N'Helen Raynor')

INSERT [dbo].[tblAuthor] ([AuthorId], [AuthorName]) VALUES (4, N'James Moran')

INSERT [dbo].[tblAuthor] ([AuthorId], [AuthorName]) VALUES (5, N'James Strong')

SET IDENTITY_INSERT [dbo].[tblAuthor] OFF

-- add in the companions
SET IDENTITY_INSERT [dbo].[tblCompanion] ON 

INSERT [dbo].[tblCompanion] ([CompanionId], [CompanionName], [WhoPlayed]) VALUES (1, N'River Song', N'Alex Kingston')

INSERT [dbo].[tblCompanion] ([CompanionId], [CompanionName], [WhoPlayed]) VALUES (2, N'Rory Williams', N'Arthur Darvill')

INSERT [dbo].[tblCompanion] ([CompanionId], [CompanionName], [WhoPlayed]) VALUES (3, N'Wilfred Mott', N'Bernard Cribbins')

INSERT [dbo].[tblCompanion] ([CompanionId], [CompanionName], [WhoPlayed]) VALUES (4, N'Rose Tyler', N'Billie Piper')

INSERT [dbo].[tblCompanion] ([CompanionId], [CompanionName], [WhoPlayed]) VALUES (5, N'Adam Mitchell', N'Bruno Langley')

SET IDENTITY_INSERT [dbo].[tblCompanion] OFF

-- add in the doctors
SET IDENTITY_INSERT [dbo].[tblDoctor] ON 

INSERT [dbo].[tblDoctor] ([DoctorId], [DoctorNumber], [DoctorName], [BirthDate], [FirstEpisodeDate], [LastEpisodeDate]) VALUES (1, 9, N'Christopher Eccleston', CAST(0xD8F00A00 AS Date), CAST(0x7E2B0B00 AS Date), CAST(0xD22B0B00 AS Date))

INSERT [dbo].[tblDoctor] ([DoctorId], [DoctorNumber], [DoctorName], [BirthDate], [FirstEpisodeDate], [LastEpisodeDate]) VALUES (2, 6, N'Colin Baker', CAST(0x52D30A00 AS Date), CAST(0x7E0D0B00 AS Date), CAST(0x61110B00 AS Date))

INSERT [dbo].[tblDoctor] ([DoctorId], [DoctorNumber], [DoctorName], [BirthDate], [FirstEpisodeDate], [LastEpisodeDate]) VALUES (3, 10, N'David Tennant', CAST(0x12FB0A00 AS Date), CAST(0xD22B0B00 AS Date), CAST(0x4C320B00 AS Date))

INSERT [dbo].[tblDoctor] ([DoctorId], [DoctorNumber], [DoctorName], [BirthDate], [FirstEpisodeDate], [LastEpisodeDate]) VALUES (4, 3, N'Jon Pertwee', CAST(0xDE3F0B00 AS Date), CAST(0x3CF90A00 AS Date), CAST(0x8DFF0A00 AS Date))

INSERT [dbo].[tblDoctor] ([DoctorId], [DoctorNumber], [DoctorName], [BirthDate], [FirstEpisodeDate], [LastEpisodeDate]) VALUES (5, 11, N'Matt Smith', CAST(0x850B0B00 AS Date), CAST(0x4C320B00 AS Date), CAST(0xFA370B00 AS Date))

SET IDENTITY_INSERT [dbo].[tblDoctor] OFF

-- add in the enemies
SET IDENTITY_INSERT [dbo].[tblEnemy] ON 

INSERT [dbo].[tblEnemy] ([EnemyId], [EnemyName], [Description]) VALUES (1, N'The Autons', N'Murderous mannequins')

INSERT [dbo].[tblEnemy] ([EnemyId], [EnemyName], [Description]) VALUES (2, N'Lady Cassandra', N'The last living human being')

INSERT [dbo].[tblEnemy] ([EnemyId], [EnemyName], [Description]) VALUES (3, N'The Gelth', N'An alien species comprised of gas')

INSERT [dbo].[tblEnemy] ([EnemyId], [EnemyName], [Description]) VALUES (4, N'The Slitheen', N'A baby-faced alien family')

INSERT [dbo].[tblEnemy] ([EnemyId], [EnemyName], [Description]) VALUES (5, N'Daleks', N'Armoured aliens')

SET IDENTITY_INSERT [dbo].[tblEnemy] OFF

-- add the episodes
SET IDENTITY_INSERT [dbo].[tblEpisode] ON 

INSERT [dbo].[tblEpisode] ([EpisodeId], [SeriesNumber], [EpisodeNumber], [EpisodeType], [Title], [EpisodeDate], [AuthorId], [DoctorId], [Notes]) VALUES (1, 1, 1, N'Normal episode', N'Rose', CAST(0x7E2B0B00 AS Date), 1, 1, NULL)

INSERT [dbo].[tblEpisode] ([EpisodeId], [SeriesNumber], [EpisodeNumber], [EpisodeType], [Title], [EpisodeDate], [AuthorId], [DoctorId], [Notes]) VALUES (2, 1, 2, N'Normal episode', N'The End of the World', CAST(0x852B0B00 AS Date), 2, 2, NULL)

INSERT [dbo].[tblEpisode] ([EpisodeId], [SeriesNumber], [EpisodeNumber], [EpisodeType], [Title], [EpisodeDate], [AuthorId], [DoctorId], [Notes]) VALUES (3, 1, 3, N'Normal episode', N'The Unquiet Dead', CAST(0x8C2B0B00 AS Date), 3, 3, NULL)

INSERT [dbo].[tblEpisode] ([EpisodeId], [SeriesNumber], [EpisodeNumber], [EpisodeType], [Title], [EpisodeDate], [AuthorId], [DoctorId], [Notes]) VALUES (4, 1, 4, N'Normal episode', N'Aliens of London (Part 1)', CAST(0x932B0B00 AS Date), 4, 4, NULL)

INSERT [dbo].[tblEpisode] ([EpisodeId], [SeriesNumber], [EpisodeNumber], [EpisodeType], [Title], [EpisodeDate], [AuthorId], [DoctorId], [Notes]) VALUES (5, 1, 5, N'Normal episode', N'World War Three (Part 2)', CAST(0x9A2B0B00 AS Date), 5, 5, NULL)

SET IDENTITY_INSERT [dbo].[tblEpisode] OFF

-- add which companions were in which episodes
SET IDENTITY_INSERT [dbo].[tblEpisodeCompanion] ON 

INSERT [dbo].[tblEpisodeCompanion] ([EpisodeCompanionId], [EpisodeId], [CompanionId]) VALUES (1, 1, 1)

INSERT [dbo].[tblEpisodeCompanion] ([EpisodeCompanionId], [EpisodeId], [CompanionId]) VALUES (2, 2, 2)

INSERT [dbo].[tblEpisodeCompanion] ([EpisodeCompanionId], [EpisodeId], [CompanionId]) VALUES (3, 3, 3)

INSERT [dbo].[tblEpisodeCompanion] ([EpisodeCompanionId], [EpisodeId], [CompanionId]) VALUES (4, 4, 4)

INSERT [dbo].[tblEpisodeCompanion] ([EpisodeCompanionId], [EpisodeId], [CompanionId]) VALUES (5, 5, 5)

SET IDENTITY_INSERT [dbo].[tblEpisodeCompanion] OFF

-- add which enemies were in which episodes
SET IDENTITY_INSERT [dbo].[tblEpisodeEnemy] ON 

INSERT [dbo].[tblEpisodeEnemy] ([EpisodeEnemyId], [EpisodeId], [EnemyId]) VALUES (1, 1, 1)

INSERT [dbo].[tblEpisodeEnemy] ([EpisodeEnemyId], [EpisodeId], [EnemyId]) VALUES (2, 2, 2)

INSERT [dbo].[tblEpisodeEnemy] ([EpisodeEnemyId], [EpisodeId], [EnemyId]) VALUES (3, 3, 3)

INSERT [dbo].[tblEpisodeEnemy] ([EpisodeEnemyId], [EpisodeId], [EnemyId]) VALUES (4, 4, 4)

INSERT [dbo].[tblEpisodeEnemy] ([EpisodeEnemyId], [EpisodeId], [EnemyId]) VALUES (5, 5, 5)

SET IDENTITY_INSERT [dbo].[tblEpisodeEnemy] OFF