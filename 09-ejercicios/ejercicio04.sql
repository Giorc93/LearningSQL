/* 
 *4- Sacar todos los vendedores cuya fecha de alta sea posterior al 1 de Julio de 2018; 
 */

SELECT nombre, apellidos FROM vendedores WHERE fecha_alta >= '2018-07-01';

UPDATE vendedores SET fecha_alta = '2017-04-03';

