
INSERT INTO [entities].[entity_type] ([name], [description])
VALUES ('Tienda', N'Tienda Comercial');

INSERT INTO [entities].[entity_type] ([name], [description])
VALUES ('Medio', N'Medio de publicidad');

INSERT INTO [entities].[entity_type] ([name], [description])
VALUES ('Categoria', N'Categoria asiganada al publicitario');



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



SET IDENTITY_INSERT [media].[category] ON;

INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (1, N'Café , té y sustitutos', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (2, N'Pan y tortillas empacados ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (3, N'Cereales y Barras', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (4, N'Galletas', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (5, N'Enlatados y conservas', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (6, N'Aceites de cocina ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (7, N'Leche ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (8, N'Azúcar y postres ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (9, N'Mermeladas y miel ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (10, N'Dulces y chocolates ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (11, N'Botanas y fruta seca ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (12, N'Salsas, aderezos y vinagres', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (13, N'Pastas', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (14, N'Harina y reposteria ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (15, N'Saborizantes y Jarabes', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (16, N'Arroz , frijole y semillas', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (17, N'Especias y Sazonadores', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (18, N'Alimentos Instantaneos', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (19, N'Alimentos Saludables', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (20, N'Comida Oriental', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (21, N'Leche ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (22, N'Yogurt ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (23, N'Gelatinas y postres ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (24, N'Mantequilla y margarina ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (25, N'Huevo ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (26, N'Crema ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (27, N'Quesos ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (28, N'Alimento Líquido', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (29, N'Frutas', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (30, N'Verduras', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (31, N'Organicos y Superfoods', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (32, N'Pollo y pavo', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (33, N'Cerdo ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (34, N'Mariscos', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (35, N'Pescados ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (36, N'Res ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (37, N'Sushi ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (38, N'Carnes Frias ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (39, N'Prioductos a granel ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (40, N'Quesos ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (41, N'Empacados ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (42, N'Great Value ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (43, N'Pan Salado ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (44, N'Tortilleria ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (45, N'Pan dulce ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (46, N'Reposteria y pasteleria ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (47, N'Comida y Snacks ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (48, N'Agua ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (49, N'cafe y te preparado', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (50, N'Energizantes e hidratantes', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (51, N'Jugos y nectares', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (52, N'Refrescos ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (53, N'Polvos y jarabes', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (54, N'Cervezas', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (55, N'Vinos ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (56, N'Licores ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (57, N'Digestivos ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (58, N'Coolers ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (59, N'Hielos y vasos', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (60, N'Comida fácil ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (61, N'Frutas y verduras congeladas ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (62, N'Hielo ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (63, N'Postres Congelados ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (64, N'Limpieza  ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (65, N'Lavandería ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (66, N'Detergente', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (67, N'Suavizantes', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (68, N'Jabon de lavanderia', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (69, N'Quitamanchas para ropa', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (70, N'Blanqueadores', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (71, N'Papel higiénico', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (72, N'Aromantizantes', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (73, N'Lavatrastes y lavavajillas', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (74, N'Mascotas', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (75, N'Accesorios para limpieza', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (76, N'Almidón y Colorantes para ropa', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (77, N'Desechables ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (78, N'Pañales y toallitas húmedas', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (79, N'Higiene del Bebé', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (80, N'Fórmula lactea', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (81, N'Leche de crecimiento ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (82, N'Comida para bebé y lactancea', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (83, N'Ropa para bebé ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (84, N'Juguetes para bebé y estimulación temprana', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (85, N'Cunas, carreolas y accesorios', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (86, N'Juguetería ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (87, N'Artículos para fiesta ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (88, N'Multivitaminicos', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (89, N'Cuidado Personal ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (90, N'Estomacales ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (91, N'Material de curación ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (92, N'Incontinencia ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (93, N'Analgésicos ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (94, N'Bienestar sexual ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (95, N'Medicamentos Genéricos', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (96, N'Medicamentos de Patente ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (97, N'Respiratorios', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (98, N'Oftalmicos y opticos', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (99, N'Medicamentos de Alta especialidad', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (100, N'Ortopedia y equipos de medicion', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (101, N'Dieta', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (102, N'vitaminas y suplementos', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (103, N'Diabetes', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (104, N'Cuidado de los pies', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (105, N'Medicamentos infantiles', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (106, N'Nutrición deportiva', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (107, N'Naturistas y herbolarios ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (108, N'Afeitado', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (109, N'Cuidado Bucal ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (110, N'Cuidado Facial ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (111, N'Cosmeticos ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (112, N'Cuidado de Cabello ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (113, N'Higiene y cuidado corporal ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (114, N'Higiene y Cuidado para manos ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (115, N'Cuidado para pies', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (116, N'Pañuelos desechables', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (117, N'Cuidado íntimo ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (118, N'Kits de viaje ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (119, N'Desmaquillantes y quita esmaltes', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (120, N'Higiene masculina', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (121, N'Accesorios para cocina ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (122, N'Accesorios para la mesa ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (123, N'Blancos ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (124, N'Ferretería y autos ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (125, N'Artículos de oficina ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (126, N'Artículos deportivos ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (127, N'Organización y almacenamiento ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (128, N'Jardinería y exteriores', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (129, N'Electrodomesticos', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (130, N'Audio', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (131, N'Decoración y muebles', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (132, N'Computación ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (133, N'Entretenimiento', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (134, N'Fotografía ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (135, N'Telefonía', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (136, N'Videojuegos', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (137, N'Pintura', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (138, N'Televisores', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (139, N'Hombre ', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (140, N'Mujer', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (141, N'Niña y juvenil', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (142, N'Niño y juvenil', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (143, N'Zapateria', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (144, N'Alimento para perros y gatos', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (145, N'Accesorios perros y gatos', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (146, N'Alimento y accesorios otras mascotas', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (147, N'Celulares', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (148, N'Servicios Financieros', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (149, N'Servicio de Streaming', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (150, N'Video Juegos', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (151, N'Terminales de cobro', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (152, N'Juguetes Infantiles', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (153, N'Computo', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (154, N'Electrodomésticos', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (155, N'Tarjetas de Prepago', 1);
INSERT INTO [media].[category] ([category_id],[name], [active]) VALUES (157, N'Varias', 1);

SET IDENTITY_INSERT [media].[category] OFF