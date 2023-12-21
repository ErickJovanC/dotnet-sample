CREATE TABLE [services].[service] (
    [service_id]        INT       NOT NULL    identity(1,1)
    , [store_media_id]  INT       NOT NULL
    , [quotation_id]    INT       NOT NULL
    , [qty_selected]    INT       NOT NULL
    , [date_start]      DATE      NOT NULL
    , [date_end]        DATE      NOT NULL
    , [is_divisible]    BIT       NOT NULL  DEFAULT(0)
    ,CONSTRAINT [pk_service] PRIMARY KEY CLUSTERED ( [service_id] ASC )
);

CREATE TABLE [services].[service_items] (
    [service_items_id]  INT       NOT NULL    identity(1,1)
    , [service_id]      INT       NOT NULL
    , [orden]           INT       NOT NULL
    , [percentage]      INT       NOT NULL
    ,CONSTRAINT [pk_service_items] PRIMARY KEY CLUSTERED ( [service_items_id] ASC )
);

ALTER TABLE [services].[service] WITH CHECK ADD CONSTRAINT [fk_service_store_media] FOREIGN KEY([store_media_id])
REFERENCES [stores].[store_media] ([store_media_id]);
ALTER TABLE [services].[service] CHECK CONSTRAINT [fk_service_store_media];


ALTER TABLE [services].[service] WITH CHECK ADD CONSTRAINT [fk_service_quotation] FOREIGN KEY([quotation_id])
REFERENCES [quotations].[quotation] ([quotation_id]);
ALTER TABLE [services].[service] CHECK CONSTRAINT [fk_service_quotation];

ALTER TABLE [services].[service_items] WITH CHECK ADD CONSTRAINT [fk_service_items_service] FOREIGN KEY([service_id])
REFERENCES [services].[service] ([service_id]);
ALTER TABLE [services].[service_items] CHECK CONSTRAINT [fk_service_items_service];