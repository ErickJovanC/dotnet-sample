CREATE TABLE [brands].[brand] (
    [brand_id]          INT             NOT NULL
    , [advertiser_id]   INT             NOT NULL
    , [category_id]     INT             NOT NULL
    , [name]            NVARCHAR(256)   NOT NULL
    , CONSTRAINT [pk_brand] PRIMARY KEY CLUSTERED ( [brand_id] ASC )
);

ALTER TABLE [brands].[brand] WITH CHECK ADD CONSTRAINT [fk_brand_category] FOREIGN KEY([category_id])
REFERENCES [media].[category] ([category_id]);
ALTER TABLE [brands].[brand] CHECK CONSTRAINT [fk_brand_category];

ALTER TABLE [brands].[brand] WITH CHECK ADD CONSTRAINT [fk_brand_advertiser] FOREIGN KEY([advertiser_id])
REFERENCES [advertisers].[advertiser] ([advertiser_id]);
ALTER TABLE [brands].[brand] CHECK CONSTRAINT [fk_brand_advertiser];


SET IDENTITY_INSERT [entities].[entity] ON
INSERT INTO [entities].[entity] ([entity_id], [entity_type_id], [entity_name])
VALUES (213, 4, N'Donitas Azucaradas')
, (214, 4, N'Nito')
, (215, 4, N'Fanta Naranja')
, (216, 4, N'Coca-Cola Zero')
;
SET IDENTITY_INSERT [entities].[entity] OFF

INSERT INTO [brands].[brand] ([brand_id], [advertiser_id], [category_id], [name])
VALUES (1, 207, 45, N'Donitas Azucaradas')
, (2, 207, 45, N'Nito')
, (3, 208, 52, N'Fanta Naranja')
, (4, 208, 52, N'Coca-Cola Zero')