CREATE TABLE [services].[service_items] (
    [service_items_id]  INT       NOT NULL    identity(1,1)
    , [store_id]        INT       NOT NULL
    , [media_id]        INT       NOT NULL
    , [quotation_id]    INT       NOT NULL
    , [qty_selected]    INT       NOT NULL
    , [date_start]      DATE      NOT NULL
    , [date_end]        DATE      NOT NULL
    ,CONSTRAINT [pk_service_items] PRIMARY KEY CLUSTERED ( [service_items_id] ASC )
);

CREATE TABLE [services].[service] (
    [service_id]        INT       NOT NULL    identity(1,1)
    , [store_id]        INT       NOT NULL
    , [media_id]        INT       NOT NULL
    , [quotation_id]    INT       NOT NULL
    , [qty_selected]    INT       NOT NULL
    , [date_start]      DATE      NOT NULL
    , [date_end]        DATE      NOT NULL
    ,CONSTRAINT [pk_service] PRIMARY KEY CLUSTERED ( [service_id] ASC )
);

ALTER TABLE [services].[service] WITH CHECK ADD CONSTRAINT [fk_service_store] FOREIGN KEY([store_id])
REFERENCES [stores].[store] ([store_id]);

ALTER TABLE [services].[service] CHECK CONSTRAINT [fk_service_store];


ALTER TABLE [services].[service] WITH CHECK ADD CONSTRAINT [fk_service_media] FOREIGN KEY([media_id])
REFERENCES [media].[media] ([media_id]);

ALTER TABLE [services].[service] CHECK CONSTRAINT [fk_service_media];


ALTER TABLE [services].[service] WITH CHECK ADD CONSTRAINT [fk_service_quotation] FOREIGN KEY([quotation_id])
REFERENCES [quotations].[quotation] ([quotation_id]);

ALTER TABLE [services].[service] CHECK CONSTRAINT [fk_service_quotation];