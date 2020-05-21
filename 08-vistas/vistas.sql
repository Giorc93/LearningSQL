/* 
 * VISTAS
    Consulta almacenada en la base de datos que se utiliza como una tabla virtual.
    No almacena datos si no que utiliza asociaciones y los datos originales de las tablas
    de forma que siempre se mantiene actualizada
 */

# HACER UNA VISTA #

CREATE VIEW entrada_nombres AS
SELECT e.titulo AS 'Titulo', c.nombre AS 'Categoria', u.nombre AS 'Usuario' FROM entradas e
INNER JOIN categorias c ON e.categoria_id = c.id
INNER JOIN usuarios u ON e.usuario_id = u.id;