-- Insertar Estaciones
INSERT INTO Estaciones (NombreEstacion, Ubicacion, Altitud)
VALUES 
('Estación Norte', 'Ciudad A, País X', 150.50),
('Estación Sur', 'Ciudad B, País X', 250.75);

-- Insertar Datos Meteorológicos Históricos
INSERT INTO DatosMeteorologicos (EstacionID, Fecha, TemperaturaMax, TemperaturaMin, Precipitacion, VelocidadViento, HumedadRelativa, PresionAtmosferica)
VALUES 
(1, '2023-09-20', 35.5, 22.1, 10.5, 15.2, 60.5, 1015.2),
(1, '2023-09-21', 36.0, 23.0, 12.0, 16.0, 58.0, 1013.5),
(2, '2023-09-20', 30.0, 18.5, 5.0, 20.1, 70.0, 1010.8);

-- Insertar Datos Meteorológicos en Tiempo Real
INSERT INTO DatosMeteorologicosTiempoReal (EstacionID, Fecha, Temperatura, Precipitacion, VelocidadViento, HumedadRelativa, PresionAtmosferica)
VALUES 
(1, '2023-09-22', 34.5, 8.0, 12.5, 65.0, 1012.5),
(2, '2023-09-22', 28.5, 6.5, 18.0, 72.5, 1011.3);

-- Insertar Alertas Climáticas
INSERT INTO AlertasClimaticas (EstacionID, Fecha, TipoAlerta, Descripcion)
VALUES
(1, '2023-09-22', 'Tormenta', 'Alerta de tormenta severa en la región norte'),
(2, '2023-09-22', 'Ola de Calor', 'Alerta de ola de calor en la región sur');

-- Insertar Usuarios
INSERT INTO Usuarios (NombreUsuario, Email, Rol)
VALUES 
('Jorge Álvarez', 'jorge@example.com', 'Administrador'),
('María Pérez', 'maria@example.com', 'Analista');

-- Insertar Preferencias de Alertas para los usuarios
INSERT INTO PreferenciasAlertas (UsuarioID, EstacionID, TipoAlerta)
VALUES
(1, 1, 'Tormenta'),
(2, 2, 'Ola de Calor');
