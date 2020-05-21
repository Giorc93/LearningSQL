# RENOMBRAR UNA TABLA #

ALTER TABLE usuarios RENAME TO usuariosren; # Cambiar el nombre de usuarios a usuariosren #

# CAMBIAR EL NOMBRE DE UNA COLUMNA #

ALTER TABLE usuariosren CHANGE apellidos apellido varchar(100) null; # Cambiar el nombre de la columna apellidos por apellido y modifica sus valores a los indicados #

# MODIFICAR COLUMNA SIN CAMBIAR NOMBRE #

ALTER TABLE usuariosren MODIFY apellido char(50) not null;

# AÑADIR COLUMNA #

ALTER TABLE usuariosren ADD web varchar(100) null;

# AÑADIR RESTRICCIÓN A COLUMNA #

ALTER TABLE usuariosren ADD CONSTRAINT uq_email UNIQUE(email);

# BORRAR COLUMNA #

ALTER TABLE usuariosren DROP web;