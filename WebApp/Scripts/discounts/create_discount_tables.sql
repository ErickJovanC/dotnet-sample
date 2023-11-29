CREATE TABLE [discounts].[discount] (
    [discount_id]       INT             NOT NULL
    , [percentage]      DECIMAL         NOT NULL
    , [date_start]      DATE                NULL
    , [date_end]        DATE                NULL
    , [name]            NVARCHAR(256)   NOT NULL
    , CONSTRAINT [pk_discount] PRIMARY KEY CLUSTERED ( [discount_id] ASC )
);

CREATE TABLE [discounts].[discount_entity] (
    [discount_id]      INT         NOT NULL
    , [entity_id]      INT         NOT NULL   --COMMENT 'Media, Advertisers and Stores'
    , CONSTRAINT [pk_discount_entity] PRIMARY KEY CLUSTERED ([discount_id] ASC, [entity_id] ASC)
);

ALTER TABLE [discounts].[discount_entity] WITH CHECK ADD CONSTRAINT [fk_discount_entity_discount] FOREIGN KEY([discount_id])
REFERENCES [discounts].[discount] ([discount_id]);
ALTER TABLE [discounts].[discount_entity] CHECK CONSTRAINT [fk_discount_entity_discount];

ALTER TABLE [discounts].[discount_entity] WITH CHECK ADD CONSTRAINT [fk_discount_entity_entity] FOREIGN KEY([entity_id])
REFERENCES [entities].[entity] ([entity_id]);
ALTER TABLE [discounts].[discount_entity] CHECK CONSTRAINT [fk_discount_entity_entity];


CREATE TABLE [discounts].[discount_validations] (
    [discount_id]       INT     NOT NULL
    , [entity_id]       INT     NOT NULL    --COMMENT 'Do not insert media'
    , [qty]             DECIMAL     NOT NULL
    , CONSTRAINT [pk_discount_validations] PRIMARY KEY CLUSTERED ([discount_id] ASC, [entity_id] ASC)
);

ALTER TABLE [discounts].[discount_validations] WITH CHECK ADD CONSTRAINT [fk_discount_validations_discount] FOREIGN KEY([discount_id])
REFERENCES [discounts].[discount] ([discount_id]);
ALTER TABLE [discounts].[discount_validations] CHECK CONSTRAINT [fk_discount_validations_discount];

ALTER TABLE [discounts].[discount_validations] WITH CHECK ADD CONSTRAINT [fk_discount_validations_entity] FOREIGN KEY([entity_id])
REFERENCES [entities].[entity] ([entity_id]);
ALTER TABLE [discounts].[discount_validations] CHECK CONSTRAINT [fk_discount_validations_entity];