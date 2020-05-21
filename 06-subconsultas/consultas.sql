/*
SUBCONSULTAS:
-Consultas que se ejecutan dentro de otras
-Consisten en utilizar los resultados de la subconsulta para operar en la consulta principal.
-Se hace gracias a emplear las claves ajenas FOREIGN KEY
*/

SELECT * FROM usuarios WHERE id IN (SELECT usuario_id FROM entradas); # Arroja los usuarios que tienen un id existente en la tabla de entradas (Usuarios que han creado entradas)

SELECT * FROM usuarios WHERE id NOT IN (SELECT usuario_id FROM entrada); # Arroja usuarios que no tienen entrada #

SELECT * FROM usuarios WHERE titulo IN(SELECT * FROM entradas WHERE titulo LIKE '%GTA%'); 

SELECT titulo FROM entradas WHERE categorias_id IN (SELECT id FROM categorias WHERE nombre='Deportes');

SELECT categoria_id FROM entradas GROUP BY categoria_id HAVING COUNT(categoria_id) >= 4;

SELECT nombre FROM categorias WHERE id IN (SELECT categoria_id FROM entradas GROUP BY categoria_id HAVING COUNT(categoria_id) >= 4);

SELECT usuario_id FROM entradas GROUP BY DAYNAME(fechas);

SELECT usuario_id FROM entradas WHERE DAYNAME(fecha) = 'Tuesday' IN (SELECT usuario_id FROM entradas GROUP BY DAYNAME(fecha))

SELECT * FROM usuarios WHERE id IN (SELECT usuario_id FROM entradas WHERE DAYNAME(fecha) = 'Wednesday');

SELECT usuario_id FROM entradas GROUP BY usuario_id ORDER BY COUNT(id) DESC LIMIT 1;

SELECT nombre, apellidos FROM usuarios WHERE id = (SELECT usuario_id FROM entradas GROUP BY usuario_id ORDER BY COUNT(id) DESC LIMIT 1);