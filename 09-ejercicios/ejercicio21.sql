/* 
 *21 - Obtener el nombre y las ciudades de los clientes que tengan encargos de 3 o más unidades
 */

SELECT cl.nombre, cl.ciudad FROM clientes cl
INNER JOIN encargos e ON cl.id = e.cliente_id
GROUP BY cl.id
HAVING SUM(e.cantidad) >= 3;

SELECT nombre, ciudad FROM clientes WHERE id IN
    (SELECT cliente_id FROM encargos WHERE cantidad >= 3);