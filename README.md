# Análisis de Datos Meteorológicos - Base de Datos

Este proyecto tiene como objetivo almacenar y analizar datos meteorológicos históricos y en tiempo real. Permite la gestión de estaciones meteorológicas, el monitoreo de condiciones climáticas, la emisión de alertas personalizadas y la integración con APIs externas para recibir datos actualizados. Además, ofrece consultas avanzadas para analizar tendencias y generar alertas automáticas.

## Características Principales

1. **Almacenamiento de Datos Meteorológicos**: 
   - Datos históricos y en tiempo real de diversas estaciones meteorológicas.
   - Variables como temperatura, precipitación, velocidad del viento, humedad y presión atmosférica.

2. **Sistema de Alertas Climáticas**:
   - Emite alertas automáticas basadas en datos meteorológicos en tiempo real (ej. temperaturas extremas).
   - Los usuarios pueden personalizar sus preferencias de alertas por tipo y estación.

3. **Integración con APIs Meteorológicas**:
   - Datos en tiempo real obtenidos de fuentes externas, como APIs meteorológicas.

4. **Análisis y Consultas Avanzadas**:
   - Consultas para analizar tendencias de temperatura y precipitación a lo largo del tiempo.
   - Identificación de estaciones con condiciones extremas o fenómenos climáticos relevantes.

5. **Sistema de Usuarios**:
   - Permite gestionar usuarios con diferentes roles (administrador, analista) y sus preferencias de alertas.

## Estructura del Proyecto

El proyecto se organiza en varios archivos SQL para definir las tablas, insertar datos de ejemplo, realizar consultas y automatizar procesos mediante funciones y triggers.

- **`schema.sql`**: Define la estructura de la base de datos (tablas y relaciones).
- **`data.sql`**: Inserta datos de ejemplo en las tablas.
- **`queries.sql`**: Consultas avanzadas para análisis de datos.
- **`functions_triggers.sql`**: Funciones y triggers para la lógica de negocio.
- **`indexes.sql`**: Índices para mejorar el rendimiento de las consultas.

## Requisitos

- MySQL o cualquier sistema de gestión de bases de datos compatible con SQL.
- Cliente SQL (como MySQL Workbench, DBeaver, o línea de comandos MySQL).

## Instrucciones de Instalación

1. **Clonar el repositorio**:
   ```bash
   git clone https://github.com/tuusuario/analisis-datos-meteorologicos.git
