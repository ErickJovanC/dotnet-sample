CREATE TABLE [advertisers].[advertiser] (
    [advertiser_id] INT             NOT NULL
    , [tenant_id] INT               NOT NULL
    , [name]        NVARCHAR(50)    NOT NULL
    ,CONSTRAINT [pk_advertiser] PRIMARY KEY CLUSTERED ( [advertiser_id] ASC )
);

SET IDENTITY_INSERT [entities].[entity] ON
INSERT INTO [entities].[entity] ([entity_id], [entity_type_id], [entity_name])
VALUES (207, 5, 'Coca-Cola')
, (208, 5, 'Pepsi')
, (209, 5, 'Heinz')
, (210, 5, 'Pascual')
, (211, 5, 'Scribe')
, (212, 5, 'Bimbo')
;
SET IDENTITY_INSERT [entities].[entity] OFF

INSERT INTO [advertisers].[advertiser] ([advertiser_id], [tenant_id], [name])
VALUES (207, 1, 'Coca-Cola')
, (208, 2, 'Pepsi')
, (209, 2, 'Heinz')
, (210, 3, 'Pascual')
, (211, 4, 'Scribe')
, (212, 1, 'Bimbo')
;