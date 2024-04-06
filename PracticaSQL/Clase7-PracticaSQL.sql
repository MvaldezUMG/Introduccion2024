-- DDL Data Definition Language
-- Crear base de datos.
CREATE DATABASE escuela;
-- Borrar base de datos
DROP DATABASE escuela;

CREATE DATABASE escuela;
-- Vamos a indicar que base de datos usar
USE escuela;

-- Crea tabla
CREATE TABLE alumno (
  carnet VARCHAR(20) NOT NULL,
  primer_nombre VARCHAR(100) NOT NULL,
  primer_apellido VARCHAR(100) NOT NULL,
  fecha_nacimiento DATE NOT NULL,
  genero VARCHAR(10),
  telefono VARCHAR(10) NOT NULL,
  correo_electronico VARCHAR(100) NOT NULL
);

-- Borrar tabla
-- DROP TABLE alumno;

-- Comando DML (Data Manipulation Language)

-- INSERT para insertar datos
-- El formato de fecha debe corresponder al idioma de la 
-- compu
INSERT INTO alumno (carnet, primer_nombre,primer_apellido,
                    fecha_nacimiento, genero, telefono,
                    correo_electronico) 
				VALUES  ('0907-24-2263',  'Angel', 'Mejia',
                         '2024-01-01', 'Masculino', '40301921',
                         'amejia@miumg.edu.gt');

INSERT INTO alumno (carnet, primer_nombre,primer_apellido,
                    fecha_nacimiento, genero, telefono,
                    correo_electronico) 
				VALUES  ('0907-24-16823',  'Diego', 'Catalan',
                         '1999-01-01', 'Masculino', '4029029',
                         'dcatalan@miumg.edu.gt');

INSERT INTO alumno (carnet, primer_nombre,primer_apellido,
                    fecha_nacimiento, genero, telefono,
                    correo_electronico) 
				VALUES  ('0907-24-1568',  'Jonatan', 'Figueroa',
                         '2005-01-01', 'Masculino', '9090909',
                         'jfigueroa@miumg.edu.gt'),
						('0907-24-1953',  'Saul', 'Gonzales',
                         '1999-01-01', 'Masculino', '32920929',
                         'sgonzales@miumg.edu.gt'),
						('0907-24-90932',  'Jasson', 'Garcia',
                         '2003-01-01', 'Masculino', '3292290',
                         'jgarcia@miumg.edu.gt');
						

-- CONSULTAR con SELECT 
SELECT * FROM alumno;

-- ELIMINADOS TODOS LOS REGISTRO DE LA TABLA
TRUNCATE TABLE alumno;

-- Agregar la llave primaria a la tabla
ALTER TABLE alumno ADD CONSTRAINT PRIMARY KEY (carnet);
-- Seleccionar todos los campos
SELECT * FROM escuela.Alumno;
-- Seleccionar solo los campos indicados
SELECT Carnet, primer_nombre, primer_apellido FROM Alumno;
-- Buscar entre registros
SELECT Carnet, primer_nombre
  FROM Alumno
 WHERE primer_nombre = 'Saul';
-- Inician en Go
SELECT Carnet, primer_nombre, primer_apellido
  FROM Alumno
 WHERE primer_apellido LIKE ('Go%');
 -- Terminan en S
SELECT Carnet, primer_nombre, primer_apellido
  FROM Alumno
 WHERE primer_apellido LIKE ('%s');

-- Actualizar datos
-- Tambien podemos usar el nombre de la base datos y la tabla para acceder a ella.
-- ADVERTENCIA: Si no se coloca where se actualizaran todos los registros
-- en este caso no es funcional porque MYSQL Workbench tiene activo el modo protegido.
UPDATE escuela.Alumno
   SET telefono = '30401020';

UPDATE escuela.Alumno
   SET telefono = '30401020'
 WHERE carnet = '0907-24-1568';
 
 UPDATE alumno
   SET telefono ='3023023032'
WHERE primer_apellido LIKE ('G%');

DELETE FROM alumno
WHERE carnet = '0907-24-1568';

-- En where puede utilizar igual (=), Diferente (<>)
-- mayor que (>), menor que (<)

CREATE TABLE notas(
  carnet VARCHAR(20) not null,
  clase VARCHAR(100) not null,
  parcial int,
  nota int
);
-- Numeros no llevan apostrofo solamente los textos
INSERT INTO notas (carnet, clase, parcial, nota) 
			VALUES ('0907-24-1953', 'Introduccion', 1, 15),
				   ('0907-24-90932', 'Introduccion', 1, 9),
                   ('0907-24-2263', 'Introduccion', 1, 10);

-- Con numeros y fechas se puede comparar mayor y menor que
SELECT * 
FROM notas
WHERE nota >= 10;


