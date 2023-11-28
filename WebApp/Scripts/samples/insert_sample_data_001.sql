-- Rules
INSERT INTO [rules].[rule_type] ([rule_name], [description])
VALUES ('Categoria', N'Limitado por categoria del producto');

INSERT INTO [rules].[rule_type] ([rule_name], [description])
VALUES ('Tiempo', N'Bloqueado por uso');

-- Regions
SET IDENTITY_INSERT [regions].[region] ON;
INSERT INTO [regions].[region] ([region_id], [name], [description])
VALUES (1, 'Mor', 'Estado de Morelos');
SET IDENTITY_INSERT [regions].[region] OFF;

-- Store Formats
SET IDENTITY_INSERT [stores].[store_format] ON;
INSERT INTO [stores].[store_format] ([store_format_id], [name], [description])
VALUES (1, 'SC', 'Super Center');
INSERT INTO [stores].[store_format] ([store_format_id], [name], [description])
VALUES (2, 'BA', 'Bodega Aurrera');
INSERT INTO [stores].[store_format] ([store_format_id], [name], [description])
VALUES (3, 'WM', 'Walmart');
SET IDENTITY_INSERT [stores].[store_format] OFF;

-- Stores
SET IDENTITY_INSERT [stores].[store] ON;
INSERT INTO [stores].[store] ([store_id], [store_format_id], [region_id], [state_id], [name], [location])
VALUES (1, 1, 1, 3, 'Domingo Diez', 'Cuernavaca');
INSERT INTO [stores].[store] ([store_id], [store_format_id], [region_id], [state_id], [name], [location])
VALUES (2, 2, 1, 4, 'Walmart Atrios', 'Cuautla');
INSERT INTO [stores].[store] ([store_id], [store_format_id], [region_id], [state_id], [name], [location])
VALUES (3, 3, 1, 5, 'Sendero', 'Iztapalapa');
INSERT INTO [stores].[store] ([store_id], [store_format_id], [region_id], [state_id], [name], [location])
VALUES (4, 2, 1, 6, 'Diaz Ordaz', 'Chalco');
INSERT INTO [stores].[store] ([store_id], [store_format_id], [region_id], [state_id], [name], [location])
VALUES (5, 2, 1, 7, 'Benito Juarez', 'Tlalmanalco');
INSERT INTO [stores].[store] ([store_id], [store_format_id], [region_id], [state_id], [name], [location])
VALUES (6, 2, 1, 8, 'Corraleta', 'Alpanocan');
INSERT INTO [stores].[store] ([store_id], [store_format_id], [region_id], [state_id], [name], [location])
VALUES (7, 2, 1, 9, 'Benito Juarez', 'Yecapixtla');
INSERT INTO [stores].[store] ([store_id], [store_format_id], [region_id], [state_id], [name], [location])
VALUES (8, 2, 1, 10, 'Benito Juarez', 'Xochimilco');
INSERT INTO [stores].[store] ([store_id], [store_format_id], [region_id], [state_id], [name], [location])
VALUES (9, 2, 1, 11, 'Benito Juarez', 'Orizaba');
INSERT INTO [stores].[store] ([store_id], [store_format_id], [region_id], [state_id], [name], [location])
VALUES (10, 2, 1, 12, 'Benito Juarez', 'Perote');
SET IDENTITY_INSERT [stores].[store] OFF;


--Media
-- INSERT INTO [media].[media] ([media_id],[category_id], [name], [description], [cost], [price], [minimum_units], [is_countable], [is_active])
--                      VALUES (1, 157, 'Medio 1', 'Primer Medio', 2.25, 14.34, 10, 1, 1);
-- Generar inserciones aleatorias
DECLARE @counter INT = 1;

WHILE @counter <= 50
BEGIN
    INSERT INTO [media].[media] (
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
        ROUND(RAND() * 155 , 0) + 1,  -- category_id entre 1 y 157
        'Nombre' + CAST(@counter AS NVARCHAR),  -- Nombre inventado
        'Descripción' + CAST(@counter AS NVARCHAR),  -- Descripción inventada
        ROUND(RAND() * 10, 2),  -- Costo decimal aleatorio
        ROUND(RAND() * 10 + 10, 2),  -- Precio decimal aleatorio mayor que el costo
        ROUND(RAND() * 10, 0),  -- Minimum_units entero aleatorio
        ROUND(RAND() * 1, 0),  -- is_countable 0 o 1
        ROUND(RAND() * 1, 0)  -- is_active 0 o 1
    );

    SET @counter = @counter + 1;
END;

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