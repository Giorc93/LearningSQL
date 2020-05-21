/* 
CREAR TABLA

Tipo de datos de las columnas:
int(n° de cifras)                   ENTERO  (maximo 255)
integer(n° de cifras)               ENTERO  (maximo 4294967295)
varchar(n° de caracteres)           STRING/ALFANUMÉRICO (maximo 255)
char(n° de caracteres)              STRING/ALFANUMÉRICO (maximo 255)
float(n° de cifras, n° decimales)   DECIMAL/COMA FLOTANTE
date, time, timestamp

STRINGS MÁS GRANDES:

TEXT            (65535 caracteres max.)
MEDIUM TEXT     (16 millones caracteres max.)
LONGTEXT        (4 billones caracteres max

ENTEROS MÁS GRANDES: 

MEDIUMINT
BIGINT
 */
 
/*Definición de una tabla. Se define nombre de columna, tipo y carácteristicas de cada uno.*/
/*Restricciones de identidad*/

CREATE TABLE usuarios(
id          int(11) auto_increment, /*auto_increment aumenta de forma automática el primary key*/
nombre      varchar(100) default'Paramtero', /*default 'par': Por defecto éste campo tendrá éste dato 'par'*/
apellidos   varchar(255) not null, /*not null: Siempre debe haber un dato en éste campo. null: Puede tener campos vacíos*/,
email       varchar(100),
password    varchar(255)
CONSTRAINT pk_usuarios PRIMARY KEY(id)
);




CREATE TABLE usuarios(
id          int(11) auto_increment, 
nombre      varchar(100) default'Paramtero',
apellidos   varchar(255) not null, 
email       varchar(100),
password    varchar(255),
CONSTRAINT pk_usuarios PRIMARY KEY(id)
);

