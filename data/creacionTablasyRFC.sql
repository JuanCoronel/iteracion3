CREATE TABLE A_Operadores (
	id_operador NUMBER PRIMARY KEY NOT NULL,
    nombre VARCHAR(50) NOT NULL
);

CREATE TABLE A_Alojamientos (
	id_alojamiento NUMBER PRIMARY KEY NOT NULL,
	operador NUMBER NOT NULL,
    capacidad NUMBER NOT NULL,
    precio NUMBER NOT NULL,
    relacion_universidad VARCHAR(30) NOT NULL,
    horarios_recepcion VARCHAR(60),
    precio_administracion NUMBER NOT NULL,
    precio_seguro NUMBER NOT NULL,
    nombre_alojamiento VARCHAR(30) NOT NULL,
    CONSTRAINT fk_operador_alojamiento FOREIGN KEY (operador) REFERENCES A_Operadores (id_operador)
);

CREATE TABLE A_ALOJDESHABILITADOS (
	id_alojamiento NUMBER PRIMARY KEY NOT NULL,
	fecha DATE NOT NULL,
	evento VARCHAR(60) NOT NULL,
	CONSTRAINT fk_alojamiento FOREIGN KEY (id_alojamiento) REFERENCES A_ALOJAMIENTOS (id_alojamiento)
);

CREATE TABLE A_Usuarios (
	nombre VARCHAR(50),
    cedula NUMBER PRIMARY KEY NOT NULL,
    relacion_universidad VARCHAR(60) NOT NULL
);

CREATE TABLE A_Reservas (
	id_reserva NUMBER PRIMARY KEY NOT NULL,
    tipo_contrato VARCHAR(20),
    fecha_llegada DATE NOT NULL,
    fecha_salida DATE NOT NULL,
    costo NUMBER NOT NULL,
    usuario NUMBER NOT NULL,
    alojamiento_reservado NUMBER NOT NULL,
    CONSTRAINT fk_usuario_reserva FOREIGN KEY (usuario) REFERENCES A_Usuarios (cedula),
    CONSTRAINT fk_alojamiento_reserva FOREIGN KEY (alojamiento_reservado) REFERENCES A_Alojamientos (id_alojamiento)
);

CREATE TABLE A_Propuestas (
 	id_propuesta NUMBER PRIMARY KEY NOT NULL,
    nombre_alojamiento VARCHAR(100) NOT NULL,
    info_alojamiento VARCHAR(200)  
);

CREATE TABLE A_Servicios (
	id_servicio NUMBER PRIMARY KEY NOT NULL,
    nombre_servicio VARCHAR(60) NOT NULL,
    alojamiento NUMBER NOT NULL,
    CONSTRAINT fk_alojamiento_servicio FOREIGN KEY (alojamiento) REFERENCES A_Alojamientos (id_alojamiento)
);

CREATE TABLE A_Contratos (
	id_contrato NUMBER PRIMARY KEY NOT NULL,
    contratista VARCHAR(30),
    alojamiento NUMBER NOT NULL,
    registro_legal VARCHAR(100),
    CONSTRAINT fk_alojamiento_contrato FOREIGN KEY (alojamiento) REFERENCES A_Alojamientos (id_alojamiento)
);

CREATE TABLE A_Particulares (
	id_particular NUMBER PRIMARY KEY NOT NULL,
    nombre_particular VARCHAR(30) NOT NULL,
    CONSTRAINT fk_alojamiento_particular FOREIGN KEY (id_particular) REFERENCES A_Alojamientos (id_alojamiento)  
);

CREATE TABLE A_ResidenciasU(
	id_residencia NUMBER PRIMARY KEY NOT NULL,
    nombre_residencia VARCHAR(30) NOT NULL,
    registro_legal VARCHAR(200) NOT NULL,
    CONSTRAINT fk_alojamiento_residencia FOREIGN KEY (id_residencia) REFERENCES A_Alojamientos (id_alojamiento)  
);

CREATE TABLE A_Hoteles(
	id_hotel NUMBER PRIMARY KEY NOT NULL,
    nombre_hotel VARCHAR(30) NOT NULL,
    registro_legal VARCHAR(200) NOT NULL,
    CONSTRAINT fk_alojamiento_hotel FOREIGN KEY (id_hotel) REFERENCES A_Alojamientos (id_alojamiento)  
);

CREATE TABLE A_Hostales(
	id_hostal NUMBER PRIMARY KEY NOT NULL,
    nombre_hostal VARCHAR(30) NOT NULL,
    registro_legal VARCHAR(200) NOT NULL,
    CONSTRAINT fk_alojamiento_hostal FOREIGN KEY (id_hostal) REFERENCES A_Alojamientos (id_alojamiento)  
);

INSERT INTO A_Operadores(id_operador, nombre) VALUES(1,'Andres Hernadez');
INSERT INTO A_Operadores(id_operador, nombre) VALUES(2,'Pedro Torres');
INSERT INTO A_Operadores(id_operador, nombre) VALUES(3,'Jaime Armando');
INSERT INTO A_Operadores(id_operador, nombre) VALUES(4,'Juan Gomez');
INSERT INTO A_Operadores(id_operador, nombre) VALUES(5,'Angie Palomar');
INSERT INTO A_Operadores(id_operador, nombre) VALUES(6,'Juanita Rodriguez');
INSERT INTO A_Operadores(id_operador, nombre) VALUES(7,'Valeria Martinez');
INSERT INTO A_Operadores(id_operador, nombre) VALUES(8,'Pablo Aguilar');


-- Creacion de 10 alojamientos de tipo hostal ---
INSERT INTO A_Alojamientos(id_alojamiento, operador, capacidad, precio, horarios_recepcion, precio_administracion, precio_seguro, nombre_alojamiento, relacion_universidad)
VALUES (1, 1, 20, 40000, '10AM - 10PM', 0, 0, 'Hostal las Americas', 'Queda cerca');
INSERT INTO A_Hostales(id_hostal, nombre_hostal, registro_legal)
    VALUES(1, 'Hostal las Americas', 'FILE...');

INSERT INTO A_Alojamientos(id_alojamiento, operador, capacidad, precio, horarios_recepcion, precio_administracion, precio_seguro, nombre_alojamiento, relacion_universidad)
VALUES (2, 1, 20, 40000, '10AM - 10PM', 0, 0, 'Hostal las Panamericana', 'Queda cerca');
INSERT INTO A_Hostales(id_hostal, nombre_hostal, registro_legal)
    VALUES(2, 'Hostal las panamericana', 'FILE...');

INSERT INTO A_Alojamientos(id_alojamiento, operador, capacidad, precio, horarios_recepcion, precio_administracion, precio_seguro, nombre_alojamiento, relacion_universidad)
VALUES (3, 1, 20, 40000, '10AM - 10PM', 0, 0, 'Hostal las palmas', 'Queda cerca');
INSERT INTO A_Hostales(id_hostal, nombre_hostal, registro_legal)
    VALUES(3, 'Hostal las palmas', 'FILE...');

INSERT INTO A_Alojamientos(id_alojamiento, operador, capacidad, precio, horarios_recepcion, precio_administracion, precio_seguro, nombre_alojamiento, relacion_universidad)
VALUES (4, 1, 20, 40000, '10AM - 10PM', 0, 0, 'Hostal san andresito', 'Queda cerca');
INSERT INTO A_Hostales(id_hostal, nombre_hostal, registro_legal)
    VALUES(4, 'Hostal san andresito', 'FILE...');

INSERT INTO A_Alojamientos(id_alojamiento, operador, capacidad, precio, horarios_recepcion, precio_administracion, precio_seguro, nombre_alojamiento, relacion_universidad)
VALUES (5, 1, 20, 40000, '10AM - 10PM', 0, 0, 'Hostal la septima', 'Queda cerca');
INSERT INTO A_Hostales(id_hostal, nombre_hostal, registro_legal)
    VALUES(5, 'Hostal la septima', 'FILE...');

INSERT INTO A_Alojamientos(id_alojamiento, operador, capacidad, precio, horarios_recepcion, precio_administracion, precio_seguro, nombre_alojamiento, relacion_universidad)
VALUES (6, 1, 20, 40000, '10AM - 10PM', 0, 0, 'Hostal Milagros', 'Queda cerca');
INSERT INTO A_Hostales(id_hostal, nombre_hostal, registro_legal)
    VALUES(6, 'Hostal Milagros', 'FILE...');

INSERT INTO A_Alojamientos(id_alojamiento, operador, capacidad, precio, horarios_recepcion, precio_administracion, precio_seguro, nombre_alojamiento, relacion_universidad)
VALUES (7, 1, 20, 40000, '10AM - 10PM', 0, 0, 'Hostal Puerto Gracia', 'Queda cerca');
INSERT INTO A_Hostales(id_hostal, nombre_hostal, registro_legal)
    VALUES(7, 'Hostal Puerto Gracia', 'FILE...');

INSERT INTO A_Alojamientos(id_alojamiento, operador, capacidad, precio, horarios_recepcion, precio_administracion, precio_seguro, nombre_alojamiento, relacion_universidad)
VALUES (8, 1, 20, 40000, '10AM - 10PM', 0, 0, 'Hostal la doce', 'Queda cerca');
INSERT INTO A_Hostales(id_hostal, nombre_hostal, registro_legal)
    VALUES(8, 'Hostal la doce', 'FILE...');

INSERT INTO A_Alojamientos(id_alojamiento, operador, capacidad, precio, horarios_recepcion, precio_administracion, precio_seguro, nombre_alojamiento, relacion_universidad)
VALUES (9, 1, 20, 40000, '10AM - 10PM', 0, 0, 'Hostal Aguas', 'Queda cerca');
INSERT INTO A_Hostales(id_hostal, nombre_hostal, registro_legal)
    VALUES(9, 'Hostal Aguas', 'FILE...');

INSERT INTO A_Alojamientos(id_alojamiento, operador, capacidad, precio, horarios_recepcion, precio_administracion, precio_seguro, nombre_alojamiento, relacion_universidad)
VALUES (10, 1, 20, 40000, '10AM - 10PM', 0, 0, 'Hostal Germania', 'Queda cerca');
INSERT INTO A_Hostales(id_hostal, nombre_hostal, registro_legal)
    VALUES(10, 'Hostal Germania', 'FILE...');

-- Creacion de 12 alojamientos de tipo hotel ---

INSERT INTO A_Alojamientos(id_alojamiento, operador, capacidad, precio, horarios_recepcion, precio_administracion, precio_seguro, nombre_alojamiento, relacion_universidad)
VALUES (11, 2, 20, 40000, '10AM - 10PM', 0, 0, 'Hotel Venecia', 'Queda cerca');
INSERT INTO A_Hoteles(id_hotel, nombre_hotel, registro_legal)
    VALUES(1, 'Hotel Venecia', 'FILE...');

INSERT INTO A_Alojamientos(id_alojamiento, operador, capacidad, precio, horarios_recepcion, precio_administracion, precio_seguro, nombre_alojamiento, relacion_universidad)
VALUES (12, 2, 20, 40000, '10AM - 10PM', 0, 0, 'Hotel Germania', 'Queda cerca');
INSERT INTO A_Hoteles(id_hotel, nombre_hotel, registro_legal)
    VALUES(2, 'Hotel Germania', 'FILE...');

INSERT INTO A_Alojamientos(id_alojamiento, operador, capacidad, precio, horarios_recepcion, precio_administracion, precio_seguro, nombre_alojamiento, relacion_universidad)
VALUES (13, 2, 20, 40000, '10AM - 10PM', 0, 0, 'Hotel Aguas', 'Queda cerca');
INSERT INTO A_Hoteles(id_hotel, nombre_hotel, registro_legal)
    VALUES(3, 'Hotel Aguas', 'FILE...');

INSERT INTO A_Alojamientos(id_alojamiento, operador, capacidad, precio, horarios_recepcion, precio_administracion, precio_seguro, nombre_alojamiento, relacion_universidad)
VALUES (14, 2, 20, 40000, '10AM - 10PM', 0, 0, 'Hotel San Luz', 'Queda cerca');
INSERT INTO A_Hoteles(id_hotel, nombre_hotel, registro_legal)
    VALUES(4, 'Hotel San Luz', 'FILE...');

INSERT INTO A_Alojamientos(id_alojamiento, operador, capacidad, precio, horarios_recepcion, precio_administracion, precio_seguro, nombre_alojamiento, relacion_universidad)
VALUES (15, 2, 20, 40000, '10AM - 10PM', 0, 0, 'Hotel Imperial', 'Queda cerca');
INSERT INTO A_Hoteles(id_hotel, nombre_hotel, registro_legal)
    VALUES(5, 'Hotel Imperial', 'FILE...');

INSERT INTO A_Alojamientos(id_alojamiento, operador, capacidad, precio, horarios_recepcion, precio_administracion, precio_seguro, nombre_alojamiento, relacion_universidad)
VALUES (16, 2, 20, 40000, '10AM - 10PM', 0, 0, 'Hotel Los Angeles', 'Queda cerca');
INSERT INTO A_Hoteles(id_hotel, nombre_hotel, registro_legal)
    VALUES(6, 'Hotel Los Angeles', 'FILE...');

INSERT INTO A_Alojamientos(id_alojamiento, operador, capacidad, precio, horarios_recepcion, precio_administracion, precio_seguro, nombre_alojamiento, relacion_universidad)
VALUES (17, 2, 20, 40000, '10AM - 10PM', 0, 0, 'Hotel Septima', 'Queda cerca');
INSERT INTO A_Hoteles(id_hotel, nombre_hotel, registro_legal)
    VALUES(7, 'Hotel Septima', 'FILE...');

INSERT INTO A_Alojamientos(id_alojamiento, operador, capacidad, precio, horarios_recepcion, precio_administracion, precio_seguro, nombre_alojamiento, relacion_universidad)
VALUES (18, 2, 20, 40000, '10AM - 10PM', 0, 0, 'Hotel Calle23', 'Queda cerca');
INSERT INTO A_Hoteles(id_hotel, nombre_hotel, registro_legal)
    VALUES(8, 'Hotel Calle23', 'FILE...');

INSERT INTO A_Alojamientos(id_alojamiento, operador, capacidad, precio, horarios_recepcion, precio_administracion, precio_seguro, nombre_alojamiento, relacion_universidad)
VALUES (19, 2, 20, 40000, '10AM - 10PM', 0, 0, 'Hotel Indigo', 'Queda cerca');
INSERT INTO A_Hoteles(id_hotel, nombre_hotel, registro_legal)
    VALUES(9, 'Hotel Indigo', 'FILE...');

INSERT INTO A_Alojamientos(id_alojamiento, operador, capacidad, precio, horarios_recepcion, precio_administracion, precio_seguro, nombre_alojamiento, relacion_universidad)
VALUES (20, 2, 20, 40000, '10AM - 10PM', 0, 0, 'Hotel Industriales', 'Queda cerca');
INSERT INTO A_Hoteles(id_hotel, nombre_hotel, registro_legal)
    VALUES(10, 'Hotel Industriales', 'FILE...');

INSERT INTO A_Alojamientos(id_alojamiento, operador, capacidad, precio, horarios_recepcion, precio_administracion, precio_seguro, nombre_alojamiento, relacion_universidad)
VALUES (21, 2, 20, 40000, '10AM - 10PM', 0, 0, 'Hotel Continental', 'Queda cerca');
INSERT INTO A_Hoteles(id_hotel, nombre_hotel, registro_legal)
    VALUES(11, 'Hotel Continental', 'FILE...');

INSERT INTO A_Alojamientos(id_alojamiento, operador, capacidad, precio, horarios_recepcion, precio_administracion, precio_seguro, nombre_alojamiento, relacion_universidad)
VALUES (22, 2, 20, 40000, '10AM - 10PM', 0, 0, 'Hotel El Dorado', 'Queda cerca');
INSERT INTO A_Hoteles(id_hotel, nombre_hotel, registro_legal)
    VALUES(12, 'Hotel El Dorado', 'FILE...');

-- Creacion de 1 residencia --
INSERT INTO A_Alojamientos(id_alojamiento, operador, capacidad, precio, horarios_recepcion, precio_administracion, precio_seguro, nombre_alojamiento, relacion_universidad)
VALUES (23, 3, 20, 40000, '10AM - 10PM', 0, 0, 'City U', 'Queda cerca');
INSERT INTO A_ResidenciasU(id_residencia, nombre_residencia, registro_legal)
    VALUES(1, 'City U', 'FILE...');

-- Creacion de Fenicia -- 
INSERT INTO A_Alojamientos(id_alojamiento, operador, capacidad, precio, horarios_recepcion, precio_administracion, precio_seguro, nombre_alojamiento, relacion_universidad)
VALUES (24, 4, 20, 40000, '10AM - 10PM', 0, 0, 'Fenicia', 'Proyecto Universidad');
INSERT INTO A_Contratos(id_contrato, contratista, alojamiento, registro_legal)
VALUES (1, 'FENICIA', 24, 'FILE...');

-- Creacion de Usuarios --
INSERT INTO A_Usuarios(nombre, cedula, relacion_universidad)
VALUES('Andrea Ramirez', '1003454232', 'Estudiante Ing. Sitemas');

INSERT INTO A_Usuarios(nombre, cedula, relacion_universidad)
VALUES('Juan Camargo', '100232132', 'Profesor Departamento de Fisica');

INSERT INTO A_Usuarios(nombre, cedula, relacion_universidad)
VALUES('Pedro Torres', '1003194200', 'Estudiante Ing. Ambiental');

INSERT INTO A_Usuarios(nombre, cedula, relacion_universidad)
VALUES('Carlos Paramo', '1003123132', 'Estudiante Ing. Civil');


-- Creacion de Alojamientos Particulares --
INSERT INTO A_Operadores(id_operador, nombre) VALUES(9,'Carlos Paramo');

INSERT INTO A_Alojamientos(id_alojamiento, operador, capacidad, precio, horarios_recepcion, precio_administracion, precio_seguro, nombre_alojamiento, relacion_universidad)
VALUES (25, 9, 20, 40000, '10AM - 10PM', 0, 0, 'Habitacion Doble Carlos Paramo', 'Particular');

INSERT INTO A_Particulares(id_particular, nombre_particular)
VALUES (25, 'Habitacion Doble Carlos Paramo');

-- Creacion de propuestas --
INSERT INTO A_Propuestas(id_propuesta, nombre_alojamiento, info_alojamiento)
VALUES (1, 'Habitaciones multiples jimenez', 'ubicacion" carrera septima, operador: Andres Jaramillo info:...');

INSERT INTO A_Propuestas(id_propuesta, nombre_alojamiento, info_alojamiento)
VALUES (2, 'Habitaciones dobles calle5ta', 'ubicacion" call5 #4, operador: Paula Torres info:...');


-- Creacion de servicios --

-- Servicios de residencias universitarias --
INSERT INTO A_Servicios(id_servicio, nombre_servicio, alojamiento)
VALUES(1, 'cocineta', 23);

INSERT INTO A_Servicios(id_servicio, nombre_servicio, alojamiento)
VALUES(2, 'TV cable', 23);

INSERT INTO A_Servicios(id_servicio, nombre_servicio, alojamiento)
VALUES(3, 'servicios publicos', 23);

INSERT INTO A_Servicios(id_servicio, nombre_servicio, alojamiento)
VALUES(4, 'porteria 24 horas', 23);

INSERT INTO A_Servicios(id_servicio, nombre_servicio, alojamiento)
VALUES(5, 'internet', 23);

INSERT INTO A_Servicios(id_servicio, nombre_servicio, alojamiento)
VALUES(6, 'servicio aseo', 23);

INSERT INTO A_Servicios(id_servicio, nombre_servicio, alojamiento)
VALUES(7, 'apoyo social', 23);

INSERT INTO A_Servicios(id_servicio, nombre_servicio, alojamiento)
VALUES(8, 'apoyo academico', 23);

INSERT INTO A_Servicios(id_servicio, nombre_servicio, alojamiento)
VALUES(9, 'cocineta', 19);

INSERT INTO A_Servicios(id_servicio, nombre_servicio, alojamiento)
VALUES(10, 'TV cable', 19);

INSERT INTO A_Servicios(id_servicio, nombre_servicio, alojamiento)
VALUES(11, 'servicios publicos', 19);

INSERT INTO A_Servicios(id_servicio, nombre_servicio, alojamiento)
VALUES(12, 'porteria 24 horas', 19);

INSERT INTO A_Servicios(id_servicio, nombre_servicio, alojamiento)
VALUES(13, 'internet', 19);

INSERT INTO A_Servicios(id_servicio, nombre_servicio, alojamiento)
VALUES(14, 'servicio aseo', 19);

INSERT INTO A_Servicios(id_servicio, nombre_servicio, alojamiento)
VALUES(15, 'apoyo social', 19);

INSERT INTO A_Servicios(id_servicio, nombre_servicio, alojamiento)
VALUES(16, 'apoyo academico', 19);

-- Reservas --
INSERT INTO A_RESERVAS(id_reserva, tipo_contrato, fecha_llegada, fecha_salida, costo, usuario, alojamiento_reservado)
VALUES(1, 'Ninguno', '10/02/2022', '18/02/2022', 148000, 100232132, 19);

INSERT INTO A_RESERVAS(id_reserva, tipo_contrato, fecha_llegada, fecha_salida, costo, usuario, alojamiento_reservado)
VALUES(2, 'Ninguno', '01/07/2022', '15/07/2022', 85000, 1003454232, 19);

INSERT INTO A_RESERVAS(id_reserva, tipo_contrato, fecha_llegada, fecha_salida, costo, usuario, alojamiento_reservado)
VALUES(3, 'Ninguno', '10/08/2022', '18/09/2022', 211000, 100232132, 23);

INSERT INTO A_RESERVAS(id_reserva, tipo_contrato, fecha_llegada, fecha_salida, costo, usuario, alojamiento_reservado)
VALUES(4, 'Ninguno', '05/03/2021', '13/03/2021', 58000, 100232132, 9);

INSERT INTO A_RESERVAS(id_reserva, tipo_contrato, fecha_llegada, fecha_salida, costo, usuario, alojamiento_reservado)
VALUES(5, 'Ninguno', '05/09/2019', '15/09/2019', 84000, 1003123132, 9);

INSERT INTO A_RESERVAS(id_reserva, tipo_contrato, fecha_llegada, fecha_salida, costo, usuario, alojamiento_reservado)
VALUES(6, 'Ninguno', '10/06/2018', '20/06/2018', 67000, 1003123132, 9);

INSERT INTO A_RESERVAS(id_reserva, tipo_contrato, fecha_llegada, fecha_salida, costo, usuario, alojamiento_reservado)
VALUES(7, 'Ninguno', '01/03/2022', '11/03/2022', 42000, 1003123132, 9);

INSERT INTO A_RESERVAS(id_reserva, tipo_contrato, fecha_llegada, fecha_salida, costo, usuario, alojamiento_reservado)
VALUES(8, 'Ninguno', '20/01/2023', '30/01/2023', 134000, 1003123132, 9);

-- RFC1 -- 
SELECT op.nombre as proveedor, sum(r.costo) as ingresos
FROM A_alojamientos a INNER JOIN
A_Reservas r on a.id_alojamiento = r.alojamiento_reservado
INNER JOIN A_operadores op on a.operador = op.id_operador
GROUP BY op.nombre 
ORDER BY sum(r.costo) desc;

-- RFC2 --
SELECT a.nombre_alojamiento as Alojamiento, count(r.alojamiento_reservado) as Popularidad
FROM A_Reservas r INNER JOIN A_Alojamientos a on
r.alojamiento_reservado = a.id_alojamiento
GROUP BY a.nombre_alojamiento
ORDER BY count(r.alojamiento_reservado) desc
FETCH FIRST 20 ROWS ONLY;

-- RFC 3 --
SELECT ID_ALOJAMIENTO, NOMBRE_ALOJAMIENTO, (COUNT(ID_RESERVA)/CAPACIDAD)*100 AS "INDICE (%)"
FROM A_ALOJAMIENTOS INNER JOIN A_RESERVAS ON id_alojamiento = alojamiento_reservado
GROUP BY ID_ALOJAMIENTO, NOMBRE_ALOJAMIENTO, CAPACIDAD;

-- RFC 4 --
SELECT id_alojamiento, nombre_alojamiento, nombre_servicio
FROM A_ALOJAMIENTOS INNER JOIN A_RESERVAS ON id_alojamiento = a_reservas.alojamiento_reservado
                    INNER JOIN A_SERVICIOS ON id_alojamiento = a_servicios.alojamiento
WHERE (fecha_llegada > '10/05/2022' OR fecha_salida < '01/05/2022') AND (nombre_servicio = 'cocineta' or nombre_servicio = 'TV cable')
GROUP BY id_alojamiento, nombre_alojamiento, nombre_servicio;

-- RFC 6 --
SELECT nombre, count(*) AS "RESERVAS REALIZADAS", sum(costo) AS "DINERO TOTAL PAGADO"
FROM A_RESERVAS INNER JOIN A_USUARIOS ON usuario = cedula
WHERE nombre = 'Juan Camargo'
GROUP BY nombre;

-- RFC 8 --
SELECT nombre, COUNT(*) AS "NUMERO DE RESERVAS" 
FROM A_ALOJAMIENTOS INNER JOIN A_RESERVAS ON id_alojamiento = alojamiento_reservado
                    INNER JOIN A_USUARIOS ON usuario = cedula
WHERE nombre_alojamiento = 'Hostal Aguas'
GROUP BY nombre
HAVING COUNT(*) >= 3;