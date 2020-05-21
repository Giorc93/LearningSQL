/* 
 *18 - Listar los clientes que han hecho algún encargo del coche 'Mercedes Ranchera'
 */

SELECT cl.nombre AS 'CLIENTE', c.modelo AS 'MODELO' FROM encargos e
INNER JOIN clientes cl ON cl.id = e.cliente_id
INNER JOIN coches c ON c.id = e.coche_id
WHERE e.coche_id = 
(SELECT id FROM coches WHERE modelo = 'Mercedes Ranchera');
##
SELECT * FROM clientes WHERE id IN
    (SELECT cliente_id FROM encargos WHERE coche_id IN
        (SELECT id FROM coches WHERE modelo = 'Mercedes Ranchera')
);