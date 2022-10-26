USE redstore;
DROP PROCEDURE IF EXISTS crear_nuevo_producto;
DROP PROCEDURE IF EXISTS ordenar_productos_segun;

#SP 1
DELIMITER // 
CREATE PROCEDURE ordenar_productos_segun (IN campo INT, IN orden INT) 
BEGIN 
    SELECT * 
    FROM producto 
    ORDER BY 
    CASE WHEN campo = 1 AND orden = 1 THEN id_producto END, 
    CASE WHEN campo = 1 AND orden = 2 THEN id_producto END DESC, 
    CASE WHEN campo = 2 AND orden = 1 THEN nombre_producto END, 
    CASE WHEN campo = 2 AND orden = 2 THEN nombre_producto END DESC, 
    CASE WHEN campo = 3 AND orden = 1 THEN vista_producto END, 
	CASE WHEN campo = 3 AND orden = 2 THEN vista_producto END DESC, 
	CASE WHEN campo = 4 AND orden = 1 THEN predesc_producto END, 
	CASE WHEN campo = 4 AND orden = 2 THEN predesc_producto END DESC, 
	CASE WHEN campo = 5 AND orden = 1 THEN desc_producto END, 
	CASE WHEN campo = 5 AND orden = 2 THEN desc_producto END DESC, 
	CASE WHEN campo = 6 AND orden = 1 THEN id_categoria END, 
	CASE WHEN campo = 6 AND orden = 2 THEN id_categoria END DESC, 
	CASE WHEN campo = 7 AND orden = 1 THEN stock_producto END, 
	CASE WHEN campo = 7 AND orden = 2 THEN stock_producto END DESC, 
    CASE WHEN campo = 8 AND orden = 1 THEN precio_producto END, 
	CASE WHEN campo = 8 AND orden = 2 THEN precio_producto END DESC; 
END// 
DELIMITER ;

# CALL ordenar_productos (5, 1);

#SP 2
DELIMITER // 
CREATE PROCEDURE crear_nuevo_producto (
	IN nombre VARCHAR(50), 
	IN vista VARCHAR(50), 
	IN predescripcion VARCHAR(100), 
	IN descripcion VARCHAR(700), 
	IN categoria INT, 
	IN stock INT, 
	IN precio INT, 
    IN img VARCHAR(1000)) 
BEGIN 
	INSERT INTO producto (
    nombre_producto, 
    vista_producto, 
    predesc_producto, 
    desc_producto, 
    id_categoria, 
    stock_producto, 
    precio_producto, 
    icrear_nuevo_productomg_producto) 
	VALUES (nombre, vista, predescripcion, descripcion, categoria, stock, precio, img); 
END // 
DELIMITER ;

# CALL nuevo_producto ('ASD-ASD', 'Prducto ASD-ASD', 'Nuevo producto asd-asd store procedure', 'lorem*10', 4, 1, 9999, 'https://luccasassa.netlify.app/');

#SP 3
delimiter // 
CREATE PROCEDURE filtrar_productos_segun (buscar VARCHAR(20)) 
BEGIN 
SELECT * FROM producto WHERE predesc_producto LIKE CONCAT('%',buscar,'%'); 
END // 
delimiter ;
