CREATE TABLE [stores].[store] (
    [store_id]          INT             NOT NULL    identity(1,1)
    , [store_format_id] INT             NOT NULL
    , [region_id]       INT             NOT NULL
    , [name]            NVARCHAR(50)    NOT NULL
    , [location]        NVARCHAR(256)       NULL
    ,CONSTRAINT [pk_store] PRIMARY KEY CLUSTERED ( [store_id] ASC )
);

ALTER TABLE [stores].[store] WITH CHECK ADD CONSTRAINT [fk_store_store_format] FOREIGN KEY([store_format_id])
REFERENCES [stores].[store_format] ([store_format_id]);

ALTER TABLE [stores].[store] CHECK CONSTRAINT [fk_store_store_format];


ALTER TABLE [stores].[store] WITH CHECK ADD CONSTRAINT [fk_store_region] FOREIGN KEY([region_id])
REFERENCES [regions].[region] ([region_id]);

ALTER TABLE [stores].[store] CHECK CONSTRAINT [fk_store_region];