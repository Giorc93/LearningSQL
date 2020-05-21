/* 
 * 2 - Modificar la comisión de los vendedores y ponerla al 2% cuando ganan más de 50000;
 */

UPDATE vendedores SET comision= 2 WHERE sueldo > 50000;