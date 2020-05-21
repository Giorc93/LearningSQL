/* 
 * Listar los vendedores y el número de clientes que tienen, tengan o no clientes
   Mostrar el número de clientes;
 */

SELECT CONCAT(v.nombre, ' ',v.apellidos) AS 'VENDEDOR', COUNT(cl.vendedor_id) AS 'NUMERO CLIENTES' FROM encargos e
INNER JOIN clientes cl ON cl.id = e.cliente_id
RIGHT JOIN vendedores v ON v.id = cl.vendedor_id
GROUP BY v.id;
