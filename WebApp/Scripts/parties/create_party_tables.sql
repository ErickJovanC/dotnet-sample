CREATE TABLE [parties].[party] (
    [party_id]          INT             NOT NULL    identity(1,1)
    , [table_type_id]   INT             NOT NULL
    , [party_name]      NVARCHAR(256)   NOT NULL
    ,CONSTRAINT [pk_party] PRIMARY KEY CLUSTERED ( [party_id] ASC )
);