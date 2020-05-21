
# CONSULTA CON CONDICIÓN #

SELECT * FROM usuarios WHERE email = 'giorc93@hotmail.com';

/*
OPERADORES DE COMPARACIÓN

Igual           =
Distinto        !=
Menor           <
Mayor           >
Menor igual     <=
Mayor igual     >=
Entre           beetween A and B
En              in
Nulo            is null
No Nulo         is not null
Como            like
No es como      not like
*/

# Ejemplos:

SELECT * FROM usuarios WHERE YEAR(fecha = 2019);
SELECT * FROM usuarios WHERE YEAR(fecha) > 2002 OR ISNULL(fecha); 

/*
OPERADORES LÓGICOS:

O       OR
Y       AND
NO      NOT
*/

/*
COMODINES:

Cualquier cantidad de caracteres: %
Un caracter desconocido: _
*/

SELECT email FROM usuarios WHERE apellidos LIKE '%a%' AND password = 'apolo123';

SELECT * FROM usuarios WHERE ((YEAR(fecha))%2 = 0);

SELECT * FROM usuarios WHERE LENGTH(nombre) > 3 AND YEAR(fecha) <= 2015; 

