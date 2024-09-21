-- Tendencia de temperatura en los últimos 10 años
SELECT YEAR(Fecha) AS Año, AVG(TemperaturaMax) AS PromedioTempMax, AVG(TemperaturaMin) AS PromedioTempMin
FROM DatosMeteorologicos
WHERE Fecha >= DATE_SUB(CURDATE(), INTERVAL 10 YEAR)
GROUP BY Año
ORDER BY Año;

-- Estaciones con mayor precipitación anual
SELECT e.NombreEstacion, YEAR(dm.Fecha) AS Año, SUM(dm.Precipitacion) AS TotalPrecipitacion
FROM DatosMeteorologicos dm
JOIN Estaciones e ON dm.EstacionID = e.EstacionID
GROUP BY e.NombreEstacion, Año
ORDER BY TotalPrecipitacion DESC;

-- Datos meteorológicos en tiempo real por estación
SELECT e.NombreEstacion, dtr.Fecha, dtr.Temperatura, dtr.Precipitacion, dtr.VelocidadViento
FROM DatosMeteorologicosTiempoReal dtr
JOIN Estaciones e ON dtr.EstacionID = e.EstacionID
ORDER BY dtr.Fecha DESC;

-- Alertas emitidas por estación
SELECT e.NombreEstacion, a.TipoAlerta, a.Fecha, a.Descripcion
FROM AlertasClimaticas a
JOIN Estaciones e ON a.EstacionID = e.EstacionID
ORDER BY a.Fecha DESC;

-- Preferencias de alertas por usuario
SELECT u.NombreUsuario, e.NombreEstacion, pa.TipoAlerta
FROM PreferenciasAlertas pa
JOIN Usuarios u ON pa.UsuarioID = u.UsuarioID
JOIN Estaciones e ON pa.EstacionID = e.EstacionID;
