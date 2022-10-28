USE redstore;
DROP TABLE IF EXISTS producto_log;
DROP TRIGGER IF EXISTS af_insert_producto;
DROP TRIGGER IF EXISTS bf_update_producto;
DROP TRIGGER IF EXISTS af_update_producto;
DROP TRIGGER IF EXISTS bf_delete_producto;

DROP TABLE IF EXISTS cliente_log;
DROP TRIGGER IF EXISTS af_insert_cliente;
DROP TRIGGER IF EXISTS bf_update_cliente;
DROP TRIGGER IF EXISTS af_update_cliente;
DROP TRIGGER IF EXISTS bf_delete_cliente;

#BITACORA TABLA PRODUCTO
CREATE TABLE producto_log ( 
	id_log INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    desc_log VARCHAR (50), 
    usuario_log VARCHAR (100) NOT NULL, 
    fecha_log DATETIME NOT NULL, 
	id_producto INT NOT NULL, 
    nombre_producto VARCHAR(50) NOT NULL, 
	vista_producto VARCHAR(50) NOT NULL, 
	predesc_producto VARCHAR(100) NOT NULL, 
	desc_producto VARCHAR(700) NOT NULL, 
	id_categoria INT NOT NULL, 
	stock_producto INT NOT NULL, 
	precio_producto INT NOT NULL, 
	img_producto VARCHAR(1000) NOT NULL
);

#TRIGGER 1 (INSERCION PRODUCTO)
DELIMITER // 
CREATE TRIGGER af_insert_producto 
AFTER INSERT ON producto 
FOR EACH ROW BEGIN 
	INSERT INTO producto_log (id_log, desc_log, usuario_log, fecha_log, id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto) 
    VALUES (null, 'INSERT', USER(), NOW(), NEW.id_producto, NEW.nombre_producto, NEW.vista_producto, NEW.predesc_producto, NEW.desc_producto, NEW.id_categoria, NEW.stock_producto, NEW.precio_producto, NEW.img_producto); 
END 
// DELIMITER ;

#TEST TRIGGER 1
INSERT INTO `producto` (`id_producto`, `nombre_producto`, `vista_producto`, `predesc_producto`, `desc_producto`, `id_categoria`, `stock_producto`, `precio_producto`, `img_producto`) VALUES (null, 'QWE-QWE', 'Producto QWE-QWE', 'Nuevo producto qwe-qwe trigger', 'lorem*11', '1', '1', '999', 'https://luccasassa.netlify.app/');

#TRIGGER 2 (MODIFICACION PRODUCTO)
DELIMITER // 
CREATE TRIGGER bf_update_producto 
BEFORE UPDATE ON producto 
FOR EACH ROW BEGIN 
	INSERT INTO producto_log (id_log, desc_log, usuario_log, fecha_log, id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto) 
    VALUES (null, 'UPDATE BEFORE', USER(), NOW(), OLD.id_producto, OLD.nombre_producto, OLD.vista_producto, OLD.predesc_producto, OLD.desc_producto, OLD.id_categoria, OLD.stock_producto, OLD.precio_producto, OLD.img_producto); 
END 
// DELIMITER ;

#TRIGGER 3 (MODIFICACION PRODUCTO)
DELIMITER // 
CREATE TRIGGER af_update_producto 
AFTER UPDATE ON producto 
FOR EACH ROW BEGIN 
	INSERT INTO producto_log (id_log, desc_log, usuario_log, fecha_log, id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto) 
    VALUES (null, 'UPDATE AFTER', USER(), NOW(), NEW.id_producto, NEW.nombre_producto, NEW.vista_producto, NEW.predesc_producto, NEW.desc_producto, NEW.id_categoria, NEW.stock_producto, NEW.precio_producto, NEW.img_producto); 
END 
// DELIMITER ;

#TEST TRIGGER 2 Y 3
UPDATE producto SET precio_producto = 99 WHERE id_producto = 47;

#TRIGGER 4 (ELIMINACION PRODUCTO)
DELIMITER // 
CREATE TRIGGER bf_delete_producto 
BEFORE DELETE ON producto 
FOR EACH ROW BEGIN 
	INSERT INTO producto_log (id_log, desc_log, usuario_log, fecha_log, id_producto, nombre_producto, vista_producto, predesc_producto, desc_producto, id_categoria, stock_producto, precio_producto, img_producto) 
    VALUES (null, 'DELETE', USER(), NOW(), OLD.id_producto, OLD.nombre_producto, OLD.vista_producto, OLD.predesc_producto, OLD.desc_producto, OLD.id_categoria, OLD.stock_producto, OLD.precio_producto, OLD.img_producto); 
END 
// DELIMITER ;

#TEST TRIGGER 4
DELETE FROM producto WHERE id_producto = 47;

###########################################################################

#BITACORA TABLA CLIENTE
CREATE TABLE cliente_log ( 
	id_log INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    desc_log VARCHAR (50), 
    usuario_log VARCHAR (100) NOT NULL, 
    fecha_log DATETIME NOT NULL, 
	id_cliente INT NOT NULL, 
    nombre_cliente TINYTEXT NOT NULL, 
	apellido_cliente TINYTEXT NOT NULL, 
	usuario_cliente VARCHAR(20) NOT NULL, 
	email_cliente VARCHAR(50) NOT NULL, 
	provincia_cliente TINYTEXT NOT NULL, 
	direccion_cliente VARCHAR(100) NOT NULL, 
	telefono_cliente VARCHAR(20) NOT NULL
);

#TRIGGER 1 (INSERCION CLIENTE)
DELIMITER // 
CREATE TRIGGER af_insert_cliente 
AFTER INSERT ON cliente 
FOR EACH ROW BEGIN 
	INSERT INTO cliente_log (id_log, desc_log, usuario_log, fecha_log, id_cliente, nombre_cliente, apellido_cliente, usuario_cliente, email_cliente, provincia_cliente, direccion_cliente, telefono_cliente) 
    VALUES (null, 'INSERT', USER(), NOW(), NEW.id_cliente, NEW.nombre_cliente, NEW.apellido_cliente, NEW.usuario_cliente, NEW.email_cliente, NEW.provincia_cliente, NEW.direccion_cliente, NEW.telefono_cliente); 
END 
// DELIMITER ;

#TEST TRIGGER 1
INSERT INTO `cliente` (`id_cliente`, `nombre_cliente`, `apellido_cliente`, `usuario_cliente`, `email_cliente`, `provincia_cliente`, `direccion_cliente`, `telefono_cliente`) VALUES (null, 'Marcelo', 'Diaz', 'marce123123', 'marcelodiaz@gmail.com', 'Chubut', 'Tupper 4281', '2807580095');

#TRIGGER 2 (MODIFICACION CLIENTE)
DELIMITER // 
CREATE TRIGGER bf_update_cliente 
BEFORE UPDATE ON cliente 
FOR EACH ROW BEGIN 
	INSERT INTO cliente_log (id_log, desc_log, usuario_log, fecha_log, id_cliente, nombre_cliente, apellido_cliente, usuario_cliente, email_cliente, provincia_cliente, direccion_cliente, telefono_cliente) 
    VALUES (null, 'UPDATE BEFORE', USER(), NOW(), OLD.id_cliente, OLD.nombre_cliente, OLD.apellido_cliente, OLD.usuario_cliente, OLD.email_cliente, OLD.provincia_cliente, OLD.direccion_cliente, OLD.telefono_cliente); 
END 
// DELIMITER ;

#TRIGGER 3 (MODIFICACION CLIENTE)
DELIMITER // 
CREATE TRIGGER af_update_cliente 
AFTER UPDATE ON cliente 
FOR EACH ROW BEGIN 
	INSERT INTO cliente_log (id_log, desc_log, usuario_log, fecha_log, id_cliente, nombre_cliente, apellido_cliente, usuario_cliente, email_cliente, provincia_cliente, direccion_cliente, telefono_cliente) 
    VALUES (null, 'UPDATE AFTER', USER(), NOW(), NEW.id_cliente, NEW.nombre_cliente, NEW.apellido_cliente, NEW.usuario_cliente, NEW.email_cliente, NEW.provincia_cliente, NEW.direccion_cliente, NEW.telefono_cliente); 
END 
// DELIMITER ;

#TEST TRIGGER 2 Y 3
UPDATE cliente SET usuario_cliente = 'marce321321' WHERE id_cliente = 7;

#TRIGGER 4 (ELIMINACION CLIENTE)
DELIMITER // 
CREATE TRIGGER bf_delete_cliente 
BEFORE DELETE ON cliente 
FOR EACH ROW BEGIN 
	INSERT INTO cliente_log (id_log, desc_log, usuario_log, fecha_log, id_cliente, nombre_cliente, apellido_cliente, usuario_cliente, email_cliente, provincia_cliente, direccion_cliente, telefono_cliente) 
    VALUES (null, 'DELETE', USER(), NOW(), OLD.id_cliente, OLD.nombre_cliente, OLD.apellido_cliente, OLD.usuario_cliente, OLD.email_cliente, OLD.provincia_cliente, OLD.direccion_cliente, OLD.telefono_cliente); 
END 
// DELIMITER ;

#TEST TRIGGER 4
DELETE FROM cliente WHERE id_cliente = 7;