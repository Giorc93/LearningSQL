/* 
 *24 - Listar los encargos con el nombre del coche, el nombre del cliente y el nombre de la ciudad del cliente
        unicamente cuando sean de barcelona.
 */

SELECT e.id AS 'ID ENCARGO', c.modelo AS 'MODELO', cl.nombre AS 'CLIENTE', cl.ciudad AS 'CIUDAD' FROM encargos e
INNER JOIN coches c ON c.id = e.coche_id
INNER JOIN clientes cl ON cl.id = e.cliente_id
WHERE ciudad = 'Barcelona';