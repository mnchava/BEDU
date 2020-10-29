/*
¿Cuántos registros hay por cada uno de los puestos?
¿Cuánto dinero se paga en total por puesto?
¿Cuál es el número total de ventas por vendedor?
¿Cuál es el número total de ventas por artículo?
*/

SELECT COUNT(id_puesto), nombre FROM puesto GROUP BY nombre;
SELECT SUM(salario), nombre FROM puesto GROUP BY nombre;
SELECT COUNT(id_venta), id_empleado FROM venta GROUP BY id_empleado;
SELECT COUNT(id_venta), id_articulo FROM venta GROUP BY id_articulo;

/*
los puestos mas ocupados 
los puestos peor pagados
10 mejores vendedores 
20 articulos peor vendidos
*/

SELECT COUNT(id_puesto) as cantidad, nombre FROM puesto GROUP BY nombre ORDER BY cantidad DESC;
SELECT nombre, salario FROM puesto ORDER BY salario;
SELECT id_empleado, count(*) as ventas FROM venta GROUP BY id_empleado ORDER BY ventas DESC LIMIT 10;
SELECT id_articulo, count(*) as ventas FROM venta GROUP BY id_articulo ORDER BY ventas LIMIT 20;