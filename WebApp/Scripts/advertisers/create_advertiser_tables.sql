CREATE TABLE [advertisers].[advertiser] (
    [advertiser_id] INT             NOT NULL
    , [tenant_id] INT             NOT NULL
    , [name]        NVARCHAR(50)    NOT NULL
    ,CONSTRAINT [pk_advertiser] PRIMARY KEY CLUSTERED ( [advertiser_id] ASC )
);

INSERT INTO [advertisers].[advertiser] ([advertiser_id], [tenant_id], [name])
VALUES (1, 1, 'Bimbo');
INSERT INTO [advertisers].[advertiser] ([advertiser_id], [tenant_id], [name])
VALUES (2, 1, 'Coca-Cola');
INSERT INTO [advertisers].[advertiser] ([advertiser_id], [tenant_id], [name])
VALUES (3, 2, 'Pepsi');
INSERT INTO [advertisers].[advertiser] ([advertiser_id], [tenant_id], [name])
VALUES (4, 2, 'Heinz');
INSERT INTO [advertisers].[advertiser] ([advertiser_id], [tenant_id], [name])
VALUES (5, 3, 'Pascual');
INSERT INTO [advertisers].[advertiser] ([advertiser_id], [tenant_id], [name])
VALUES (6, 4, 'Scribe');