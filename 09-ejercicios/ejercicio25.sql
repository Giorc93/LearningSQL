/* 
 *25 - Obtener una lista de los nombres de los clientes con el importe de sus encargos acumulado
 */

nombre clientes
id coches
cantidad
precio


SELECT cl.nombre AS 'CLIENTE', SUM(c.precio*e.cantidad) AS 'IMPORTE TOTAL' FROM encargos e
INNER JOIN clientes cl ON cl.id = e.cliente_id
INNER JOIN coches c ON c.id = e.coche_id
GROUP BY cl.id
ORDER BY 2 ASC;
