CREATE TABLE [states].[state] (
    [state_id]      INT              NOT NULL    --identity(1,1)
    , [name]        NVARCHAR(20)     NOT NULL
    ,CONSTRAINT [pk_state] PRIMARY KEY CLUSTERED ( [state_id] ASC )
);

SET IDENTITY_INSERT [entities].[entity] ON
INSERT INTO [entities].[entity] ([entity_id], [entity_type_id], [entity_name])
VALUES (217, 6, 'Aguascalientes')
, (218, 6, 'Baja California')
, (219, 6, 'Baja California Sur')
, (220, 6, 'Campeche')
, (221, 6, 'Chiapas')
, (222, 6, 'Chihuahua')
, (223, 6, 'Ciudad de México')
, (224, 6, 'Coahuila')
, (225, 6, 'Colima')
, (226, 6, 'Chiapas')
, (227, 6, 'Durango')
, (228, 6, 'Estado de México')
, (229, 6, 'Guanajuato')
, (230, 6, 'Guerrero')
, (231, 6, 'Hidalgo')
, (232, 6, 'Jalisco')
, (233, 6, 'Michoacán')
, (234, 6, 'Morelos')
, (235, 6, 'Nayarit')
, (236, 6, 'Nuevo León')
, (237, 6, 'Oaxaca')
, (238, 6, 'Puebla')
, (239, 6, 'Querétaro')
, (240, 6, 'Quintana Roo')
, (241, 6, 'San Luis Potosí')
, (242, 6, 'Sinaloa')
, (243, 6, 'Sonora')
, (244, 6, 'Tabasco')
, (245, 6, 'Tamaulipas')
, (246, 6, 'Tlaxcala')
, (247, 6, 'Veracruz')
, (248, 6, 'Yucatán')
, (249, 6, 'Zacatecas')
;
SET IDENTITY_INSERT [entities].[entity] OFF

INSERT INTO [states].[state] ([state_id], [name])
VALUES (217, 'Aguascalientes')
, (218, 'Baja California')
, (219, 'Baja California Sur')
, (220, 'Campeche')
, (221, 'Chiapas')
, (222, 'Chihuahua')
, (223, 'Ciudad de México')
, (224, 'Coahuila')
, (225, 'Colima')
, (226, 'Chiapas')
, (227, 'Durango')
, (228, 'Estado de México')
, (229, 'Guanajuato')
, (230, 'Guerrero')
, (231, 'Hidalgo')
, (232, 'Jalisco')
, (233, 'Michoacán')
, (234, 'Morelos')
, (235, 'Nayarit')
, (236, 'Nuevo León')
, (237, 'Oaxaca')
, (238, 'Puebla')
, (239, 'Querétaro')
, (240, 'Quintana Roo')
, (241, 'San Luis Potosí')
, (242, 'Sinaloa')
, (243, 'Sonora')
, (244, 'Tabasco')
, (245, 'Tamaulipas')
, (246, 'Tlaxcala')
, (247, 'Veracruz')
, (248, 'Yucatán')
, (249, 'Zacatecas')
;