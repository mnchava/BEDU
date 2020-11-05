# ¿Cuál es el nombre de los empleados cuyo sueldo es menor a $10,000?

SELECT nombre
FROM empleado
WHERE id_puesto
IN (SELECT id_puesto FROM puesto WHERE salario < 10000);

# ¿Cuál es la cantidad mínima y máxima de ventas de cada empleado?

SELECT id_empleado, id_articulo, COUNT(id_articulo) as ventas
FROM venta
GROUP BY id_empleado, id_articulo
ORDER BY id_empleado;

# ¿Cuáles claves de venta incluyen artículos cuyos precios son mayores a $5,000?

SELECT id_venta
FROM venta
WHERE id_articulo IN(
	SELECT id_articulo
    FROM articulo
    WHERE precio > 5000
)
ORDER BY id_venta;