# Obtener el puesto de un empleado.

CREATE VIEW reto3_1_060 AS
	SELECT e.id_empleado, e.nombre, p.nombre AS titulo
    FROM empleado AS e
    JOIN puesto AS p
    ON p.id_puesto = e.id_puesto
    ORDER BY e.id_empleado;
    
SELECT *
FROM reto3_1_060;

# Saber qué artículos ha vendido cada empleado.

ALTER VIEW reto3_2_060 AS
	SELECT v.id_articulo, a.nombre, e.id_empleado, e.nombre AS venderdor
    FROM venta AS v
    JOIN empleado AS e
    ON v.id_empleado = e.id_empleado
    JOIN articulo AS a
    ON v.id_articulo = a.id_articulo
    ORDER BY e.id_empleado;

SELECT *
FROM reto3_2_060;

# Saber qué puesto ha tenido más ventas.

ALTER VIEW reto3_3_060 AS
	SELECT p.nombre, COUNT(v.id_venta) AS ventas
    FROM puesto AS p
    JOIN empleado AS e
    ON p.id_puesto = e.id_puesto
    JOIN venta AS v
    ON v.id_empleado = e.id_empleado
    GROUP BY p.nombre
    ORDER BY ventas DESC;

SELECT *
FROM reto3_3_060;