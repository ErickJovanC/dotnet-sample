CREATE TABLE [quotations].[quotation_status] (
    [quotation_status_id]   INT             NOT NULL    identity(1,1)
    , [title]               NVARCHAR(50)    NOT NULL
    , [description]         NVARCHAR(256)       NULL
    , CONSTRAINT [pk_quotation_status] PRIMARY KEY CLUSTERED ( [quotation_status_id] ASC )
);

CREATE TABLE [quotations].[quotation] (
    [quotation_id]              INT             NOT NULL    identity(1,1)
    , [tenant_id]               INT             NOT NULL
    , [quotation_status_id]     INT             NOT NULL
    , [agency_id]               INT                 NULL
    , [brand_id]                INT                 NULL
    , [name]                    NVARCHAR(256)   NOT NULL
    , [discount]                DECIMAL             NULL
    , [date_start]              DATE                NULL
    , [date_end]                DATE                NULL
    , CONSTRAINT [pk_quotation] PRIMARY KEY CLUSTERED ( [quotation_id] ASC )
);


ALTER TABLE [quotations].[quotation] WITH CHECK ADD CONSTRAINT [fk_quotation_tenant] FOREIGN KEY([tenant_id])
REFERENCES [tenants].[tenant] ([tenant_id]);
ALTER TABLE [quotations].[quotation] CHECK CONSTRAINT [fk_quotation_tenant];


ALTER TABLE [quotations].[quotation] WITH CHECK ADD CONSTRAINT [fk_quotation_quotation_status] FOREIGN KEY([quotation_status_id])
REFERENCES [quotations].[quotation_status] ([quotation_status_id]);
ALTER TABLE [quotations].[quotation] CHECK CONSTRAINT [fk_quotation_quotation_status];