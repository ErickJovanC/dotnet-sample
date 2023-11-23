CREATE TABLE [restrictions].[restriction_type] (
    [restriction_type_id]   INT       NOT NULL    identity(1,1)
    , [description]         INT       NOT NULL
    ,CONSTRAINT [pk_restriction_type] PRIMARY KEY CLUSTERED ( [restriction_type_id] ASC )
);

CREATE TABLE [restrictions].[restriction] (
    [restriction_id]          INT       NOT NULL    identity(1,1)
    , [restriction_type_id]   INT       NOT NULL
    , [date_start]            DATE      NOT NULL
    , [date_end]              DATE      NOT NULL
    ,CONSTRAINT [pk_restriction] PRIMARY KEY CLUSTERED ( [restriction_id] ASC )
);

CREATE TABLE [restrictions].[restriction_entity] (
    [restriction_id]    INT       NOT NULL    identity(1,1)
    , [entity_id]       INT       NOT NULL
    ,CONSTRAINT [pk_restriction_entity] PRIMARY KEY CLUSTERED ([restriction_id] ASC, [entity_id] ASC )
);

ALTER TABLE [restrictions].[restriction] WITH CHECK ADD CONSTRAINT [fk_restriction_restriction_type] FOREIGN KEY([restriction_type_id])
REFERENCES [restrictions].[restriction_type] ([restriction_type_id]);

ALTER TABLE [restrictions].[restriction] CHECK CONSTRAINT [fk_restriction_restriction_type];


ALTER TABLE [restrictions].[restriction_entity] WITH CHECK ADD CONSTRAINT [fk_restriction_entity_entity] FOREIGN KEY([entity_id])
REFERENCES [entities].[entity] ([entity_id]);

ALTER TABLE [restrictions].[restriction_entity] CHECK CONSTRAINT [fk_restriction_entity_entity];