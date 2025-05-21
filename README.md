# Proyecto de Base de Datos - Gestión de Alojamiento Hotelero

Este proyecto se fundamenta en un alojamiento hotelero orientado a brindar servicios a viajeros con fines laborales o recreativos. Busca mejorar la eficiencia de áreas críticas como la **gestión de reservas, facturación, habitaciones, transporte y servicios adicionales**, mediante la implementación de un sistema de información basado en una **base de datos relacional escalable y robusta**.

## Tabla de Contenidos

- [Características del Proyecto](#características-del-proyecto)
- [Objetivos](#objetivos)
- [Tecnologías Utilizadas](#tecnologías-utilizadas)
- [Proceso de Normalización](#proceso-de-normalización)
- [Diagramas ER](#diagramas-er)
- [Catálogo de Scripts](#catálogo-de-scripts)
- [Guía de Instalación](#guía-de-instalación)

---

## Características del Proyecto

- Automatización de reservas y control de disponibilidad.
- Optimización de la facturación y gestión de pagos.
- Control centralizado de servicios adicionales (transporte, catering, etc.).
- Escalabilidad ante el crecimiento del hotel o nuevos servicios.
- Mejora en la toma de decisiones gracias a reportes basados en datos fiables.

---

## Objetivos

### A nivel de Proyecto
- Desarrollar una base de datos relacional eficiente.
- Garantizar la integridad y consistencia de los datos.
- Diseñar una solución escalable adaptable al crecimiento del negocio.


---

## Tecnologías Utilizadas

- **Lenguaje**: SQL
- **Tipo de base de datos**: Relacional
- **Herramientas de desarrollo**: SQL Developer 
- **Documentación**: PDF + Excel (diccionario de datos y ERD)

---

## Proceso de Normalización

### Primera Forma Normal (1FN)
- Eliminación de grupos repetitivos.
- Atributos con valores atómicos.
- Registros únicos.

### Segunda Forma Normal (2FN)
- Eliminación de dependencias parciales.
- Separación de datos en tablas específicas: `Clientes`, `Reservaciones`, `Habitaciones`.

### Tercera Forma Normal (3FN)
- Eliminación de dependencias transitivas.
- Modelo final con relaciones estables y entidades bien definidas.

---

## Diagramas ER

Los diagramas Entidad-Relación se encuentran normalizados hasta 3FN y están disponibles en la carpeta `/Diagramas_ER`.

- **1FN**  
  ![1FN](Diagramas_ER/1FN%20Gestión%20de%20Alojamiento%20Hotelero%20%20.png)

- **2FN**  
  ![2FN](Diagramas_ER/2FN%20Gestión%20de%20Alojamiento%20Hotelero.png)

- **3FN**  
  ![3FN](Diagramas_ER/3FN%20Gestión%20de%20Alojamiento%20Hotelero..png)

---

## Catálogo de Scripts

Ejecutar BD_Hotel_Tablas Crea todas las tablas del sistema. 
Abrir carpeta BD_Datos  Inserta los datos requeridos por cada tabla. 
Abrir Script Secuencias Genera secuencias para campos como IDs. 
Abrir Script Vistas Mejora las consultas mediante índices en columnas frecuentes. 
Abrir Script Indices Crea vistas que facilitan las consultas más frecuentes.

---

## Guía de Instalación

1. **Clonar el repositorio**
```bash
git clone https://github.com/Santiageoff/ProyectoBD.git
```
