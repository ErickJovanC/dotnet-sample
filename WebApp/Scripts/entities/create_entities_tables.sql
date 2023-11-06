CREATE TABLE [entities].[entity_type] (
    [entity_type_id]   INT              NOT NULL    identity(1,1)
    , [name]           NVARCHAR(50)     NOT NULL
    , [description]    NVARCHAR(256)    NOT NULL
    ,CONSTRAINT [pk_entity_type] PRIMARY KEY CLUSTERED ( [entity_type_id] ASC )
);

CREATE TABLE [entities].[entity] (
    [entity_id]        INT     NOT NULL    identity(1,1)
    , [entity_type_id] INT     NOT NULL
    , [name]           NVARCHAR(50)     NOT NULL
    ,CONSTRAINT [pk_entity] PRIMARY KEY CLUSTERED ( [entity_id] ASC )
);

ALTER TABLE [entities].[entity] WITH CHECK ADD CONSTRAINT [fk_entity_entity_type] FOREIGN KEY([entity_type_id])
REFERENCES [entities].[entity_type] ([entity_type_id]);

ALTER TABLE [entities].[entity] CHECK CONSTRAINT [fk_entity_entity_type];

INSERT INTO [entities].[entity_type] ([name], [description])
VALUES ('Tienda', 'Tienda Comercial');

INSERT INTO [entities].[entity_type] ([name], [description])
VALUES ('Medio', 'Medio de publicidad');

INSERT INTO [entities].[entity_type] ([name], [description])
VALUES ('Categoria', 'Categoria asiganada al publicitario');