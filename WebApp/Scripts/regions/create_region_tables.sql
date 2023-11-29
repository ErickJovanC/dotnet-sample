CREATE TABLE [regions].[region] (
    [region_id]         INT              NOT NULL    identity(1,1)
    , [name]            NVARCHAR(50)     NOT NULL
    , [description]     NVARCHAR(256)        NULL
    ,CONSTRAINT [pk_region] PRIMARY KEY CLUSTERED ( [region_id] ASC )
);

SET IDENTITY_INSERT [entities].[entity] ON;
INSERT INTO [entities].[entity] ([entity_id], [entity_type_id], [entity_name])
VALUES (250, 6, 'Mor');
SET IDENTITY_INSERT [entities].[entity] OFF;

SET IDENTITY_INSERT [regions].[region] ON;
INSERT INTO [regions].[region] ([region_id], [name], [description])
VALUES (250, 'Mor', 'Estado de Morelos');
SET IDENTITY_INSERT [regions].[region] OFF;