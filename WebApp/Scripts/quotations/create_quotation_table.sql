CREATE TABLE [quotations].[quotation] (
    [quotation_id]      INT     NOT NULL    identity(1,1)
    , [customer_id]     INT     NOT NULL
    ,CONSTRAINT [pk_quotation] PRIMARY KEY CLUSTERED ( [quotation_id] ASC )
);

CREATE TABLE [quotations].[quotation_request] (
    [quotation_id]     INT     NOT NULL    identity(1,1)
    , [request_id]     INT     NOT NULL
    ,CONSTRAINT [pk_quotation_request] PRIMARY KEY CLUSTERED ( [quotation_id] ASC, [request_id] ASC )
);

ALTER TABLE [quotations].[quotation] WITH CHECK ADD CONSTRAINT [fk_quotation_customer] FOREIGN KEY([customer_id])
REFERENCES [customers].[customer] ([customer_id]);

ALTER TABLE [quotations].[quotation] CHECK CONSTRAINT [fk_quotation_customer];


ALTER TABLE [quotations].[quotation_request] WITH CHECK ADD CONSTRAINT [fk_quotation_request_request] FOREIGN KEY([request_id])
REFERENCES [requests].[request] ([request_id]);

ALTER TABLE [quotations].[quotation_request] CHECK CONSTRAINT [fk_quotation_request_request];