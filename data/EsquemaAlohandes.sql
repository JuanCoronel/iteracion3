
CREATE SEQUENCE ALHOANDES_SEQUENCE;


CREATE TABLE A_Operadores (
	id_operador NUMBER PRIMARY KEY NOT NULL,
    nombre VARCHAR(50) NOT NULL
);



//NUEVA
CREATE TABLE A_ALOJDESHABILITADOS (
	id_alojamiento NUMBER PRIMARY KEY NOT NULL,
	fecha DATE NOT NULL,
	evento VARCHAR(60) NOT NULL,
	CONSTRAINT fk_alojamiento FOREIGN KEY (id_alojamiento) REFERENCES A_ALOJAMIENTOS (id_alojamientos)
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

COMMIT;
