/* 
5 - Mostrar todos los vendedores con su nombre y el número de días en el concesionario
 */

SELECT nombre, apellidos, DATEDIFF(CURDATE(),fecha) FROM vendedores;

