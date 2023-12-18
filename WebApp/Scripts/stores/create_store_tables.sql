CREATE TABLE [stores].[store_format] (
    [store_format_id]  INT              NOT NULL    identity(1,1)
    , [name]           NVARCHAR(50)     NOT NULL
    , [description]    NVARCHAR(256)    NOT NULL
    ,CONSTRAINT [pk_store_format] PRIMARY KEY CLUSTERED ( [store_format_id] ASC )
);

CREATE TABLE [stores].[store] (
    [store_id]          INT             NOT NULL    identity(1,1)
    , [store_format_id] INT             NOT NULL
    , [region_id]       INT             NOT NULL
    , [state_id]        INT             NOT NULL
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


ALTER TABLE [stores].[store] WITH CHECK ADD CONSTRAINT [fk_store_state] FOREIGN KEY([state_id])
REFERENCES [states].[state] ([state_id]);

ALTER TABLE [stores].[store] CHECK CONSTRAINT [fk_store_state];

-- Store Media
CREATE TABLE [stores].[store_media] (
    [store_media_id]    INT     NOT NULL    identity(1,1)
    , [store_id]        INT     NOT NULL
    , [media_id]        INT     NOT NULL
    , [qty]             INT     NOT NULL
    , [minimum_units]   INT     NOT NULL    DEFAULT(0)
    , [price]           DECIMAL NOT NULL    DEFAULT(0)
    , [is_by_blocks]    BIT     NOT NULL    DEFAULT(0)
    , [is_available]    BIT     NOT NULL
    ,CONSTRAINT [pk_store_media] PRIMARY KEY CLUSTERED ( [store_media_id] ASC )
);

ALTER TABLE [stores].[store_media] WITH CHECK ADD CONSTRAINT [fk_store_media_media] FOREIGN KEY([media_id])
REFERENCES [media].[media] ([media_id]);
ALTER TABLE [stores].[store_media] CHECK CONSTRAINT [fk_store_media_media];

ALTER TABLE [stores].[store_media] WITH CHECK ADD CONSTRAINT [fk_store_media_store] FOREIGN KEY([store_id])
REFERENCES [stores].[store] ([store_id]);
ALTER TABLE [stores].[store_media] CHECK CONSTRAINT [fk_store_media_store];

-- Entities for Store
SET IDENTITY_INSERT [entities].[entity] ON;
INSERT INTO [entities].[entity] ([entity_id], [entity_type_id], [entity_name])
VALUES (251, 2, 'Walmart Atrios')
, (252, 2, 'Sendero')
, (253, 2, 'Diaz Ordaz')
, (254, 2, 'Benito Juarez')
, (255, 2, 'Corraleta')
, (256, 2, 'Los')
, (257, 2, 'Plaza Fuerte')
, (258, 2, 'La Corraleta')
, (259, 2, 'Bicentenario')
, (260, 2, 'Domingo Diez')
;
SET IDENTITY_INSERT [entities].[entity] OFF;

-- Store Formats
SET IDENTITY_INSERT [stores].[store_format] ON;
INSERT INTO [stores].[store_format] ([store_format_id], [name], [description])
VALUES (1, 'SC', 'Super Center');
INSERT INTO [stores].[store_format] ([store_format_id], [name], [description])
VALUES (2, 'BA', 'Bodega Aurrera');
INSERT INTO [stores].[store_format] ([store_format_id], [name], [description])
VALUES (3, 'WM', 'Walmart');
SET IDENTITY_INSERT [stores].[store_format] OFF;


-- Stores
SET IDENTITY_INSERT [stores].[store] ON;
INSERT INTO [stores].[store] ([store_id], [store_format_id], [region_id], [state_id], [name], [location])
VALUES (251, 2, 250, 218, 'Walmart Atrios', 'Cuautla')
, (252, 3, 250, 219, 'Sendero', 'Iztapalapa')
, (253, 2, 250, 220, 'Diaz Ordaz', 'Chalco')
, (254, 2, 250, 221, 'Benito Juarez', 'Tlalmanalco')
, (255, 2, 250, 222, 'Corraleta', 'Alpanocan')
, (256, 2, 250, 223, 'Los', 'Yecapixtla')
, (257, 2, 250, 224, 'Plaza Fuerte', 'Xochimilco')
, (258, 2, 250, 225, 'La Corraleta', 'Orizaba')
, (259, 2, 250, 226, 'Bicentenario', 'Perote')
, (260, 1, 250, 217, 'Domingo Diez', 'Cuernavaca')
;
SET IDENTITY_INSERT [stores].[store] OFF;