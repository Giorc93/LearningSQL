/* 
 *27 - Visualizar los nombre de los clientes y la cantidad de encargos realizados incluyendo los que no hayan realizado encargos.
 */

SELECT cl.nombre AS 'CLIENTE', SUM(e.id) AS 'CANT. COCHES' FROM clientes cl
LEFT JOIN encargos e ON e.cliente_id = cl.id
GROUP BY 1;