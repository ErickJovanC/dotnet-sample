IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[entities].[entity]') AND type in (N'U'))
DROP TABLE [entities].[entity];

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[entities].[entity_type]') AND type in (N'U'))
DROP TABLE [entities].[entity_type];