IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[rules].[entity_rules]') AND type in (N'U'))
DROP TABLE [rules].[entity_rules];

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[rules].[rule]') AND type in (N'U'))
DROP TABLE [rules].[rule];

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[rules].[rule_type]') AND type in (N'U'))
DROP TABLE [rules].[rule_type];