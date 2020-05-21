/* 
 *30 - Mostrar los datos del vendedor con más antiguedad en el concesionario.
 */

datos vendedor - vendedores
diferencia de dias - vendedores


SELECT nombre, apellidos, MAX(DATEDIFF(CURDATE(), fecha_alta)) FROM vendedores GROUP BY id ORDER BY 3 DESC LIMIT 1;

# Obtener una lista de los coches con más unidades vendidas

SELECT * FROM coches WHERE id IN
    (SELECT coche_id FROM encargos ORDER BY cantidad ASC)LIMIT 3;