USE redstore;

DROP TABLE IF EXISTS categoria_log;
DROP TRIGGER IF EXISTS af_insert_categoria;
DROP TRIGGER IF EXISTS bf_update_categoria;
DROP TRIGGER IF EXISTS af_update_categoria;
DROP TRIGGER IF EXISTS bf_delete_categoria;

DROP TABLE IF EXISTS cliente_log;
DROP TRIGGER IF EXISTS af_insert_cliente;
DROP TRIGGER IF EXISTS bf_update_cliente;
DROP TRIGGER IF EXISTS af_update_cliente;
DROP TRIGGER IF EXISTS bf_delete_cliente;

DROP TABLE IF EXISTS producto_log;
DROP TRIGGER IF EXISTS af_insert_producto;
DROP TRIGGER IF EXISTS bf_update_producto;
DROP TRIGGER IF EXISTS af_update_producto;
DROP TRIGGER IF EXISTS bf_delete_producto;

DROP TABLE IF EXISTS venta_log;
DROP TRIGGER IF EXISTS af_insert_venta;
DROP TRIGGER IF EXISTS bf_update_venta;
DROP TRIGGER IF EXISTS af_update_venta;
DROP TRIGGER IF EXISTS bf_delete_venta;

#BITACORA TABLA CATEGORIA
CREATE TABLE categoria_log ( 
	id_log INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	desc_log VARCHAR (50), 
	usuario_log VARCHAR (100) NOT NULL, 
	fecha_log DATETIME NOT NULL, 
	id_categoria INT NOT NULL, 
	nombre_categoria TINYTEXT NOT NULL
);

#TRIGGER 1 (INSERCION CATEGORIA)
DELIMITER // 
CREATE TRIGGER af_insert_categoria 
AFTER INSERT ON categoria 
FOR EACH ROW BEGIN 
	INSERT INTO categoria_log (id_log, desc_log, usuario_log, fecha_log, id_categoria, nombre_categoria) 
    VALUES (null, 'INSERT', USER(), NOW(), NEW.id_categoria, NEW.nombre_categoria); 
END 
// DELIMITER ;

#TEST TRIGGER 1
INSERT INTO `categoria` (`id_categoria`, `nombre_categoria`) VALUES (null, 'Nueva Categoria trigger');

#TRIGGER 2 (MODIFICACION CATEGORIA)
DELIMITER // 
CREATE TRIGGER bf_update_categoria 
BEFORE UPDATE ON categoria 
FOR EACH ROW BEGIN 
	INSERT INTO categoria_log (id_log, desc_log, usuario_log, fecha_log, id_categoria, nombre_categoria) 
    VALUES (null, 'UPDATE BEFORE', USER(), NOW(), OLD.id_categoria, OLD.nombre_categoria); 
END 
// DELIMITER ;

#TRIGGER 3 (MODIFICACION CLIENTE)
DELIMITER // 
CREATE TRIGGER af_update_categoria 
AFTER UPDATE ON categoria 
FOR EACH ROW BEGIN 
	INSERT INTO categoria_log (id_log, desc_log, usuario_log, fecha_log, id_categoria, nombre_categoria) 
    VALUES (null, 'UPDATE AFTER', USER(), NOW(), NEW.id_categoria, NEW.nombre_categoria); 
END 
// DELIMITER ;

#TEST TRIGGER 2 Y 3
UPDATE categoria SET nombre_categoria = 'Categoria por trigger' WHERE id_categoria = 10;

#TRIGGER 4 (ELIMINACION CLIENTE)
DELIMITER // 
CREATE TRIGGER bf_delete_categoria 
BEFORE DELETE ON categoria 
FOR EACH ROW BEGIN 
	INSERT INTO categoria_log (id_log, desc_log, usuario_log, fecha_log, id_categoria, nombre_categoria) 
    VALUES (null, 'DELETE', USER(), NOW(), OLD.id_categoria, OLD.nombre_categoria); 
END 
// DELIMITER ;

#TEST TRIGGER 4
DELETE FROM categoria WHERE id_categoria = 10;

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

###########################################################################

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

#BITACORA TABLA VENTA
CREATE TABLE venta_log ( 
	id_log INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	desc_log VARCHAR (50), 
	usuario_log VARCHAR (100) NOT NULL, 
	fecha_log DATETIME NOT NULL, 
	id_venta INT NOT NULL, 
	fecha_venta DATETIME NOT NULL, 
	id_carrito INT NOT NULL, 
	id_cliente INT NOT NULL
);

#TRIGGER 1 (INSERCION VENTA)
DELIMITER // 
CREATE TRIGGER af_insert_venta 
AFTER INSERT ON venta 
FOR EACH ROW BEGIN 
	INSERT INTO venta_log (id_log, desc_log, usuario_log, fecha_log, id_venta, fecha_venta, id_carrito, id_cliente) 
    VALUES (null, 'INSERT', USER(), NOW(), NEW.id_venta, NEW.fecha_venta, NEW.id_carrito, NEW.id_cliente); 
END 
// DELIMITER ;

#TEST TRIGGER 1
INSERT INTO `venta` (`id_venta`, `fecha_venta`, `id_carrito`, `id_cliente`) VALUES (null, '2022-09-19 10:10:10', 5, 5);

#TRIGGER 2 (MODIFICACION VENTA)
DELIMITER // 
CREATE TRIGGER bf_update_venta 
BEFORE UPDATE ON venta 
FOR EACH ROW BEGIN 
	INSERT INTO venta_log (id_log, desc_log, usuario_log, fecha_log, id_venta, fecha_venta, id_carrito, id_cliente) 
    VALUES (null, 'UPDATE BEFORE', USER(), NOW(), OLD.id_venta, OLD.fecha_venta, OLD.id_carrito, OLD.id_cliente); 
END 
// DELIMITER ;

#TRIGGER 3 (MODIFICACION VENTA)
DELIMITER // 
CREATE TRIGGER af_update_venta 
AFTER UPDATE ON venta 
FOR EACH ROW BEGIN 
	INSERT INTO venta_log (id_log, desc_log, usuario_log, fecha_log, id_venta, fecha_venta, id_carrito, id_cliente) 
    VALUES (null, 'UPDATE AFTER', USER(), NOW(),  NEW.id_venta, NEW.fecha_venta, NEW.id_carrito, NEW.id_cliente); 
END 
// DELIMITER ;

#TEST TRIGGER 2 Y 3
UPDATE venta SET id_carrito = 2 WHERE id_venta = 7;

#TRIGGER 4 (ELIMINACION CLIENTE)
DELIMITER // 
CREATE TRIGGER bf_delete_venta 
BEFORE DELETE ON venta 
FOR EACH ROW BEGIN 
	INSERT INTO venta_log (id_log, desc_log, usuario_log, fecha_log, id_venta, fecha_venta, id_carrito, id_cliente) 
    VALUES (null, 'DELETE', USER(), NOW(), OLD.id_venta, OLD.fecha_venta, OLD.id_carrito, OLD.id_cliente); 
END 
// DELIMITER ;

#TEST TRIGGER 4
DELETE FROM venta WHERE id_venta = 7;