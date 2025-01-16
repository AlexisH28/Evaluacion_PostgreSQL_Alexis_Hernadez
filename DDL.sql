-- Creación de tablas

CREATE TABLE departamento (
    departamento_id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion TEXT
);

CREATE TABLE empleado (
    empleado_id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    documento_identidad VARCHAR(20) NOT NULL,
    fecha_contratacion DATE NOT NULL,
    departamento_id INTEGER REFERENCES departamento(departamento_id),
    salario_base DECIMAL(10,2) NOT NULL,
    cargo VARCHAR(50) NOT NULL
);

CREATE TABLE vehiculo (
    vehiculo_id SERIAL PRIMARY KEY,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    anio INTEGER NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    estado VARCHAR(20) CHECK (estado IN ('nuevo', 'usado')) NOT NULL,
    placa VARCHAR(17) UNIQUE NOT NULL,
    color VARCHAR(30),
    disponible BOOLEAN DEFAULT true
);

CREATE TABLE cliente (
    cliente_id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    documento_identidad VARCHAR(20) NOT NULL,
    telefono VARCHAR(20),
    email VARCHAR(100),
    direccion TEXT
);

CREATE TABLE venta (
    venta_id SERIAL PRIMARY KEY,
    vehiculo_id INTEGER REFERENCES vehiculo(vehiculo_id),
    cliente_id INTEGER REFERENCES cliente(cliente_id),
    empleado_id INTEGER REFERENCES empleado(empleado_id),
    fecha_venta DATE NOT NULL,
    precio_venta DECIMAL(10,2) NOT NULL,
    metodo_pago VARCHAR(30) NOT NULL
);

CREATE TABLE servicio (
    servicio_id SERIAL PRIMARY KEY,
    vehiculo_id INTEGER REFERENCES vehiculo(vehiculo_id),
    cliente_id INTEGER REFERENCES cliente(cliente_id),
    empleado_id INTEGER REFERENCES empleado(empleado_id),
    fecha_servicio DATE NOT NULL,
    tipo_servicio VARCHAR(100) NOT NULL,
    costo DECIMAL(10,2) NOT NULL,
    estado VARCHAR(20) CHECK (estado IN ('pendiente', 'en_proceso', 'completado', 'cancelado'))
);

CREATE TABLE proveedor (
    proveedor_id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    email VARCHAR(100),
    direccion TEXT
);

CREATE TABLE pieza (
    pieza_id SERIAL PRIMARY KEY,
    proveedor_id INTEGER REFERENCES proveedor(proveedor_id),
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10,2) NOT NULL,
    stock INTEGER NOT NULL
);

CREATE TABLE servicio_pieza(
servicio_id INTEGER REFERENCES servicio(servicio_id),
pieza_id INTEGER REFERENCES pieza(pieza_id),
cantidad INTEGER NOT NULL,
precio_unitario DECIMAL(10,2) NOT NULL,
PRIMARY KEY (servicio_id, pieza_id)
);

CREATE TABLE horario_trabajo (
horario_id SERIAL PRIMARY KEY,
empleado_id INTEGER REFERENCES empleado(empleado_id),
dia_semana VARCHAR(10) CHECK(dia_semana IN ('Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sabado', 'Domingo')),
hora_inicio TIME NOT NULL,
hora_fin TIME NOT NULL
);

CREATE TABLE cliente_potencial(
cliente_potencial_id SERIAL PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL,
telefono VARCHAR(20),
email VARCHAR(100),
fecha_contrato DATE NOT null,
estado_interes VARCHAR(20) CHECK(estado_interes in ('alto', 'medio', 'bajo'))
);

CREATE TABLE interes_vehiculo(
interes_id SERIAL PRIMARY KEY,
cliente_potencial_id INTEGER REFERENCES cliente_potencial(cliente_potencial_id),
vehiculo_id INTEGER REFERENCES vehiculo(vehiculo_id),
fecha_interes DATE NOT null,
comentarios TEXT
);


































