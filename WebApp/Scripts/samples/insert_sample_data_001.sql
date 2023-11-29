-- Rules
INSERT INTO [rules].[rule_type] ([rule_name], [description])
VALUES ('Categoria', N'Limitado por categoria del producto');

INSERT INTO [rules].[rule_type] ([rule_name], [description])
VALUES ('Tiempo', N'Bloqueado por uso');


-- Store Formats
SET IDENTITY_INSERT [stores].[store_format] ON;
INSERT INTO [stores].[store_format] ([store_format_id], [name], [description])
VALUES (1, 'SC', 'Super Center');
INSERT INTO [stores].[store_format] ([store_format_id], [name], [description])
VALUES (2, 'BA', 'Bodega Aurrera');
INSERT INTO [stores].[store_format] ([store_format_id], [name], [description])
VALUES (3, 'WM', 'Walmart');
SET IDENTITY_INSERT [stores].[store_format] OFF;


--Media
-- INSERT INTO [media].[media] ([media_id],[category_id], [name], [description], [cost], [price], [minimum_units], [is_countable], [is_active])
--                      VALUES (1, 157, 'Medio 1', 'Primer Medio', 2.25, 14.34, 10, 1, 1);
-- Generar inserciones aleatorias
DECLARE @counter INT = 1;
DECLARE @id INT = 157;

SET IDENTITY_INSERT [entities].[entity] ON
WHILE @counter <= 50
BEGIN
    INSERT INTO [media].[media] (
        [media_id],
        [category_id],
        [name],
        [description],
        [cost],
        [price],
        [minimum_units],
        [is_countable],
        [is_active]
    )
    VALUES (
        @id,
        ROUND(RAND() * 155 , 0) + 1,  -- category_id entre 1 y 157
        'Medio ' + CAST(@counter AS NVARCHAR),  -- Nombre inventado
        'Descripción' + CAST(@counter AS NVARCHAR),  -- Descripción inventada
        ROUND(RAND() * 10, 2),  -- Costo decimal aleatorio
        ROUND(RAND() * 10 + 10, 2),  -- Precio decimal aleatorio mayor que el costo
        ROUND(RAND() * 10, 0),  -- Minimum_units entero aleatorio
        ROUND(RAND() * 1, 0),  -- is_countable 0 o 1
        ROUND(RAND() * 1, 0)  -- is_active 0 o 1
    );

    INSERT INTO [entities].[entity] (
        [entity_id],
        [entity_name],
        [entity_type_id]
    )
    VALUES (
        @id,
        'Medio ' + CAST(@counter AS NVARCHAR),
        3
    );

    SET @id = @id + 1;
    SET @counter = @counter + 1;
END;
SET IDENTITY_INSERT [entities].[entity] OFF

-- Store Media
SET @counter = 1;
WHILE @counter <= 100
BEGIN
    INSERT INTO [stores].[store_media] (
        [store_id],
        [media_id],
        [qty],
        [is_available]
    )
    VALUES (
        ROUND(RAND() * 9 , 0) + 1,
        ROUND(RAND() * 49 , 0) + 1,
        ROUND(RAND() * 100, 0),
        ROUND(RAND() * 1, 0)
    );

    SET @counter = @counter + 1;
END;

INSERT INTO [stores].[store_media] ([store_id], [media_id], [qty], [is_available]) VALUES (1, 1, 100, 1);
INSERT INTO [stores].[store_media] ([store_id], [media_id], [qty], [is_available]) VALUES (2, 12, 50, 1);
INSERT INTO [stores].[store_media] ([store_id], [media_id], [qty], [is_available]) VALUES (2, 22, 500, 1);
INSERT INTO [stores].[store_media] ([store_id], [media_id], [qty], [is_available]) VALUES (3, 23, 10, 1);
INSERT INTO [stores].[store_media] ([store_id], [media_id], [qty], [is_available]) VALUES (3, 32, 150, 1);
INSERT INTO [stores].[store_media] ([store_id], [media_id], [qty], [is_available]) VALUES (3, 42, 5, 1);
INSERT INTO [stores].[store_media] ([store_id], [media_id], [qty], [is_available]) VALUES (4, 22, 25, 1);
INSERT INTO [stores].[store_media] ([store_id], [media_id], [qty], [is_available]) VALUES (5, 21, 5, 1);
INSERT INTO [stores].[store_media] ([store_id], [media_id], [qty], [is_available]) VALUES (5, 21, 5, 1);
INSERT INTO [stores].[store_media] ([store_id], [media_id], [qty], [is_available]) VALUES (6, 3, 5, 1);
INSERT INTO [stores].[store_media] ([store_id], [media_id], [qty], [is_available]) VALUES (7, 4, 5, 1);
INSERT INTO [stores].[store_media] ([store_id], [media_id], [qty], [is_available]) VALUES (8, 5, 5, 1);
INSERT INTO [stores].[store_media] ([store_id], [media_id], [qty], [is_available]) VALUES (9, 6, 5, 1);
INSERT INTO [stores].[store_media] ([store_id], [media_id], [qty], [is_available]) VALUES (10, 7, 5, 1);