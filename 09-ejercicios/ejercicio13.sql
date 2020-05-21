/* 
 *13 - Obtener la media de sueldos entre todos los vendedores por grupo.
 */

SELECT AVG(v.sueldo), g.nombre FROM vendedores v
INNER JOIN grupos g ON g.id = v.grupo_id
GROUP BY grupo_id;
