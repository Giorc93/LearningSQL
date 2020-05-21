/* 
 *6- Visualizar el nombre y los apellidos de los vendedores en una sola columna, su fecha de registro
    y el día de la semana en que se registraron.
 */


SELECT CONCAT(nombre, ' ', apellidos) AS NombreCompleto, fecha, DAYNAME(fecha) FROM vendedores;