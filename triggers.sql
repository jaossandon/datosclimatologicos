-- Trigger para generar alertas automáticas basadas en condiciones de datos en tiempo real
CREATE TRIGGER generar_alerta_temperatura
AFTER INSERT ON DatosMeteorologicosTiempoReal
FOR EACH ROW
BEGIN
    IF NEW.Temperatura > 40 THEN
        INSERT INTO AlertasClimaticas (EstacionID, Fecha, TipoAlerta, Descripcion)
        VALUES (NEW.EstacionID, NEW.Fecha, 'Ola de Calor', 'Temperatura extremadamente alta detectada');
    END IF;
END;

-- Función para verificar si existen alertas activas
CREATE FUNCTION verificar_alertas_activas(EstacionID INT)
RETURNS BOOLEAN
BEGIN
    DECLARE alertas INT;
    SELECT COUNT(*) INTO alertas FROM AlertasClimaticas WHERE EstacionID = EstacionID AND Fecha = CURDATE();
    RETURN alertas > 0;
END;

-- Trigger para evitar duplicar alertas en el mismo día
CREATE TRIGGER evitar_alerta_duplicada
BEFORE INSERT ON AlertasClimaticas
FOR EACH ROW
BEGIN
    IF verificar_alertas_activas(NEW.EstacionID) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Ya existe una alerta para esta estación hoy.';
    END IF;
END;
