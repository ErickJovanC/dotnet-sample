CREATE TABLE [stores].[store_format] (
    [store_format_id]  INT              NOT NULL    identity(1,1)
    , [name]           NVARCHAR(50)     NOT NULL
    , [description]    NVARCHAR(256)    NOT NULL
    ,CONSTRAINT [pk_store_format] PRIMARY KEY CLUSTERED ( [store_format_id] ASC )
);