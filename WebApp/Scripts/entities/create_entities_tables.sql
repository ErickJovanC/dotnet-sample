CREATE TABLE [entities].[entity_type] (
    [entity_type_id]        INT              NOT NULL    identity(1,1)
    , [entity_type_name]    NVARCHAR(256)    NOT NULL
    , [table_entity_name]   NVARCHAR(50)     NOT NULL
    , [description]         NVARCHAR(256)
    ,CONSTRAINT [pk_entity_type] PRIMARY KEY CLUSTERED ( [entity_type_id] ASC )
);

CREATE TABLE [entities].[entity] (
    [entity_id]         INT          NOT NULL   identity(1,1)
    , [entity_type_id]  INT          NOT NULL
    , [entity_name]     NVARCHAR(50) NOT NULL
    ,CONSTRAINT [pk_entity] PRIMARY KEY CLUSTERED ( [entity_id] ASC )
);

ALTER TABLE [entities].[entity] WITH CHECK ADD CONSTRAINT [fk_entity_entity_type] FOREIGN KEY([entity_type_id])
REFERENCES [entities].[entity_type] ([entity_type_id]);

ALTER TABLE [entities].[entity] CHECK CONSTRAINT [fk_entity_entity_type];

-- Entity Type
SET IDENTITY_INSERT [entities].[entity_type] ON;
INSERT INTO [entities].[entity_type] ([entity_type_id],[entity_type_name], [description], [table_entity_name])
VALUES (1, N'Categoría', N'Categoría asignada al publicitario', 'media.category')
, (2, 'Tienda', N'Tienda Comercial', 'stores.store')
, (3, 'Medio', N'Medio de publicidad', 'media.media')
, (4, 'Marca', N'Marcas Comerciales', 'brands.brand')
, (5, 'Advertisers', N'Clientes del Tenant', 'advertisers.advertiser')
, (6, 'States', N'Estados de la Republica', 'states.state')
;
SET IDENTITY_INSERT [entities].[entity_type] OFF;


-- Entities
SET IDENTITY_INSERT [entities].[entity] ON;
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (1, N'Café , té y sustitutos', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (2, N'Pan y tortillas empacados ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (3, N'Cereales y Barras', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (4, N'Galletas', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (5, N'Enlatados y conservas', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (6, N'Aceites de cocina ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (7, N'Leche ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (8, N'Azúcar y postres ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (9, N'Mermeladas y miel ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (10, N'Dulces y chocolates ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (11, N'Botanas y fruta seca ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (12, N'Salsas, aderezos y vinagres', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (13, N'Pastas', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (14, N'Harina y reposteria ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (15, N'Saborizantes y Jarabes', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (16, N'Arroz , frijole y semillas', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (17, N'Especias y Sazonadores', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (18, N'Alimentos Instantaneos', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (19, N'Alimentos Saludables', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (20, N'Comida Oriental', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (21, N'Leche ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (22, N'Yogurt ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (23, N'Gelatinas y postres ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (24, N'Mantequilla y margarina ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (25, N'Huevo ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (26, N'Crema ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (27, N'Quesos ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (28, N'Alimento Líquido', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (29, N'Frutas', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (30, N'Verduras', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (31, N'Organicos y Superfoods', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (32, N'Pollo y pavo', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (33, N'Cerdo ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (34, N'Mariscos', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (35, N'Pescados ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (36, N'Res ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (37, N'Sushi ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (38, N'Carnes Frias ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (39, N'Prioductos a granel ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (40, N'Quesos ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (41, N'Empacados ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (42, N'Great Value ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (43, N'Pan Salado ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (44, N'Tortilleria ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (45, N'Pan dulce ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (46, N'Reposteria y pasteleria ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (47, N'Comida y Snacks ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (48, N'Agua ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (49, N'cafe y te preparado', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (50, N'Energizantes e hidratantes', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (51, N'Jugos y nectares', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (52, N'Refrescos ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (53, N'Polvos y jarabes', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (54, N'Cervezas', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (55, N'Vinos ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (56, N'Licores ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (57, N'Digestivos ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (58, N'Coolers ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (59, N'Hielos y vasos', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (60, N'Comida fácil ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (61, N'Frutas y verduras congeladas ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (62, N'Hielo ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (63, N'Postres Congelados ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (64, N'Limpieza  ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (65, N'Lavandería ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (66, N'Detergente', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (67, N'Suavizantes', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (68, N'Jabon de lavanderia', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (69, N'Quitamanchas para ropa', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (70, N'Blanqueadores', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (71, N'Papel higiénico', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (72, N'Aromantizantes', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (73, N'Lavatrastes y lavavajillas', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (74, N'Mascotas', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (75, N'Accesorios para limpieza', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (76, N'Almidón y Colorantes para ropa', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (77, N'Desechables ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (78, N'Pañales y toallitas húmedas', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (79, N'Higiene del Bebé', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (80, N'Fórmula lactea', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (81, N'Leche de crecimiento ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (82, N'Comida para bebé y lactancea', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (83, N'Ropa para bebé ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (84, N'Juguetes para bebé y estimulación temprana', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (85, N'Cunas, carreolas y accesorios', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (86, N'Juguetería ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (87, N'Artículos para fiesta ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (88, N'Multivitaminicos', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (89, N'Cuidado Personal ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (90, N'Estomacales ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (91, N'Material de curación ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (92, N'Incontinencia ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (93, N'Analgésicos ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (94, N'Bienestar sexual ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (95, N'Medicamentos Genéricos', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (96, N'Medicamentos de Patente ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (97, N'Respiratorios', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (98, N'Oftalmicos y opticos', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (99, N'Medicamentos de Alta especialidad', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (100, N'Ortopedia y equipos de medicion', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (101, N'Dieta', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (102, N'vitaminas y suplementos', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (103, N'Diabetes', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (104, N'Cuidado de los pies', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (105, N'Medicamentos infantiles', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (106, N'Nutrición deportiva', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (107, N'Naturistas y herbolarios ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (108, N'Afeitado', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (109, N'Cuidado Bucal ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (110, N'Cuidado Facial ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (111, N'Cosmeticos ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (112, N'Cuidado de Cabello ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (113, N'Higiene y cuidado corporal ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (114, N'Higiene y Cuidado para manos ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (115, N'Cuidado para pies', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (116, N'Pañuelos desechables', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (117, N'Cuidado íntimo ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (118, N'Kits de viaje ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (119, N'Desmaquillantes y quita esmaltes', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (120, N'Higiene masculina', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (121, N'Accesorios para cocina ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (122, N'Accesorios para la mesa ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (123, N'Blancos ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (124, N'Ferretería y autos ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (125, N'Artículos de oficina ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (126, N'Artículos deportivos ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (127, N'Organización y almacenamiento ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (128, N'Jardinería y exteriores', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (129, N'Electrodomesticos', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (130, N'Audio', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (131, N'Decoración y muebles', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (132, N'Computación ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (133, N'Entretenimiento', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (134, N'Fotografía ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (135, N'Telefonía', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (136, N'Videojuegos', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (137, N'Pintura', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (138, N'Televisores', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (139, N'Hombre ', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (140, N'Mujer', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (141, N'Niña y juvenil', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (142, N'Niño y juvenil', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (143, N'Zapateria', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (144, N'Alimento para perros y gatos', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (145, N'Accesorios perros y gatos', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (146, N'Alimento y accesorios otras mascotas', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (147, N'Celulares', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (148, N'Servicios Financieros', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (149, N'Servicio de Streaming', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (150, N'Video Juegos', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (151, N'Terminales de cobro', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (152, N'Juguetes Infantiles', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (153, N'Computo', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (154, N'Electrodomésticos', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (155, N'Tarjetas de Prepago', 1);
INSERT INTO [entities].[entity] ([entity_id],[entity_name], [entity_type_id]) VALUES (156, N'Varias', 1);
SET IDENTITY_INSERT [entities].[entity] OFF