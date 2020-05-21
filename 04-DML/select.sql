# MOSTRAR TODOS LOS REGISTROS DE UNA TABLA/FILAS DE UNA TABLA #

SELECT email, apellidos, nombre FROM usuarios;

# MOSTRAR TODOS LOS CAMPOS #

SELECT * FROM usuarios;

# OPERADORES ARITMETICOS #

SELECT email, (4+7) AS 'operacion' FROM usuarios;       # Muestra el resultado de la operación, pone la operación como nombre de la columna, si se desea poner un alias a la columna se utiliza AS nombre.

SELECT email FROM usuarios ORDER BY email;      # Ordenar por orden alfabético DESC orden descendente #

SELECT id, email, (id+3) AS 'operacion' FROM usuarios; # Hacer operaciones y mostrar columna con ese nombre #

# FUNCIONES MATEMATICAS #

SELECT abs(-7) AS 'operacion' FROM usuarios;    # Valor absoluto #

SELECT ceil(32.12) AS 'operacion' FROM usuarios; # Redondeo, también se puede usar floor para redondear hacia abajo y round con un segundo parámetro que indique cantidad de decimales #

# FUNCIONES DE TEXTO #

SELECT UPPER(nombre) FROM usuarios; # Transforma a mayúsculas, LOWER transforma a minúsculas #

SELECT TRIM(nombre) FROM usuarios; # Elimina espacios antes y después #

SELECT LENGTH(nombre) FROM usuarios; # Cuenta el número de caracteres del campo #

SELECT CONCAT(nombre, ' ', apellidos) FROM usuarios; # Concatena el texto de los campos indicados #

SELECT LENGTH(CONCAT(nombre)) FROM usuarios; # Es posible invocar funciones dentro de otras #

# FUNCIONES DE FECHA #

SELECT fecha, CURDATE() AS 'Fecha_Actual' FROM usuarios; # Muestra la fecha actual en una columna 'Fecha_Actual'

SELECT DATEDIFF(fecha, CURDATE()) AS 'Diferencia' FROM usuarios; # Muestra la diferencia en días de la fecha en la base de datos a la fecha actual #

SELECT DAYNAME(fecha) AS 'Dia' FROM usuarios; # Muestra el día de la fecha en el campo. Puede utilizarse DAYOFMONTH, DAYOFWEEK,DAYOFYEAR #

SELECT YEAR(fecha) AS 'Año' FROM usuarios; # Muestra el año de la fecha en el campo. Puede utilizarse MONTH, DAY, HOUR, MINUTE, SECOND... #

SELECT CURTIME() AS 'Hora_Actual' FROM usuarios; # Muestra la hora actual #

SELECT SYSDATE() AS 'Hora_Sistema' FROM usuarios; # Muestra le fecha del sistema #

SELECT DATE_FORMATE(fecha, '%d-%m-%Y') AS 'Fecha_Formato' FROM usuarios; # Cambia el formato de la fecha al formato indicado en el segundo parámetro #

# FUNCIONES GENERALES #

SELECT ISNULL(apellidos) FROM usuarios; # Comprueba si alguno de los campos en la columna apellidos es nulo y devuelve 0 o 1. #

SELECT STRCMP(apellidos, nombre) FROM usuarios; # Comprueba si existen dos campos iguales, si existen campos iguales devuelve 0(false) si son diferentes devuelve 1(true). #

SELECT VERSION() FROM usuarios; # Comprueba la versión de MySQL #

SELECT USER() FROM usuarios; # Arroja el usuario que se tiene a nivel de SGBD #

SELECT DISTINCT USER() FROM usuarios; # DISTINCT arroja sólo los resultados que sean diferentes, resultados que se repitan los omite #

SELECT DISTINCT DATABASE() FROM usuarios; # Arroja la base de datos que se está usando #

SELECT IFNULL(apellidos, 'Este campo esta vacio') FROM usuarios; # Comprueba si algún campo de la columna está vacío e introduce el valor del segundo parámetro #
