
UPDATE [dbo].[tblEpisode] SET [Title] = concat([Title], '_CANCELLED') WHERE [DoctorId] IS NULL;