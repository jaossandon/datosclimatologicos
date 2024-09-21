-- Crear tabla de Estaciones
CREATE TABLE Estaciones (
    EstacionID INT PRIMARY KEY AUTO_INCREMENT,
    NombreEstacion VARCHAR(100) NOT NULL,
    Ubicacion VARCHAR(255),
    Altitud DECIMAL(6, 2)
);

-- Crear tabla de Datos Meteorológicos Históricos
CREATE TABLE DatosMeteorologicos (
    DatoID INT PRIMARY KEY AUTO_INCREMENT,
    EstacionID INT,
    Fecha DATE NOT NULL,
    TemperaturaMax DECIMAL(5, 2),
    TemperaturaMin DECIMAL(5, 2),
    Precipitacion DECIMAL(5, 2),
    VelocidadViento DECIMAL(5, 2),
    HumedadRelativa DECIMAL(5, 2),
    PresionAtmosferica DECIMAL(6, 2),
    FOREIGN KEY (EstacionID) REFERENCES Estaciones(EstacionID)
);

-- Crear tabla de Datos Meteorológicos en Tiempo Real
CREATE TABLE DatosMeteorologicosTiempoReal (
    DatoTiempoRealID INT PRIMARY KEY AUTO_INCREMENT,
    EstacionID INT,
    Fecha DATE NOT NULL,
    Temperatura DECIMAL(5, 2),
    Precipitacion DECIMAL(5, 2),
    VelocidadViento DECIMAL(5, 2),
    HumedadRelativa DECIMAL(5, 2),
    PresionAtmosferica DECIMAL(6, 2),
    FOREIGN KEY (EstacionID) REFERENCES Estaciones(EstacionID)
);

-- Crear tabla de Alertas Climáticas
CREATE TABLE AlertasClimaticas (
    AlertaID INT PRIMARY KEY AUTO_INCREMENT,
    EstacionID INT,
    Fecha DATE NOT NULL,
    TipoAlerta VARCHAR(50),
    Descripcion TEXT,
    FOREIGN KEY (EstacionID) REFERENCES Estaciones(EstacionID)
);

-- Crear tabla de Usuarios
CREATE TABLE Usuarios (
    UsuarioID INT PRIMARY KEY AUTO_INCREMENT,
    NombreUsuario VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Rol VARCHAR(50)
);

-- Crear tabla de Preferencias de Alertas para los usuarios
CREATE TABLE PreferenciasAlertas (
    PreferenciaID INT PRIMARY KEY AUTO_INCREMENT,
    UsuarioID INT,
    EstacionID INT,
    TipoAlerta VARCHAR(50),
    FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID),
    FOREIGN KEY (EstacionID) REFERENCES Estaciones(EstacionID)
);
