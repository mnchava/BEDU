/*
¿Cuál es el promedio de salario de los puestos?
¿Cuántos artículos incluyen la palabra Pasta en su nombre?
¿Cuál es el salario mínimo y máximo?
¿Cuál es la suma del salario de los últimos cinco puestos agregados?
*/
SELECT round(avg(salario), 2) AS Promedio from puesto;
SELECT count(nombre) from articulo WHERE nombre LIKE '%Pasta%';
SELECT min(salario) AS Minimo, max(salario) AS Maximo from puesto;
SELECt sum(salario) from (SELECT * FROM puesto ORDER BY salario LIMIT 5) AS salario5;