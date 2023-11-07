CREATE TABLE [regions].[region] (
    [region_id]         INT              NOT NULL    identity(1,1)
    , [name]            NVARCHAR(50)     NOT NULL
    , [description]     NVARCHAR(256)        NULL
    ,CONSTRAINT [pk_region] PRIMARY KEY CLUSTERED ( [region_id] ASC )
);