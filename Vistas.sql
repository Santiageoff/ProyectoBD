--Clientes Reservaciones
CREATE VIEW vista_clientes_reservaciones AS
SELECT c.id_cliente, c.nombre, r.id_reservacion, r.fecha_reserva
FROM CLIENTES c
JOIN RESERVACIONES r ON c.id_cliente = r.id_cliente;

--Clientes Habitaciones
CREATE VIEW vista_clientes_habitaciones AS
SELECT c.id_cliente, c.nombre, h.tipo_habitacion, h.fecha_check_in, h.fecha_check_out
FROM CLIENTES c
JOIN RESERVACIONES r ON c.id_cliente = r.id_cliente
JOIN HABITACIONES h ON r.id_reservacion = h.id_reservacion; 

--Empleados Mantenimiento 
CREATE VIEW vista_empleados_mantenimiento AS
SELECT e.id_empleado, e.nombre, m.id_mantenimiento, m.fecha_mantenimiento, m.zona
FROM EMPLEADOS e
JOIN MANTENIMIENTO m ON e.id_empleado = m.id_empleado;

--Empleados a Limpieza
CREATE VIEW vista_empleados_limpieza AS
SELECT e.id_empleado, e.nombre, l.id_limpieza, l.fecha_limpieza, l.nombre_limpieza, h.tipo_habitacion
FROM EMPLEADOS e
JOIN LIMPIEZA l ON e.id_empleado = l.id_empleado
JOIN HABITACIONES h ON l.id_habitacion = h.id_habitacion;

--Factura Reservacion
CREATE VIEW vista_facturacion_reservacion AS
SELECT f.id_factura, f.fecha_factura, f.monto, r.id_reservacion, r.fecha_reserva, h.id_cliente
FROM FACTURACION f
JOIN HABITACIONES h ON f.id_habitacion = h.id_habitacion 
JOIN RESERVACIONES r ON h.id_reservacion = r.id_reservacion; 

--Reservacion Habitacion
CREATE VIEW vista_reservaciones_habitaciones AS
SELECT r.id_reservacion, r.fecha_reserva, h.estado , h.tipo_habitacion, h.fecha_check_in, h.fecha_check_out
FROM RESERVACIONES r
JOIN HABITACIONES h ON r.id_cliente = h.id_cliente;

--Habitaciones Temporada
CREATE VIEW vista_habitaciones_temporada AS
SELECT h.id_habitacion, h.tipo_habitacion, h.estado, t.id_temporada, t.nombre_temporada, t.fecha_inicio, t.fecha_fin
FROM Temporada t
JOIN Habitaciones h ON h.id_temporada = t.id_temporada;

--Servicios Usados Habitaciones
CREATE VIEW vista_servicios_usados_clientes_habitaciones AS
SELECT suc.id_servicio, suc.id_cliente, h.estado, h.tipo_habitacion, suc.fecha_servicio, suc.nombre
FROM habitaciones h
JOIN Servicios_usados_clientes suc ON h.id_habitacion = suc.id_habitacion;








