/* 
 *23 - Listar todos los encargos realizados con la marca del coche y el nombre del cliente.
 */

SELECT e.id AS 'ID ENCARGO', c.modelo AS 'MODELO', cl.nombre 'CLIENTE' FROM encargos e, clientes cl, coches c
WHERE cl.id = e.cliente_id AND c.id = e.coche_id;

