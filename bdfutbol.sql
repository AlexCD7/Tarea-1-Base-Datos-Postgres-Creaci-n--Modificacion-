CREATE TABLE futbolista(
id Serial PRIMARY KEY,
nombre text NOT NULL,
apellido text NOT NULL,
edad int NOT NULL,
numeroCamiseta int,
posicion varchar(30)
);
--MUESTRA TABLA CREADA
SELECT * FROM  futbolista;
--INGRESA VALORES A LOS CAMPOS
INSERT INTO futbolista(nombre,apellido,edad,numeroCamiseta,posicion)
VALUES ('Leonel','Messi',29,10,'Delantero' );

INSERT INTO futbolista(nombre,apellido,edad,numeroCamiseta,posicion)
VALUES ('Marco','Reus',26,11,'Extremo Izquierdo' );

INSERT INTO futbolista(nombre,apellido,edad,numeroCamiseta,posicion)
VALUES ('Sergio','Ramos',32,4,'Defensa' );

INSERT INTO futbolista(nombre,apellido,edad,numeroCamiseta,posicion)
VALUES ('Hernan','Barcps',31,16,'Delantero' );

INSERT INTO futbolista(nombre,apellido,edad,numeroCamiseta,posicion)
VALUES ('Antonio','Valencia',30,25,'Volante Derecho' );

-- CREA NUEVA COLUMNA NOT NUL
ALTER TABLE futbolista ADD COLUMN nacionalidad VARCHAR(20) DEFAULT FALSE 

--NOT NULL A UNA COLUMNA
ALTER TABLE futbolista ALTER COLUMN nacionalidad SET NOT NULL

--INGRESA VALORES A LA NUEVA COLUMNA:
--UPDATE INGRESA Y ACTUALIA DATOS
UPDATE futbolista SET nacionalidad = 'Argentino' WHERE id=1 
UPDATE futbolista SET nacionalidad = 'Aleman' WHERE id=2 
UPDATE futbolista SET nacionalidad = 'Español' WHERE id=3 
UPDATE futbolista SET nacionalidad = 'Argentino' WHERE id=4 
UPDATE futbolista SET nacionalidad = 'Ecuatoriano' WHERE id=5 

--------------------------------------------------------------------------
--SENTENCIAS ÚTILES:
--QUITA NOT NULL A UNA COLUMNA
ALTER TABLE futbolista ALTER COLUMN nacionalidad DROP NOT NULL

--BORRA UNA COLUMNA
ALTER TABLE futbolista DROP COLUMN nacionalidad

