--INDICES CLIENTES

CREATE INDEX idx_nombre_apellido_cliente ON CLIENTES (nombre, apellido);


--INDICES EMPLEADOS

CREATE INDEX idx_nombre_empleado ON EMPLEADOS (nombre);

CREATE INDEX idx_salario_empleado ON EMPLEADOS (salario);

CREATE INDEX idx_cargo_empleado ON EMPLEADOS (cargo);


--INDICES FACTURACION
CREATE INDEX idx_monto ON FACTURACION (monto);

CREATE INDEX idx_metodo_pago ON FACTURACION (metodo_pago);

CREATE INDEX idx_fecha_monto_factura ON FACTURACION (fecha_factura, monto);


--HABITACIONES

CREATE INDEX idx_estado_habitacion ON HABITACIONES (estado);

CREATE INDEX idx_tipo_habitacion ON HABITACIONES (tipo_habitacion);

CREATE INDEX idx_tipo_estado_habitacion ON HABITACIONES (tipo_habitacion, estado);


--INDICES PEDIDOS RESTAURANTES
 
  CREATE INDEX idx_fecha_pedido ON PEDIDOS_RESTAURANTE (FECHA_PEDIDO);


--INDICES PROVEEDORES

 CREATE INDEX idx_nombre_proveedor ON PROVEEDORES (nombre_empresa);
 
 
 --SERVICIOS USADOS POR CLIENTES
 
CREATE INDEX idx_nombre_servicio ON SERVICIOS_USADOS_CLIENTES (nombre);
 
 CREATE INDEX idx_fecha_servicio ON SERVICIOS_USADOS_CLIENTES (fecha_servicio);