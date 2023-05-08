--- Sentencias SQL para la creación del esquema de Alohandes
--- Las tablas tienen prefijo A_ para facilitar su acceso desde SQL Developer

-- USO
-- Copie el contenido deseado de este archivo en una pestaña SQL de SQL Developer
-- Ejecútelo como un script - Utilice el botón correspondiente de la pestaña utilizada
    
-- Eliminar todas las tablas de la base de datos
DROP TABLE "A_ALOJDESHABILITADOS" CASCADE CONSTRAINTS;
DROP TABLE "A_Alojamientos" CASCADE CONSTRAINTS;
DROP TABLE "A_Usuarios" CASCADE CONSTRAINTS;
DROP TABLE "A_Reservas" CASCADE CONSTRAINTS;
DROP TABLE "A_Propuestas" CASCADE CONSTRAINTS;
DROP TABLE "A_Servicios" CASCADE CONSTRAINTS;
DROP TABLE "A_Contratos" CASCADE CONSTRAINTS;
DROP TABLE "A_Particulares" CASCADE CONSTRAINTS;
DROP TABLE "A_ResidenciasU" CASCADE CONSTRAINTS;
DROP TABLE "A_Hoteles" CASCADE CONSTRAINTS;
DROP TABLE "A_Hostales" CASCADE CONSTRAINTS;

COMMMIT;

-- Eliminar el contenido de todas las tablas de la base de datos
-- El orden es importante. Por qué?
delete from "A_ALOJDESHABILITADOS";
delete from "A_Alojamientos";
delete from "A_Usuarios";
delete from "A_Reservas";
delete from "A_Propuestas";
delete from "A_Servicios";
delete from "A_Contratos";
delete from "A_Particulares";
delete from "A_ResidenciasU";
delete from "A_Hoteles";
delete from "A_Hostales";
commit;

