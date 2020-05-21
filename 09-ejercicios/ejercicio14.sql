/* 
 *14 - Visualizar las unidades totales vendidas de cada coche a cada cliente
        Mostrando el nombre del producto, número de cliente y la suma de unidades.
 */

SELECT SUM(e.cantidad) AS 'Total Unidades', cl.nombre, c.modelo, cl.id FROM encargos e
INNER JOIN coches c ON c.id = e.coche_id
INNER JOIN clientes cl ON cl.id = e.cliente_id
GROUP BY e.coche_id, e.cliente_id;