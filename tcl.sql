USE redstore;
SET sql_safe_updates = 0;
SET autocommit = 0;

INSERT INTO categoria (id_categoria, nombre_categoria) VALUES (10, 'Nueva Categoría');

START TRANSACTION;
DELETE FROM categoria WHERE id_categoria = 10;
SELECT * FROM categoria;
ROLLBACK;
SELECT * FROM categoria;

-------------------------------------------------------------------------------------

START TRANSACTION;
DELETE FROM categoria WHERE id_categoria = 10;
SELECT * FROM categoria;
COMMIT;
SELECT * FROM categoria;
INSERT INTO categoria (id_categoria, nombre_categoria) VALUES (10,'Nueva Categoría');
COMMIT;
SELECT * FROM categoria;

#####################################################################################

SAVEPOINT SP_0;

INSERT INTO carrito (id_carrito, cant_prod_carrito, id_producto) VALUES (90,1,1);
INSERT INTO carrito (id_carrito, cant_prod_carrito, id_producto) VALUES (91,1,2);
INSERT INTO carrito (id_carrito, cant_prod_carrito, id_producto) VALUES (92,1,3);
INSERT INTO carrito (id_carrito, cant_prod_carrito, id_producto) VALUES (93,1,4);
INSERT INTO carrito (id_carrito, cant_prod_carrito, id_producto) VALUES (94,1,5);

SAVEPOINT SP_1;

INSERT INTO carrito (id_carrito, cant_prod_carrito, id_producto) VALUES (95,1,6);
INSERT INTO carrito (id_carrito, cant_prod_carrito, id_producto) VALUES (96,1,7);
INSERT INTO carrito (id_carrito, cant_prod_carrito, id_producto) VALUES (97,1,8);
INSERT INTO carrito (id_carrito, cant_prod_carrito, id_producto) VALUES (98,1,9);

SAVEPOINT SP_2;
ROLLBACK TO SP_1;
RELEASE SAVEPOINT SP_1;
