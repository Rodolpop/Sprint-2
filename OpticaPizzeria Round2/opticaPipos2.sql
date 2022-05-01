
DROP DATABASE IF EXISTS opticapipo;

CREATE DATABASE opticaPipo;

USE opticaPipo;


CREATE TABLE IF NOT EXISTS proveedor (
 
 id_proveedor INT NOT NULL AUTO_INCREMENT,
 nombre VARCHAR (20) NOT NULL,
 calle VARCHAR (30) NOT NULL,
 numero INT (5) NOT NULL,
 piso INT (20) NOT NULL,
 puerta INT (20) NOT NULL,
 codigo_postal INT (30) NOT NULL,
 pais VARCHAR (45) NOT NULL,
 telefono INT (30) NOT NULL,
 fax INT (20),
 NIF INT (20) NOT NULL,
 PRIMARY KEY (id_proveedor)
 );
 
 
CREATE TABLE IF NOT EXISTS gafas ( 
id_gafas INT NOT NULL AUTO_INCREMENT, 
marca VARCHAR(20) NOT NULL, 
cristales_grad_izq VARCHAR(5) NOT NULL, 
cristales_grad_der VARCHAR(5) NOT NULL, 
cristales_color VARCHAR (10) NOT NULL, 
montura_color VARCHAR(10) NOT NULL, 
montura_flotante VARCHAR (5) NOT NULL, 
montura_pasta VARCHAR(5) NOT NULL, 
montura_metalica VARCHAR (5) NOT NULL,
precio FLOAT,
id_proveedor INT,
PRIMARY KEY (id_gafas),
FOREIGN KEY ( id_proveedor) 
REFERENCES proveedor (id_proveedor)
);
 
CREATE TABLE IF NOT EXISTS cliente (
id_cliente INT NOT NULL AUTO_INCREMENT, 
nombre VARCHAR(30) NOT NULL, 
direccion VARCHAR(100) NOT NULL,
teléfono INT(20) NOT NULL,
email VARCHAR(50) NOT NULL,
fecha_registro DATE, 
recomendador VARCHAR (45), 
fecha_venta DATE,
PRIMARY KEY (id_cliente)
);


CREATE TABLE IF NOT EXISTS venta (

 id_venta INT NOT NULL AUTO_INCREMENT,
 id_cliente INT NOT NULL, 
 id_gafas INT NOT NULL, 
 id_proveedor INT NOT NULL,
 fecha_venta DATETIME NOT NULL,  
 PRIMARY KEY (id_venta), 
 FOREIGN KEY ( id_cliente)
 REFERENCES cliente (id_cliente), 
 FOREIGN KEY (id_gafas) 
 REFERENCES gafas (id_gafas),
 FOREIGN KEY (id_proveedor)
 REFERENCES proveedor (id_proveedor)
 );
 
 
INSERT INTO proveedor (id_proveedor, nombre, calle, numero, piso, puerta, codigo_postal, pais, telefono, fax, NIF)
VALUES ('1', 'Versac S.A','Carretera Plumillo','221','0','0','2081','España', '5556666','21333555','658987456');
INSERT INTO proveedor (id_proveedor, nombre, calle, numero, piso, puerta, codigo_postal, pais, telefono, fax, NIF)
VALUES ('2', 'Lo S.L', 'Av.Coglan', '22', '0', '0', '020321','Portugal', '5558965', '21365542', '456369951');
INSERT INTO proveedor (id_proveedor, nombre, calle, numero, piso, puerta, codigo_postal, pais, telefono, fax, NIF)
VALUES ( '3', 'Sands', 'Calle Menorca', '5','3','2','08036','España','5559874', '214445585', '852357951');



INSERT INTO gafas ( marca, cristales_grad_izq, cristales_grad_der,cristales_color, montura_color, montura_flotante, montura_pasta, montura_metalica, precio, id_proveedor)
VALUES ('Arnette','No','Si','No','Verde','Si','No','Si','65','1');
INSERT INTO gafas ( marca, cristales_grad_izq, cristales_grad_der,cristales_color, montura_color, montura_flotante, montura_pasta, montura_metalica, precio, id_proveedor)
VALUES ('Oracle','Si','Si','Naranja','Negro','Si','No','No','43','2');
INSERT INTO gafas ( marca, cristales_grad_izq, cristales_grad_der,cristales_color, montura_color, montura_flotante, montura_pasta, montura_metalica, precio, id_proveedor)
VALUES ( 'Poo','No','No','No','No', 'Si', 'No', 'Si', '50','3');


INSERT INTO cliente (id_cliente, nombre, direccion,teléfono, email, fecha_registro, recomendador, fecha_venta)
VALUES ('1','Beto', 'Av. de las camelias 78','5555545' ,'beto@bing.es', ' 2019-12-31' , 'Natalio' , ' 2020-01-01' );
INSERT INTO cliente (id_cliente, nombre, direccion,teléfono, email, fecha_registro, recomendador, fecha_venta)
VALUES ('2','Natalio', 'Princesa Perfumo 123', '5555454', 'natalio@terra.com',' 2018-02-09','Moly', '2020-10-31');
INSERT INTO cliente (id_cliente, nombre, direccion,teléfono, email, fecha_registro, recomendador, fecha_venta)
VALUES ('3','Moly', 'Guateque 7', '55565647', ' moly@icq.com', '2014-06-23','beto', '2020-11-23');


INSERT INTO venta ( id_venta, id_cliente, id_gafas, id_proveedor, fecha_venta )
VALUES ('1','1','1','1', '2020-03-21');
INSERT INTO venta ( id_venta, id_cliente, id_gafas, id_proveedor, fecha_venta )
VALUES ('2','2','2','2', '2020-06-02');
INSERT INTO venta ( id_venta, id_cliente, id_gafas, id_proveedor, fecha_venta )
VALUES ('3','3', '3','3', '2020-10-12');





SELECT nombre, direccion FROM cliente;

SELECT * FROM venta WHERE id_proveedor ='2';

SELECT * FROM gafas WHERE precio<'100';





