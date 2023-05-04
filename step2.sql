--create author table
CREATE TABLE [dbo].[tblAuthor] (
	[AuthorId] [int] IDENTITY(1,1) NOT NULL,
	[AuthorName] [nvarchar](50) NULL,

	CONSTRAINT [PK_tblAuthor] PRIMARY KEY CLUSTERED ([AuthorId] ASC)
)

--create enemy table
CREATE TABLE [dbo].[tblEnemy] (
	[EnemyId] [int] IDENTITY(1,1) NOT NULL,
	[EnemyName] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,

	CONSTRAINT [PK_tblEnemy] PRIMARY KEY CLUSTERED ([EnemyId] ASC)
)

--create companion table
CREATE TABLE [dbo].[tblCompanion] (
	[CompanionId] [int] IDENTITY(1,1) NOT NULL,
	[CompanionName] [nvarchar](50) NOT NULL,
	[WhoPlayed] [nvarchar](50) NULL,

	CONSTRAINT [PK_tblCompanion] PRIMARY KEY CLUSTERED ([CompanionId] ASC)
)

--create doctor table
CREATE TABLE [dbo].[tblDoctor] (
	[DoctorId] [int] IDENTITY(1,1) NOT NULL,
	[DoctorNumber] [int] NULL,
	[DoctorName] [nvarchar](50) NULL,
	[BirthDate] [date] NULL,
	[FirstEpisodeDate] [date] NULL,
	[LastEpisodeDate] [date] NULL,

	CONSTRAINT [PK_tblDoctor] PRIMARY KEY CLUSTERED ([DoctorId] ASC)
)

--create episode table
CREATE TABLE [dbo].[tblEpisode] (
	[EpisodeId] [int] IDENTITY(1,1) NOT NULL,
	[SeriesNumber] [int] NULL,
	[EpisodeNumber] [int] NULL,
	[EpisodeType] [nvarchar](50) NULL,
	[Title] [nvarchar](255) NULL,
	[EpisodeDate] [date] NULL,
	[AuthorId] [int] NULL,
	[DoctorId] [int] NULL,
	[Notes] [nvarchar](255) NULL,

	CONSTRAINT [PK_tblEpisode] PRIMARY KEY CLUSTERED ([EpisodeId] ASC)
)

--create episode enemy table
CREATE TABLE [dbo].[tblEpisodeEnemy] (
	[EpisodeEnemyId] [int] IDENTITY(1,1) NOT NULL,
	[EpisodeId] [int] NULL,
	[EnemyId] [int] NULL,

	CONSTRAINT [PK_tbEpisodeEnemy] PRIMARY KEY CLUSTERED ([EpisodeEnemyId] ASC)
)

--create episode companion table
CREATE TABLE [dbo].[tblEpisodeCompanion](
	[EpisodeCompanionId] [int] IDENTITY(1,1) NOT NULL,
	[EpisodeId] [int] NULL,
	[CompanionId] [int] NULL,

	CONSTRAINT [PK_tbEpisodeCompanion] PRIMARY KEY CLUSTERED ([EpisodeCompanionId] ASC)
)

-- create relationships between tables
ALTER TABLE [dbo].[tblEpisode]  WITH CHECK ADD  CONSTRAINT [FK_tblEpisode_tblAuthor] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[tblAuthor] ([AuthorId])
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE [dbo].[tblEpisode] CHECK CONSTRAINT [FK_tblEpisode_tblAuthor]

ALTER TABLE [dbo].[tblEpisode]  WITH CHECK ADD  CONSTRAINT [FK_tblEpisode_tblDoctor] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[tblDoctor] ([DoctorId])
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE [dbo].[tblEpisode] CHECK CONSTRAINT [FK_tblEpisode_tblDoctor]

ALTER TABLE [dbo].[tblEpisodeCompanion]  WITH CHECK ADD  CONSTRAINT [FK_tblEpisodeCompanion_tblCompanion] FOREIGN KEY([CompanionId])
REFERENCES [dbo].[tblCompanion] ([CompanionId])
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE [dbo].[tblEpisodeCompanion] CHECK CONSTRAINT [FK_tblEpisodeCompanion_tblCompanion]

ALTER TABLE [dbo].[tblEpisodeCompanion]  WITH CHECK ADD  CONSTRAINT [FK_tblEpisodeCompanion_tblEpisode] FOREIGN KEY([EpisodeId])
REFERENCES [dbo].[tblEpisode] ([EpisodeId])
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE [dbo].[tblEpisodeCompanion] CHECK CONSTRAINT [FK_tblEpisodeCompanion_tblEpisode]

ALTER TABLE [dbo].[tblEpisodeEnemy]  WITH CHECK ADD  CONSTRAINT [FK_tbEpisodeEnemy_tblEnemy] FOREIGN KEY([EnemyId])
REFERENCES [dbo].[tblEnemy] ([EnemyId])
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE [dbo].[tblEpisodeEnemy] CHECK CONSTRAINT [FK_tbEpisodeEnemy_tblEnemy]

ALTER TABLE [dbo].[tblEpisodeEnemy]  WITH CHECK ADD  CONSTRAINT [FK_tbEpisodeEnemy_tblEpisode] FOREIGN KEY([EpisodeId])
REFERENCES [dbo].[tblEpisode] ([EpisodeId])
ON UPDATE CASCADE
ON DELETE CASCADE

ALTER TABLE [dbo].[tblEpisodeEnemy] CHECK CONSTRAINT [FK_tbEpisodeEnemy_tblEpisode]
