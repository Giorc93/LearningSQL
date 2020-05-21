/* 
 *20 - Seleccionar el grupo en el que trabaja el vendedor con mayor salario y 
    mostrar el nombre del grupo.
 */

SELECT g.nombre AS 'NOMBRE GRUPO', CONCAT(v.nombre, ' ', apellidos) 'NOMBRE VENDEDOR', v.sueldo AS 'SUELDO' FROM vendedores v
INNER JOIN grupos g ON g.id = v.grupo_id
ORDER BY v.sueldo DESC
LIMIT 1;
##
SELECT * FROM grupos WHERE id =
    (SELECT grupo_id FROM vendedores ORDER BY sueldo DESC LIMIT 1);
##
SELECT * FROM grupos WHERE id =
    (SELECT grupo_id FROM vendedores WHERE sueldo =
        (SELECT MAX(sueldo) FROM vendedores)
);




