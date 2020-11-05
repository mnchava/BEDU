# ¿Cuál es el nombre de los empleados que realizaron cada venta?

SELECT id_venta, venta.id_empleado
FROM venta
JOIN empleado
ON venta.id_empleado = empleado.id_empleado;

# ¿Cuál es el nombre de los artículos que se han vendido?

SELECT id_venta, articulo.nombre, articulo.id_articulo
FROM venta
JOIN articulo
ON articulo.id_articulo = venta.id_articulo;

# ¿Cuál es el total de cada venta?

SELECT id_venta, articulo.precio, articulo.id_articulo
FROM venta
JOIN articulo
ON articulo.id_articulo = venta.id_articulo;