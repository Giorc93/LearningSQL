/* 
 * 7- Mostrar el nombre y el salario de los vendedores con cargo de 'Ayudante de tienda';
 */

SELECT CONCAT(nombre, ' ', apellidos), sueldo, FROM vendedores WHERE cargo='Ayudante en Tienda';
