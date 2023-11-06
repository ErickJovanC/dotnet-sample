CREATE TABLE [media].[category] (
     [category_id]      INT              NOT NULL    identity(1,1)
    ,[name]             NVARCHAR(50)     NOT NULL
    ,[description]      NVARCHAR(256)        NULL
    ,[active]           BIT              NOT NULL DEFAULT(1)
    ,CONSTRAINT [pk_category] PRIMARY KEY CLUSTERED ( [category_id] ASC )
);

---- ----------------------------
---- Table structure for categoria
---- ----------------------------
--DROP TABLE IF EXISTS `categoria`;
--CREATE TABLE `categoria` (
--  `id` int NOT NULL AUTO_INCREMENT,
--  `nombre` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
--  `activo` tinyint DEFAULT '1',
--  PRIMARY KEY (`id`)
--) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;


--ALTER TABLE [entities].[entity] WITH CHECK ADD CONSTRAINT [fk_entity_entity_type] FOREIGN KEY([entity_type_id])
--REFERENCES [entities].[entity_type] ([entity_type_id]);

--ALTER TABLE [entities].[entity] CHECK CONSTRAINT [fk_entity_entity_type];

