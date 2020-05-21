/*
CONSULTAS MULTITABLAS
Consultas que sirven para consultar varias tablas en una sola sentencia
*/

# Mostrar las entradas con el nombre del autor y el nombre de las categorias #

SELECT e.id, e.titulo, u.nombre, c.nombre FROM entradas e, usuarios u , categorias c WHERE e.usuario_id = u.id AND e.categoria_id = c.id;

SELECT c.nombre, COUNT(categoria_id) FROM categorias c, entradas e WHERE e.categoria_id = c.id GROUP BY categoria_id;

SELECT u.email, COUNT(usuario_id) FROM usuarios u, entradas e WHERE e.usuario_id = u.id GROUP BY usuario_id;

# INNERJOIN #

SELECT u.email, COUNT(usuario_id) FROM entradas e 
INNER JOIN usuarios u ON e.usuario_id = u.id GROUP BY usuario_id;

SELECT u.email, COUNT(usuario_id) FROM entradas e 
LEFT JOIN usuarios u ON e.usuario_id = u.id GROUP BY usuario_id;

SELECT u.email, COUNT(usuario_id) FROM entradas e 
RIGHT JOIN usuarios u ON e.usuario_id = u.id GROUP BY usuario_id;