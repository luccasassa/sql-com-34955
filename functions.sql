delimiter //
CREATE FUNCTION buscar_por_palabra (palabra VARCHAR(20)) RETURNS INT
READS SQL DATA
BEGIN
	DECLARE resultado INT;
    SELECT COUNT(*) INTO resultado FROM producto WHERE predesc_producto LIKE CONCAT('%',palabra,'%');
    RETURN resultado;
END//
delimiter ;

SELECT buscar_por_palabra('inalámbrico') AS 'Cantidad de productos';

delimiter //
CREATE FUNCTION promedio_precio_auriculares (promedio INT) RETURNS INT
READS SQL DATA
BEGIN
	DECLARE resultado INT;
    SELECT AVG(precio_producto) INTO resultado FROM producto;
    RETURN resultado;
END//
delimiter ;

SELECT promedio_precio_auriculares();