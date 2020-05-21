/* 
 *17 - Obtener un listado con los encargos realizados por el cliente 'Fruteria Antonia Inc' 
        con el nombre del cliente y marca del coche y la cantidad de cada uno
 */


SELECT * FROM encargos WHERE cliente_id =
(SELECT id from clientes WHERE nombre = 'Fruteria Antonia Inc');

SELECT e.id AS 'Numero Encargo', cl.nombre AS 'Nombre Cliente' , c.modelo AS 'Marca', SUM(e.cantidad) FROM encargos e
INNER JOIN clientes cl ON cl.id = e.cliente_id
INNER JOIN coches c ON c.id = e.coche_id
WHERE e.cliente_id =
(SELECT id FROM clientes WHERE nombre = 'Fruteria Antonia Inc')
GROUP BY c.modelo;