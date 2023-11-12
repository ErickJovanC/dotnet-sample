CREATE TABLE [states].[state] (
    [state_id]      INT              NOT NULL    identity(1,1)
    , [name]        NVARCHAR(20)     NOT NULL
    ,CONSTRAINT [pk_state] PRIMARY KEY CLUSTERED ( [state_id] ASC )
);

INSERT INTO [states].[state] ([name]) VALUES ('Aguascalientes');
INSERT INTO [states].[state] ([name]) VALUES ('Baja California');
INSERT INTO [states].[state] ([name]) VALUES ('Baja California Sur');
INSERT INTO [states].[state] ([name]) VALUES ('Campeche');
INSERT INTO [states].[state] ([name]) VALUES ('Chiapas');
INSERT INTO [states].[state] ([name]) VALUES ('Chihuahua');
INSERT INTO [states].[state] ([name]) VALUES ('Ciudad de México');
INSERT INTO [states].[state] ([name]) VALUES ('Coahuila');
INSERT INTO [states].[state] ([name]) VALUES ('Colima');
INSERT INTO [states].[state] ([name]) VALUES ('Chiapas');
INSERT INTO [states].[state] ([name]) VALUES ('Durango');
INSERT INTO [states].[state] ([name]) VALUES ('Estado de México');
INSERT INTO [states].[state] ([name]) VALUES ('Guanajuato');
INSERT INTO [states].[state] ([name]) VALUES ('Guerrero');
INSERT INTO [states].[state] ([name]) VALUES ('Hidalgo');
INSERT INTO [states].[state] ([name]) VALUES ('Jalisco');
INSERT INTO [states].[state] ([name]) VALUES ('Michoacán');
INSERT INTO [states].[state] ([name]) VALUES ('Morelos');
INSERT INTO [states].[state] ([name]) VALUES ('Nayarit');
INSERT INTO [states].[state] ([name]) VALUES ('Nuevo León');
INSERT INTO [states].[state] ([name]) VALUES ('Oaxaca');
INSERT INTO [states].[state] ([name]) VALUES ('Puebla');
INSERT INTO [states].[state] ([name]) VALUES ('Querétaro');
INSERT INTO [states].[state] ([name]) VALUES ('Quintana Roo');
INSERT INTO [states].[state] ([name]) VALUES ('San Luis Potosí');
INSERT INTO [states].[state] ([name]) VALUES ('Sinaloa');
INSERT INTO [states].[state] ([name]) VALUES ('Sonora');
INSERT INTO [states].[state] ([name]) VALUES ('Tabasco');
INSERT INTO [states].[state] ([name]) VALUES ('Tamaulipas');
INSERT INTO [states].[state] ([name]) VALUES ('Tlaxcala');
INSERT INTO [states].[state] ([name]) VALUES ('Veracruz');
INSERT INTO [states].[state] ([name]) VALUES ('Yucatán');
INSERT INTO [states].[state] ([name]) VALUES ('Zacatecas');