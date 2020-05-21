# INSERTAR NUEVOS REGISTROS (INSERT BÁSICO) #

INSERT INTO usuarios VALUES(null,'Geovanny','Ramirez','giorc93@hotmail.com','apolo123','2020-03-30')
INSERT INTO usuarios VALUES(null,'Andres','Cabarique','giorc9-3@hotmail.com','apolo456','2020-03-30')
INSERT INTO usuarios VALUES(null,'Apolo','Ramirez','Apolo20@hotmail.com','apolo987','2020-03-30');
INSERT INTO usuarios VALUES(null,'Margarita','Avirama','Margara@hotmail.com','apolo987','2018-07-24');
INSERT INTO usuarios VALUES(null,'Tara','Ramirez','Tarita@hotmail.com','apolo987','2015-07-24');

# INSERTAR FILAS CON CIERTAS COLUMNAS (INSERT AVANZADO) #

INSERT INTO usuarios(email, password) VALUES ('ejemplo@php.com', '123987');


ALTER TABLE usuarios MODIFY nombre varchar(100) null;
ALTER TABLE usuarios MODIFY apellidos varchar(100) null;
ALTER TABLE usuarios MODIFY fecha date null;