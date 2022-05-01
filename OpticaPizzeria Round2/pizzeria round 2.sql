
DROP DATABASE Pizz;
CREATE DATABASE IF NOT EXISTS Pizz;
USE Pizz;


CREATE TABLE IF NOT EXISTS provincia (
	id_provincia INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(60) NOT NULL,
	PRIMARY KEY (id_provincia)
);

CREATE TABLE IF NOT EXISTS localidad (
	id_localidad INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(60) NOT NULL,
	localidad_provincia INT NOT NULL,
	PRIMARY KEY (id_localidad),
	FOREIGN KEY (localidad_provincia) REFERENCES provincia (id_provincia)
);

CREATE TABLE IF NOT EXISTS cliente (
	id_cliente INT NOT NULL AUTO_INCREMENT, 
	nombre VARCHAR(60) NOT NULL,
	apellido VARCHAR(60) NOT NULL,
	direccion VARCHAR(200) NOT NULL,
	cod_post INT NOT NULL,
	telefono INT NOT NULL,
	cliente_localidad INT NOT NULL,
	PRIMARY KEY (id_cliente),
	FOREIGN KEY (cliente_localidad) REFERENCES localidad(id_localidad)
);

CREATE TABLE IF NOT EXISTS empleado (
	id_empleado INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(60) NOT NULL,
	apellido VARCHAR(60) NOT NULL,
	NIF INT NOT NULL,
	telefono INT NOT NULL,
	trabajador ENUM('cocinero', 'repartidor'),
	PRIMARY KEY (id_empleado)
);

CREATE TABLE IF NOT EXISTS tienda (
	id_tienda INT NOT NULL AUTO_INCREMENT,
	direccion VARCHAR(200) NOT NULL,
	cod_post INT NOT NULL,
	tienda_localidad INT NOT NULL,
	tienda_empleado INT NOT NULL,
	PRIMARY KEY (id_tienda),
	FOREIGN KEY (tienda_localidad) REFERENCES localidad(id_localidad),
	FOREIGN KEY (tienda_empleado) REFERENCES empleado(id_empleado)
);

CREATE TABLE IF NOT EXISTS cat_pizza (
	id_cat_pizza INT NOT NULL AUTO_INCREMENT,
	nombre_categoria VARCHAR(60) NOT NULL,
	PRIMARY KEY (id_cat_pizza)
);


CREATE TABLE IF NOT EXISTS producto (
	id_producto INT NOT NULL AUTO_INCREMENT,
    tipo_producto ENUM ('pizza', 'empanada', 'bebida'),
	nombre VARCHAR(60),
	descripcion TEXT,
	img LONGBLOB,
	precio FLOAT,
    prod_cat_pizza INT NOT NULL,
	PRIMARY KEY (id_producto),
	FOREIGN KEY (prod_cat_pizza) REFERENCES cat_pizza(id_cat_pizza)
);

CREATE TABLE IF NOT EXISTS pedido (
	id_pedido INT NOT NULL AUTO_INCREMENT,
	pedido_hora DATETIME,
	tipo ENUM('domicilio', 'tienda'),
	pedido_tienda INT NOT NULL,
	pedido_cliente INT NOT NULL,
	precio_total FLOAT NOT NULL,
	PRIMARY KEY (id_pedido),
	FOREIGN KEY (pedido_tienda) REFERENCES tienda(id_tienda),
	FOREIGN KEY (pedido_cliente) REFERENCES cliente (id_cliente)
); 

CREATE TABLE IF NOT EXISTS producto_pedido (
	producto_pedido INT NOT NULL,
	pedido INT NOT NULL,
	FOREIGN KEY (producto_pedido) REFERENCES producto(id_producto),
	FOREIGN KEY (pedido) REFERENCES pedido(id_pedido)
);


CREATE TABLE IF NOT EXISTS entrega_domicilio (
	id_entrega_domicilio INT NOT NULL AUTO_INCREMENT,
	hora_entrega DATETIME,
	domicilio_empleado INT NOT NULL,
	domicilio_pedido INT NOT NULL,
	PRIMARY KEY (id_entrega_domicilio),
	FOREIGN KEY (domicilio_empleado) REFERENCES empleado(id_empleado),
	FOREIGN KEY (domicilio_pedido) REFERENCES pedido(id_pedido)
);


  

INSERT INTO provincia (nombre)
VALUES ('Barcelona');
INSERT INTO provincia (nombre)
VALUES ('Girona');
INSERT INTO provincia (nombre)
VALUES ('Lleida');


INSERT INTO localidad (nombre, localidad_provincia)
VALUES ('Barcelona', 1);
INSERT INTO localidad (nombre, localidad_provincia)
VALUES ('Girona', 2);
INSERT INTO localidad (nombre, localidad_provincia)
VALUES ('Lleida', 3);


INSERT INTO cliente (nombre, apellido, direccion, cod_post, telefono, cliente_localidad)
VALUES ('Pepo', 'Tik', 'Calle Umbrera 23', 08904, 944832637, 1);
INSERT INTO cliente (nombre, apellido, direccion, cod_post, telefono, cliente_localidad)
VALUES ('Mark', 'Denis', 'Calle Ritondo 32', 08900, 92019283, 2);
INSERT INTO cliente (nombre, apellido, direccion, cod_post, telefono, cliente_localidad)
VALUES ('Javi', 'Herrera', 'Calle Lok 3', 07900, 94111111, 3);


INSERT INTO empleado (nombre, apellido, NIF, telefono, trabajador)
VALUES ('Juan', 'Sin', 3928939, 911110233, 'cocinero');
INSERT INTO empleado (nombre, apellido, NIF, telefono, trabajador)
VALUES ('Tito', 'Mrlchor', 1010101, 93333333, 'repartidor');
INSERT INTO empleado (nombre, apellido, NIF, telefono, trabajador)
VALUES ('Maria', 'Margdalena', 9384622, 92222222, 'repartidor');


INSERT INTO tienda (direccion, cod_post, tienda_localidad, tienda_empleado)
VALUES ('Calle Mercenario 4', 87777, 1, 3);
INSERT INTO tienda (direccion, cod_post, tienda_localidad, tienda_empleado)
VALUES ('Calle Tertion 3', 84444, 2, 1);
INSERT INTO tienda (direccion, cod_post, tienda_localidad, tienda_empleado)
VALUES ('Calle Wallabi 23', 83333, 3, 2);


INSERT INTO cat_pizza ( nombre_categoria)
VALUES ('Categoria 1');
INSERT INTO cat_pizza ( nombre_categoria)
VALUES ('Categoria 2');
INSERT INTO cat_pizza ( nombre_categoria)
VALUES ('Categoria 3');


INSERT INTO producto (nombre, descripcion , img , precio, prod_cat_pizza)
VALUES ('Bebida', 'Sin alcohol', 'bebida1.img', 3, 1);
INSERT INTO producto (nombre, descripcion , img , precio, prod_cat_pizza)
VALUES ('Bebida', 'cerveza', 'bebida2.img', 3.90, 1);
INSERT INTO producto (nombre, descripcion , img , precio, prod_cat_pizza)
VALUES ('Pizza_margarita', 'Muzzarella y tomate', 'pizza1.img', 9.99, 1);
INSERT INTO producto (nombre, descripcion , img , precio, prod_cat_pizza)
VALUES ('pizza_fugazza', 'Cebolla y Muzzarella', 'pizza2.img', 12, 2);


INSERT INTO pedido (pedido_hora, tipo, pedido_tienda, pedido_cliente, precio_total)
VALUES ('2021-02-8 19:00:59', 'tienda', 1, 1, 15.99);
INSERT INTO pedido (pedido_hora, tipo, pedido_tienda, pedido_cliente, precio_total)
VALUES ('2021-02-8 20:00:00', 'tienda', 3, 2, 14.99);
INSERT INTO pedido (pedido_hora, tipo, pedido_tienda, pedido_cliente, precio_total)
VALUES ('2021-02-8 21:00:00', 'domicilio', 3, 3, 12.77);


INSERT INTO producto_pedido (producto_pedido, pedido)
VALUES (1, 2);
INSERT INTO producto_pedido (producto_pedido, pedido)
VALUES (2, 2);


INSERT INTO entrega_domicilio (hora_entrega, domicilio_empleado, domicilio_pedido)
VALUES ('2021-02-8 19:30:00', 1, 1);
INSERT INTO entrega_domicilio (hora_entrega, domicilio_empleado, domicilio_pedido)
VALUES ('2021-02-8 20:30:00', 2, 3);
INSERT INTO entrega_domicilio (hora_entrega, domicilio_empleado, domicilio_pedido)
VALUES ('2021-02-8 21:30:00', 2, 1);


SELECT nombre, direccion FROM cliente;

SELECT * FROM tienda WHERE localidad ='2';

SELECT * FROM pedido WHERE precio<'5';
