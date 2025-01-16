-- INSERCIONES BASE DE DATOS

insert into departamento (departamento_id, nombre, descripcion) values
(1, 'Ventas', 'Departamento encargado de las ventas'),
(2, 'Servicio', 'Departamento de mantenimiento y reparacion'),
(3, 'Administracion', 'Departamento de gestion y administracion'),
(4, 'Marketing', 'Departamento encargado de promocion y publicidad');

insert into empleado (empleado_id, nombre, apellido, documento_identidad, fecha_contratacion, departamento_id, salario_base, cargo) values
(1, 'Juan', 'Perez', '1234567897', '2022-01-15', 1, 5500.00, 'Vendedor Senior'),
(2, 'Carlos', 'Cotes', '1042251649', '2023-10-20', 1, 3500.00, 'Vendedor Junior'),
(3, 'Angel', 'Simanca', '1245135898', '2022-03-04', 2, 4000.00, 'Tecnico Senior');,
(4, 'Gean', 'Jacome', '1324567890', '2023-05-15', 3, 7500.00, 'Gerente'),
(5, 'Victor', 'Marimon', '1042798542', '2024-01-05', 4, 2500.00, 'Marketing Manager');

insert into vehiculo (vehiculo_id, marca, modelo, anio, precio, estado, placa, color, disponible) values
(1, 'Toyota', 'Corola', '2023', 25000.00, 'nuevo', 'ACD85', 'blanco', true),
(2, 'Honda', 'Civic', '2019', 20000.00, 'usado', 'BCA45', 'rojo', true),
(3, 'Ford', 'Mustang', '2021', 40000.00, 'nuevo', 'FGH08', 'azul,', false),
(4, 'Mercedes', 'ClaseA', '2022', 75000.00, 'nuevo', 'UYI89', 'blanco', true),
(5, 'Tesla', 'SerieX', '2023', 62000.00, 'nuevo', 'OPL42', 'rojo', true);

insert into cliente (cliente_id, nombre, apellido, documento_identidad, telefono, email, direccion) values
(1, 'Rafael', 'Orozco', 1042251879, 3134533925, 'rafaeloroz@gmail.com', ' El Carrizal'),
(2, 'Diomedes', 'Diaz', 1042589563, 3202115542, 'diomedesd@hotmail.com', 'El Llanito A. 25'),
(3, 'Poncho', 'Zuleta', 1115697832, 3117308229, 'ponchozuletica@gmail.com', 'Tierra de Poetas'),
(4, 'Rafael', 'Escalona', 1256987450, 3108543794, 'escalonaelpropio@hotmail.com', 'El Consuelo #43'),
(5, 'Alexis', 'Hernández', 1354789654, 3001578956, 'alexismar1228@gmail.com', 'Altos de la Campiña');

insert into venta (venta_id, vehiculo_id, cliente_id, empleado_id, fecha_venta, precio_venta, metodo_pago) values
(1, 1, 1, '2023-12-15', 24500.00, 'Efectivo'),
(2, 3, 1, '2025-01-15', 40000.00, 'Tarjeta Debito'),
(3, 5, 1, '2024-05-28', 63000.00, 'Efectivo'),
(4, 2, 1, '202-12-15', 21500.00, 'Tarjeta Credito'),
(5, 4, 1, '2023-12-15', 80500.00, 'Efectivo');

insert into servicio (servicio_id, vehiculo_id, cliente_id, empleado_id, fecha_servicio, tipo_servicio, costo, estado) values 
();

insert into proveedor (proveedor_id, nombre, telefono, email, direccion) values 
();

insert into pieza (pieza_id, proveedor_id, nombre, descripcion, precio, stock) values 
();

insert into 

