# CONSULTAS DE AGRUPAMIENTO #

SELECT titulo FROM entradas GROUP BY categoria_id;

SELECT COUNT(titulo) AS 'Entradas', categoria_id FROM entradas GROUP BY categoria_id; # Agrupar los titulos por categoria_id de la tabla entradas y contar el número de titulos por categoria #

# CONSULTAS DE AGRUPAMIENTO CON CONDICIONES (HAVING) #

SELECT COUNT(titulo) AS 'Entradas', categoria_id FROM entradas GROUP BY categoria_id HAVING COUNT(titulo) > 3;

/*
AVG     Sacar la media
COUNT   Cuenta el número de elementos
MAX     Valor máximo del grupo
MIN     Valor mínimo del grupo
SUM     Suma los valores del grupo
*/

SELECT AVG(titulo) AS 'Media' FROM entradas;
SELECT MAX(id) AS 'Maximo id', titulo FROM entradas;
SELECT 

