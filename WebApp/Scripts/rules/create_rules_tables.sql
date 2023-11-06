CREATE TABLE [rules].[rule_type] (
    [rule_type_id]      INT             NOT NULL        IDENTITY(1,1)
    , [rule_name]       NVARCHAR(50)    NOT NULL
    , [description]     NVARCHAR(256)       NULL
    ,CONSTRAINT [pk_rule_type] PRIMARY KEY CLUSTERED ( [rule_type_id] ASC )
);

INSERT INTO [rules].[rule_type] ([rule_name], [description])
VALUES ('Categoría', 'Limitado por categoria del producto');

INSERT INTO [rules].[rule_type] ([rule_name], [description])
VALUES ('Tiempo', 'Bloqueado por uso');

CREATE TABLE [rules].[rule] (
    [rule_id]           INT             NOT NULL    identity(1,1)
    , [rule_type_id]    INT             NOT NULL
    , [rule]            NVARCHAR(MAX)   NOT NULL
    ,CONSTRAINT [pk_rule] PRIMARY KEY CLUSTERED ( [rule_id] ASC )
);