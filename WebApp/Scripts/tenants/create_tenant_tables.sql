CREATE TABLE [tenants].[tenant] (
    [tenant_id]     INT             NOT NULL
    , [name]        NVARCHAR(50)    NOT NULL
    , CONSTRAINT [pk_tenant] PRIMARY KEY CLUSTERED ( [tenant_id] ASC )
);

INSERT INTO [tenants].[tenant] ([tenant_id], [name])
VALUES (1, 'Walmart');
INSERT INTO [tenants].[tenant] ([tenant_id], [name])
VALUES (2, 'Chedraui');
INSERT INTO [tenants].[tenant] ([tenant_id], [name])
VALUES (3, 'Soriana');
INSERT INTO [tenants].[tenant] ([tenant_id], [name])
VALUES (4, 'Office Depot');