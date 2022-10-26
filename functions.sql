USE redstore;
DROP FUNCTION IF EXISTS cantidad_productos_segun;
DROP FUNCTION IF EXISTS precio_mas_iva;

#FUNCION 1
delimiter //
CREATE FUNCTION cantidad_productos_segun (palabra VARCHAR(20)) RETURNS INT
READS SQL DATA
BEGIN
DECLARE resultado INT;
SELECT COUNT(*) INTO resultado FROM producto WHERE predesc_producto LIKE CONCAT('%',palabra,'%');
RETURN resultado;
END //
delimiter ;

#FUNCION 2
delimiter //
CREATE FUNCTION precio_mas_iva (calcular INT) RETURNS INT
READS SQL DATA
BEGIN
DECLARE resultado INT;
SELECT precio_producto INTO resultado FROM producto WHERE id_producto = calcular;
RETURN resultado + (resultado * 0.30);
END //
delimiter ;
