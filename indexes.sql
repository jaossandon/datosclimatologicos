-- Índices para optimización de consultas
CREATE INDEX idx_estacion_nombre ON Estaciones (NombreEstacion);
CREATE INDEX idx_datos_fecha ON DatosMeteorologicos (Fecha);
CREATE INDEX idx_datos_tiempo_real_fecha ON DatosMeteorologicosTiempoReal (Fecha);
CREATE INDEX idx_alertas_fecha ON AlertasClimaticas (Fecha);
CREATE INDEX idx_preferencias_alertas ON PreferenciasAlertas (UsuarioID, EstacionID);
