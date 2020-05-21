/* 
 * Obtener los vendedores con 2 o más clientes
 */

SELECT * FROM vendedores WHERE id IN
    (SELECT vendedor_id FROM clientes GROUP BY vendedor_id HAVING COUNT(vendedor_id) >= 2);