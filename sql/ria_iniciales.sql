DROP DATABASE IF EXISTS ria_iniciales;
CREATE DATABASE ria_iniciales;

USE ria_iniciales;

CREATE TABLE clientes(
	nombre varchar(50) NOT NULL PRIMARY KEY,
	ap_paterno varchar(50) NOT NULL,
	ap_materno varchar(50) NOT NULL,
	email varchar(50) NOT NULL,
	direccion varchar(50) NOT NULL
)ENGINE = InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE productos(
	nombre_prod varchar(50)	NOT NULL PRIMARY KEY,
	tipo varchar(50) NOT NULL,
	descripcion varchar(50) NOT NULL,
	marca varchar(50) NOT NULL,
	origen varchar (15) NOT NULL
)ENGINE = InnoDB DEFAULT CHARSET=latin1;

INSERT INTO clientes(nombre,ap_paterno,ap_materno,email,direccion)
VALUES ('Alexis','Hernandez','Perez','alexishdez@gmail','San Miguel Regla'),
('Kevin','Rendon','Calva','kevin@gmail','Plutarco'),
('Estefania','Garcia','Resendiz','fanny@gmail','Cuatepec');

INSERT INTO productos(nombre_prod,tipo,descripcion,marca,origen)
VALUES ('Tocino','Alimento','Tocino de cerdo','FUD','Hecho en Mexico'),
('Crema','Alimento','Crema de leche','Nestle','Hecho en Mexico'),
('Desodorante','Belleza','Frescura por mas tiempo','Axe','Francia');

SHOW TABLES;

SELECT * FROM clientes;

DESCRIBE clientes;

SELECT * FROM productos;

DESCRIBE productos;

CREATE USER 'ria'@'localhost' IDENTIFIED BY 'ria2019';
GRANT ALL PRIVILEGES ON ria_iniciales.* TO 'ria'@'localhost';
FLUSH PRIVILEGES;