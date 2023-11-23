CREATE TABLE [parties].[party_type] (
    [party_type_id]         INT             NOT NULL    identity(1,1)
    , [party_type_name]     NVARCHAR(256)   NOT NULL
    ,CONSTRAINT [pk_party_type] PRIMARY KEY CLUSTERED ( [party_type_id] ASC )
);

CREATE TABLE [parties].[party] (
    [party_id]          INT             NOT NULL    identity(1,1)
    , [party_type_id]   INT             NOT NULL
    , [party_name]      NVARCHAR(256)   NOT NULL
    ,CONSTRAINT [pk_party] PRIMARY KEY CLUSTERED ( [party_id] ASC )
);

ALTER TABLE [parties].[party] WITH CHECK ADD CONSTRAINT [fk_party_party_type] FOREIGN KEY([party_type_id])
REFERENCES [parties].[party_type] ([party_type_id]);

ALTER TABLE [parties].[party] CHECK CONSTRAINT [fk_party_party_type];