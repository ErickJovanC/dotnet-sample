CREATE TABLE [requests].[request] (
    [request_id]            INT     NOT NULL    identity(1,1)
    , [media_id]            INT     NOT NULL
    , [store_format_id]     INT         NULL
    , [region_id]           INT         NULL
    , [date_start]          DATE    NOT NULL
    , [date_end]            DATE    NOT NULL
    ,CONSTRAINT [pk_store_format] PRIMARY KEY CLUSTERED ( [request_id] ASC )
);

CREATE TABLE [requests].[request_store] (
    [request_id]    INT     NOT NULL    identity(1,1)
    , [store_id]    INT     NOT NULL
    ,CONSTRAINT [pk_request_store] PRIMARY KEY CLUSTERED ( [request_id] ASC, [store_id] ASC )
);

ALTER TABLE [requests].[request_store] WITH CHECK ADD CONSTRAINT [fk_request_store_request] FOREIGN KEY([request_id])
REFERENCES [requests].[request] ([request_id]);

ALTER TABLE [requests].[request_store] CHECK CONSTRAINT [fk_request_store_request];


ALTER TABLE [requests].[request_store] WITH CHECK ADD CONSTRAINT [fk_request_store_store] FOREIGN KEY([store_id])
REFERENCES [stores].[store] ([store_id]);

ALTER TABLE [requests].[request_store] CHECK CONSTRAINT [fk_request_store_store];


ALTER TABLE [requests].[request] WITH CHECK ADD CONSTRAINT [fk_request_media] FOREIGN KEY([media_id])
REFERENCES [media].[media] ([media_id]);

ALTER TABLE [requests].[request] CHECK CONSTRAINT [fk_request_media];


ALTER TABLE [requests].[request] WITH CHECK ADD CONSTRAINT [fk_request_store_format] FOREIGN KEY([store_format_id])
REFERENCES [stores].[store_format] ([store_format_id]);

ALTER TABLE [requests].[request] CHECK CONSTRAINT [fk_request_store_format];


ALTER TABLE [requests].[request] WITH CHECK ADD CONSTRAINT [fk_request_region] FOREIGN KEY([region_id])
REFERENCES [regions].[region] ([region_id]);

ALTER TABLE [requests].[request] CHECK CONSTRAINT [fk_request_region];