USE mysql;

# USUARIO 'viewer'
CREATE USER 'viewer'@'localhost' IDENTIFIED BY 'abc123';

# PERMISOS: lectura
GRANT SELECT ON *.* TO 'viewer'@'localhost';

##############################################################

# USUARIO 'moderator'
CREATE USER 'moderator'@'localhost' IDENTIFIED BY 'abc123';

# PERMISOS: lectura, inserción y modificación
GRANT SELECT, INSERT, UPDATE ON *.* TO 'moderator'@'localhost';
