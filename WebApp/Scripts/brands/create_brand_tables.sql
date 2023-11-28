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

INSERT INTO [brands].[brand] ([brand_id], [advertiser_id], [category_id], [name])
VALUES (1, 1, 45, N'Donitas Azucaradas');
INSERT INTO [brands].[brand] ([brand_id], [advertiser_id], [category_id], [name])
VALUES (2, 1, 45, N'Nito');
INSERT INTO [brands].[brand] ([brand_id], [advertiser_id], [category_id], [name])
VALUES (3, 2, 52, N'Fanta Naranja');
INSERT INTO [brands].[brand] ([brand_id], [advertiser_id], [category_id], [name])
VALUES (4, 2, 52, N'Coca-Cola Zero');