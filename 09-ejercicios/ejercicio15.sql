/* 
 *15 - Mostrar los dos clientes con mayor número de pedidos y mostrar cuantos pedidos han hecho.
 */

SELECT cl.nombre AS 'CLIENTE', SUM(e.cantidad) AS 'NUMERO DE UNIDADES' FROM encargos e
INNER JOIN clientes cl ON cl.id = e.cliente_id
GROUP BY cliente_id
ORDER BY cantidad DESC 
LIMIT 2;


SELECT cl.nombre, SUM(e.cantidad) FROM encargos e
INNER JOIN clientes cl ON cl.id=e.cliente_id
GROUP BY cl.nombre;