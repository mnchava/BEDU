USE tienda;
/*
¿Qué artículos incluyen la palabra Pasta en su nombre?
¿Qué artículos incluyen la palabra Cannelloni en su nombre?
¿Qué nombres están separados por un guión (-) por ejemplo Puree - Kiwi?
¿Qué puestos incluyen la palabra Designer?
¿Qué puestos incluyen la palabra Developer?
*/
SELECT * FROM articulo WHERE nombre LIKE '%Pasta%';
SELECT * FROM articulo WHERE nombre LIKE '%Cannelloni%';
SELECT nombre FROM articulo WHERE nombre LIKE '%-%';
SELECT * FROM puesto WHERE nombre LIKE '%Designer%';
SELECT * FROM puesto WHERE nombre LIKE '%Developer%';
