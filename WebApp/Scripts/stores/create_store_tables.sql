CREATE TABLE [stores].[store] (
    [store_id]          INT             NOT NULL    identity(1,1)
    , [store_format_id] INT             NOT NULL
    , [region_id]       INT             NOT NULL
    , [state_id]        INT             NOT NULL
    , [name]            NVARCHAR(50)    NOT NULL
    , [location]        NVARCHAR(256)       NULL
    ,CONSTRAINT [pk_store] PRIMARY KEY CLUSTERED ( [store_id] ASC )
);

-- ALTER TABLE [stores].[store] WITH CHECK ADD CONSTRAINT [fk_store_store_format] FOREIGN KEY([store_format_id])
-- REFERENCES [stores].[store_format] ([store_format_id]);

-- ALTER TABLE [stores].[store] CHECK CONSTRAINT [fk_store_store_format];


-- ALTER TABLE [stores].[store] WITH CHECK ADD CONSTRAINT [fk_store_region] FOREIGN KEY([region_id])
-- REFERENCES [regions].[region] ([region_id]);

-- ALTER TABLE [stores].[store] CHECK CONSTRAINT [fk_store_region];


ALTER TABLE [stores].[store] WITH CHECK ADD CONSTRAINT [fk_store_state] FOREIGN KEY([state_id])
REFERENCES [states].[state] ([state_id]);

ALTER TABLE [stores].[store] CHECK CONSTRAINT [fk_store_state];

-- Store Media
CREATE TABLE [stores].[store_media] (
    [store_media_id]    INT     NOT NULL    identity(1,1)
    , [store_id]       INT     NOT NULL
    , [media_id]        INT     NOT NULL
    , [qty]             INT     NOT NULL
    , [is_available]    BIT     NOT NULL
    ,CONSTRAINT [pk_store_media] PRIMARY KEY CLUSTERED ( [store_media_id] ASC )
);

-- ALTER TABLE [stores].[store_media] WITH CHECK ADD CONSTRAINT [fk_store_media_media] FOREIGN KEY([media_id])
-- REFERENCES [media].[media] ([media_id]);

-- ALTER TABLE [stores].[store_media] CHECK CONSTRAINT [fk_store_media_media];

-- ALTER TABLE [stores].[store_media] WITH CHECK ADD CONSTRAINT [fk_store_media_store] FOREIGN KEY([store_id])
-- REFERENCES [stores].[store] ([store_id]);

-- ALTER TABLE [stores].[store_media] CHECK CONSTRAINT [fk_store_media_store];