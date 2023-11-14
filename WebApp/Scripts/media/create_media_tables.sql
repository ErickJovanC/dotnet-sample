CREATE TABLE [media].[category] (
     [category_id]      INT              NOT NULL   identity(1,1)
    ,[name]             NVARCHAR(50)     NOT NULL
    ,[description]      NVARCHAR(256)        NULL
    ,[active]           BIT              NOT NULL   DEFAULT(1)
    ,CONSTRAINT [pk_category] PRIMARY KEY CLUSTERED ( [category_id] ASC )
);

CREATE TABLE [media].[media] (
     [media_id]         INT             NOT NULL    identity(1,1)
    ,[category_id]      INT             NOT NULL
    ,[name]             NVARCHAR(50)    NOT NULL
    ,[description]      NVARCHAR(256)       NULL
    ,[cost]             DECIMAL(10, 2)  NOT NULL
    ,[price]            DECIMAL(10, 2)  NOT NULL
    ,[minimum_units]    INT             NOT NULL
    ,[is_countable]     BIT             NOT NULL
    ,[is_active]        BIT             NOT NULL DEFAULT(1)
    ,CONSTRAINT [pk_media] PRIMARY KEY CLUSTERED ( [media_id] ASC )
);


ALTER TABLE [media].[media] WITH CHECK ADD CONSTRAINT [fk_media_category] FOREIGN KEY([category_id])
REFERENCES [media].[category] ([category_id]);

ALTER TABLE [media].[media] CHECK CONSTRAINT [fk_media_category];
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

