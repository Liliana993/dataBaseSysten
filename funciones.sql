--CALCULAR TOTAL DE VENTAS
DELIMITER $$

CREATE FUNCTION calcular_total_venta(idVenta INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN

DECLARE total DECIMAL(10,2);

SELECT SUM(venta_detalle_total)
INTO total
FROM detalle_venta
WHERE id_venta = idVenta;

RETURN total;

END $$

DELIMITER ;

--CALCULAR GANANCIA DEL PRODUCTO
DELIMITER $$

CREATE FUNCTION calcular_ganancia_producto(idProducto INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN

DECLARE ganancia DECIMAL(10,2);

SELECT (precio_venta - precio_compra)
INTO ganancia
FROM producto
WHERE id_producto = idProducto;

RETURN ganancia;

END $$

DELIMITER ;


--FUNCION OBTENER STOCK DE LOS PRODUCTOS
DELIMITER $$

CREATE FUNCTION obtener_stock_producto(idProducto INT)
RETURNS INT
DETERMINISTIC
BEGIN

DECLARE cantidad INT;

SELECT stock
INTO cantidad
FROM producto
WHERE id_producto = idProducto;

RETURN cantidad;

END $$

DELIMITER ;
