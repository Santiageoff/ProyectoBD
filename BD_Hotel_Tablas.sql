--Tabla Empleados
CREATE TABLE Empleados(
    id_empleado Number(6,0) PRIMARY KEY not null,
    nombre varchar2(20) not null,
    apellido varchar2(20) not null,
    cargo varchar2(15) not null,
    salario Number(10,2) not null
); 

--Tabla Clientes
CREATE TABLE Clientes( 
    id_cliente Number(6,0) PRIMARY KEY not null,
    nombre Varchar2(15) not null,
    apellido Varchar2(20) not null,
    direccion Varchar2(40) null,
    telefono Number(15,0) null,
    email Varchar2(50) null,
    nacionalidad Varchar2(15) null
);

--Tabla Proveedores
CREATE TABLE Proveedores(
    id_proveedor Number(6,0) PRIMARY KEY not null,
    nombre_empresa VARCHAR2(30) not null,
    nombre_contacto VARCHAR2(15) not null,
    telefono Number(10,0) not null,
    direccion VARCHAR2(40) not null
);

--Tabla Temporada
CREATE TABLE Temporada(
    id_temporada NUMBER(6,0) PRIMARY KEY not null,
    nombre_temporada VARCHAR2(15) not null,
    fecha_inicio date not null,
    fecha_fin date not null
);

--Tabla Restaurante
CREATE TABLE Restaurante(
    id_plato Number(6,0) PRIMARY KEY not null,
    nombre varchar2(30) not null,
    precio Number(10,2) not null
);

--Tabla Inventario
CREATE TABLE Inventario (
    id_producto NUMBER(6,0) PRIMARY KEY not null,
    nombre VARCHAR2(15) not null,
    cantidad NUMBER(7,0) not null,
    id_proveedor NUMBER(6,0) not null,
    id_plato Number(6,0) not null,
    CONSTRAINT fk_proveedor FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id_proveedor),
    CONSTRAINT fk_plato_inventario FOREIGN KEY (id_plato) REFERENCES Restaurante(id_plato)
);

--Tabla Mantenimiento 
CREATE TABLE Mantenimiento(
    id_mantenimiento Number(6,0) PRIMARY KEY not null,
    fecha_mantenimiento Date not null,
    zona Varchar2(15) not null,
    id_empleado Number (6,0) not null,
    CONSTRAINT fk_empleado_mantenimiento FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado)
);

--Tabla Reservaciones
CREATE TABLE Reservaciones(
    id_reservacion Number(6,0) PRIMARY KEY not null,
    fecha_reserva Date not null,
    id_cliente Number(6,0) not null,
    id_temporada Number(6,0) not null,
    CONSTRAINT fk_cliente FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    CONSTRAINT fk_temporada_reservacion FOREIGN KEY (id_temporada) REFERENCES Temporada(id_temporada)
);

--Tabla Habitaciones
CREATE TABLE Habitaciones (
    id_habitacion Number(6,0) PRIMARY KEY NOT NULL,
    tipo_habitacion Varchar2(15) NOT NULL,
    estado Varchar2(10) NOT NULL,
    fecha_check_in Date NULL,
    fecha_check_out Date NULL,
    id_cliente Number(6,0) NULL,
    id_reservacion Number(6,0) NULL,
    id_temporada Number (6,0) NULL,
    CONSTRAINT fk_cliente_habitacion FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    CONSTRAINT fk_reservacion_habitacion FOREIGN KEY (id_reservacion) REFERENCES Reservaciones(id_reservacion),
    CONSTRAINT fk_temporada_habitacion FOREIGN KEY (id_temporada) REFERENCES Temporada(id_temporada)
);

--Tabla Transporte
CREATE TABLE Transporte(
    id_transporte Number(6,0) not null,
    fecha_solicitud Date not null,
    destino varchar2(50) not null,
    id_cliente Number(6,0),
    id_empleado Number(6,0),
    CONSTRAINT fk_cliente_transporte FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    CONSTRAINT fk_empleado_transporte FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado)
);

--Tabla Pedidos Restaurante 
CREATE TABLE pedidos_restaurante(
    id_pedido Number(6,0) PRIMARY KEY not null,
    fecha_pedido Date not null,
    id_plato Number(6,0) not null,
    id_empleado Number(6,0) not null,
    CONSTRAINT fk_plato FOREIGN KEY(id_plato) REFERENCES Restaurante(id_plato),
    CONSTRAINT fk_empleado_restaurante FOREIGN KEY(id_empleado) REFERENCES Empleados(id_empleado)
);

--Tabla Servicios Usados por Clientes
CREATE TABLE Servicios_Usados_Clientes(
    id_servicio Number(6,0) PRIMARY KEY not null,
    nombre varchar2(50) not null,
    fecha_servicio Date not null,
    id_habitacion Number(6,0) not null,
    id_cliente Number(6,0) not null,
    CONSTRAINT fk_habitacion_servicio FOREIGN KEY (id_habitacion) REFERENCES Habitaciones(id_habitacion),
    CONSTRAINT fk_cliente_servicio FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

--Tabla Limpieza
CREATE TABLE Limpieza(
    id_limpieza Number(6,0) PRIMARY KEY not null,
    fecha_limpieza Date not null,
    nombre_limpieza Varchar2(15) not null,
    id_habitacion Number(6,0) not null,
    id_empleado Number(6,0) not null,
    CONSTRAINT fk_habitacion_limpieza FOREIGN KEY (id_habitacion) REFERENCES Habitaciones(id_habitacion),
    CONSTRAINT fk_empleado_limpieza FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado)
);

--Tabla Facturacion
CREATE TABLE Facturacion(
    id_factura Number(6,0) PRIMARY KEY not null,
    monto Number(10,2) not null,
    fecha_factura date not null,
    metodo_pago varchar2(15) not null,
    id_reservacion Number(6,0) null,
    id_proveedor Number(6,0) null,
    id_mantenimiento Number(6,0) null,
    id_habitacion Number(6,0) null,
    CONSTRAINT fk_reservacion_factura FOREIGN KEY (id_reservacion) REFERENCES Reservaciones(id_reservacion),
    CONSTRAINT fk_proveedor_factura FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id_proveedor),
    CONSTRAINT fk_mantenimiento_factura FOREIGN KEY (id_mantenimiento) REFERENCES Mantenimiento(id_mantenimiento),
    CONSTRAINT fk_habitacion_factura FOREIGN KEY (id_habitacion) REFERENCES Habitaciones(id_habitacion)
);

--Tabla Valoracion
CREATE TABLE Valoracion(
    id_valoracion Number(6,0) PRIMARY KEY not null,
    puntuacion Number(1,0) not null,
    comentario Varchar2(100) null,
    fecha_valoracion Date not null,
    id_cliente Number(6,0) not null,
    CONSTRAINT fk_cliente_valoracion FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

