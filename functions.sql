USE redstore;
DROP function IF EXISTS buscar_por_palabra;
DROP function IF EXISTS precio_mas_iva;

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
CREATE FUNCTION precio_mas_iva (calcular INT) RETURNS INT
READS SQL DATA
BEGIN
DECLARE resultado INT;
SELECT precio_producto INTO resultado FROM producto WHERE id_producto = calcular;
RETURN resultado + (resultado * 0.30);
END//
delimiter ;
