SELECT * FROM tienda;

SELECT nombre FROM producto;

SELECT nombre,precio FROM producto;

SELECT codigo,nombre,precio,codigo_fabricante FROM producto;

SELECT nombre,precio, precio*0.88 AS precio_euros FROM producto;

SELECT nombre AS "nombre de producto",  precio AS euros, precio*0.88 AS dolares FROM producto;

SELECT upper(nombre),precio FROM producto;

SELECT lower(nombre),precio FROM producto;

SELECT nombre, upper(substring(nombre,1,2) ) FROM fabricante;

SELECT nombre, ROUND(precio,0) FROM producto;

SELECT nombre,TRUNCATE(precio,0) FROM producto;

SELECT codigo_fabricante FROM producto;

SELECT distinct codigo_fabricante FROM producto;

SELECT nombre FROM fabricante ORDER BY nombre ASC;

SELECT nombre FROM fabricante ORDER BY nombre DESC;

SELECT nombre, precio FROM producto ORDER BY nombre ASC, precio DESc;

SELECT * FROM fabricante LIMIT 5;

SELECT * FROM fabricante WHERE codigo BETWEEN 3 AND 4;

SELECT nombre, precio FROM producto ORDER BY precio ASC LIMIT 1;

SELECT nombre, precio FROM producto ORDER BY precio DESC LIMIT 1;

SELECT nombre FROM producto WHERE codigo_fabricante = 2;

SELECT nombre FROM producto WHERE nombre LIKE "%Port%";

SELECT p.nombre, p.precio, f.nombre FROM producto p JOIN fabricante f ON p.codigo_fabricante=f.codigo; 

SELECT p.codigo, p.nombre, f.codigo,f.nombre FROM producto p JOIN fabricante f ON p.codigo_fabricante=f.codigo OR p.codigo_fabricante=f.nombre; 

SELECT p.nombre, min(p.precio), f.nombre AS nombre_fabricante FROM producto p JOIN fabricante f ON p.codigo_fabricante=f.codigo;

SELECT p.nombre, max(p.precio), f.nombre AS nombre_fabricante FROM producto p JOIN fabricante f ON p.codigo_fabricante=f.codigo;



