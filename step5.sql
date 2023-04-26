
DELETE c FROM 
tblCompanion AS c LEFT JOIN tblEpisodeCompanion AS ec ON (c.CompanionId = ec.CompanionId) 
      WHERE ec.CompanionId IS NULL
