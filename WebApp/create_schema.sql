CREATE SCHEMA [data] AUTHORIZATION [dbo];

CREATE TABLE [data].[schema_version] (
     [database_schema_version]      NVARCHAR(50)    NOT NULL
        CONSTRAINT [def_database_schema_version] DEFAULT '6.0.6829.0'
    ,CONSTRAINT [pk_schema_version] PRIMARY KEY CLUSTERED ( [database_schema_version] ASC )
);
INSERT INTO [data].[schema_version] VALUES ('6.0.6829.0');