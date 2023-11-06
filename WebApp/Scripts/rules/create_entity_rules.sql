CREATE TABLE [rules].[entity_rules] (
    [entity_id]   INT      NOT NULL
    , [rule_id]        INT      NOT NULL
    ,CONSTRAINT [pk_entity_rules] PRIMARY KEY CLUSTERED ( [entity_id] ASC, [rule_id] ASC )
);

ALTER TABLE [rules].[entity_rules] WITH CHECK ADD CONSTRAINT [fk_entity_rules_entity] FOREIGN KEY([entity_id])
REFERENCES [entities].[entity] ([entity_id]);

ALTER TABLE [rules].[entity_rules] CHECK CONSTRAINT [fk_entity_rules_entity];


ALTER TABLE [rules].[entity_rules] WITH CHECK ADD CONSTRAINT [fk_entity_rules_rule] FOREIGN KEY([rule_id])
REFERENCES [rules].[rule] ([rule_id]);

ALTER TABLE [rules].[entity_rules] CHECK CONSTRAINT [fk_entity_rules_rule];