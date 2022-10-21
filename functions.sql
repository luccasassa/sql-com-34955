#FUNCION 1

delimiter //
CREATE FUNCTION buscar_por_palabra (palabra VARCHAR(20)) RETURNS INT
READS SQL DATA
BEGIN
DECLARE resultado INT;
SELECT COUNT(*) INTO resultado FROM producto WHERE predesc_producto LIKE CONCAT('%',palabra,'%');
RETURN resultado;
END//
delimiter ;

#FUNCION 2

delimiter //
CREATE FUNCTION cantidad_categorias (cantidad INT) RETURNS INT
READS SQL DATA
BEGIN
DECLARE resultado INT;
SELECT nombre_categoria cat INTO resultado
FROM categoria cat JOIN producto p ON cat.id_categoria = p.id_producto
WHERE p.id_categoria = cat.id_categoria;
RETURN resultado;
END//
delimiter ;
