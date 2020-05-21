/* 
 *16 - Obtener un listado de clientes atendidos por el vendedor DAVID LOPEZ.
 */

SELECT * FROM clientes WHERE vendedor_id = 
(SELECT id FROM vendedores WHERE nombre = 'David' AND apellidos = 'Lopez');
