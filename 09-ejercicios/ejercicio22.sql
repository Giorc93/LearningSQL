/* 
 *22 - Obtener un listado de clientes mostrando el id y el nombre del cliente y luego 
        mostrar también el número de vendedor id y su nombre.
 */

SELECT cl.nombre AS 'CLIENTE', cl.id AS 'ID CLIENTE', CONCAT(v.nombre, ' ', v.apellidos) AS 'VENDEDOR', v.id AS 'ID VENDEDOR' FROM vendedores v
INNER JOIN clientes cl on v.id = cl.vendedor_id;

SELECT cl.nombre AS 'CLIENTE', cl.id AS 'ID CLIENTE', CONCAT(v.nombre, ' ', v.apellidos) AS 'VENDEDOR', v.id AS 'ID VENDEDOR'
FROM vendedores v, clientes cl
WHERE v.id = cl.vendedor_id;