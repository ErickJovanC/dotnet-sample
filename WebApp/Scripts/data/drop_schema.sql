IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[data].[schema_version]') AND type in (N'U'))
DROP TABLE [data].[schema_version];

IF EXISTS (SELECT * FROM sys.schemas WHERE name = N'data') BEGIN DROP SCHEMA [data] END;