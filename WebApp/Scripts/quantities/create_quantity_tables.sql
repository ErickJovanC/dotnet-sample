CREATE TABLE [quantities].[quantity] (
    [quantity_id]       INT       NOT NULL    identity(1,1)
    , [store_id]        INT       NOT NULL
    , [media_id]        INT       NOT NULL
    ,CONSTRAINT [pk_quantity] PRIMARY KEY CLUSTERED ( [quantity_id] ASC )
);

ALTER TABLE [quantities].[quantity] WITH CHECK ADD CONSTRAINT [fk_quantity_store] FOREIGN KEY([store_id])
REFERENCES [stores].[store] ([store_id]);

ALTER TABLE [quantities].[quantity] CHECK CONSTRAINT [fk_quantity_store];

ALTER TABLE [quantities].[quantity] WITH CHECK ADD CONSTRAINT [fk_quantity_media] FOREIGN KEY([media_id])
REFERENCES [media].[media] ([media_id]);

ALTER TABLE [quantities].[quantity] CHECK CONSTRAINT [fk_quantity_media];