
# MODIFICAR FILAS/ACTUALIZAR DATOS #

UPDATE usuarios SET fecha=CURDATE() WHERE nombre = 'Roberto'; # SIEMPRE ANTES DE EJECUTAR UN UPDATE UTILIZAR LA FUNCIÓN WHERE #
UPDATE usuarios SET apellidos='Gonzales' WHERE nombre = 'Roberto';

UPDATE entradas SET usuario_id=2 WHERE id=4;