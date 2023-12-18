-- Rules
INSERT INTO [rules].[rule_type] ([rule_name], [description])
VALUES ('Categoria', N'Limitado por categoria del producto');

INSERT INTO [rules].[rule_type] ([rule_name], [description])
VALUES ('Tiempo', N'Bloqueado por uso');


-- Media --
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


-- Store Media --
SET @counter = 1;
WHILE @counter <= 100
BEGIN
    INSERT INTO [stores].[store_media] (
        [store_id],
        [media_id],
        [qty],
        [minimum_units],
        [price],
        [is_by_blocks],
        [is_available]
    )
    VALUES (
        ROUND(RAND() * 9 , 0) + 251,
        ROUND(RAND() * 49 , 0) + 157,
        ROUND(RAND() * 100, 0),
        ROUND(RAND() * 20, 0),
        RAND() * 100,
        ROUND(RAND() * 1, 0),
        ROUND(RAND() * 1, 0)
    );

    SET @counter = @counter + 1;
END;