CREATE TABLE [customers].[customer] (
    [customer_id]      INT              NOT NULL    identity(1,1)
    , [name]           NVARCHAR(50)     NOT NULL
    , [description]    NVARCHAR(256)        NULL
    ,CONSTRAINT [pk_customer] PRIMARY KEY CLUSTERED ( [customer_id] ASC )
);