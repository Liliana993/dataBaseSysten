--Estos procedimientos podrían integrarse directamente con un sistema POS para automatizar completamente el flujo de ventas.

--Este procedimiento permite registrar un nuevo cliente en el sistema
DELIMITER $$

CREATE PROCEDURE registrar_cliente(
IN p_nombre VARCHAR(50),
IN p_apellido VARCHAR(50),
IN p_documento VARCHAR(20),
IN p_telefono VARCHAR(20),
IN p_email VARCHAR(100),
IN p_direccion VARCHAR(150)
)
BEGIN

INSERT INTO cliente(
nombre,
apellido,
documento,
telefono,
email,
direccion
)
VALUES(
p_nombre,
p_apellido,
p_documento,
p_telefono,
p_email,
p_direccion
);

END $$

DELIMITER ;

--Este procedimiento permite registrar un nuevo producto dentro del sistema
DELIMITER $$

CREATE PROCEDURE registrar_producto(
IN p_codigo VARCHAR(50),
IN p_nombre VARCHAR(100),
IN p_descripcion VARCHAR(150),
IN p_precio_compra DECIMAL(10,2),
IN p_precio_venta DECIMAL(10,2),
IN p_stock INT,
IN p_estado VARCHAR(20),
IN p_categoria INT
)
BEGIN

INSERT INTO producto(
producto_codigo_barra,
nombre_producto,
descripcion,
precio_compra,
precio_venta,
stock,
estado,
id_categoria
)
VALUES(
p_codigo,
p_nombre,
p_descripcion,
p_precio_compra,
p_precio_venta,
p_stock,
p_estado,
p_categoria
);

END $$

DELIMITER ;

--Este procedimiento permite registrar una venta en el sistema
DELIMITER $$

CREATE PROCEDURE registrar_venta(
IN p_codigo VARCHAR(50),
IN p_total DECIMAL(10,2),
IN p_pago DECIMAL(10,2),
IN p_cambio DECIMAL(10,2),
IN p_tipo VARCHAR(30),
IN p_id_cliente INT
)
BEGIN

INSERT INTO venta(
codigo_venta,
fecha_venta,
hora_venta,
venta_total,
venta_pago,
venta_cambio,
tipo_comprobante,
id_cliente
)
VALUES(
p_codigo,
CURDATE(),
CURTIME(),
p_total,
p_pago,
p_cambio,
p_tipo,
p_id_cliente
);

END $$

DELIMITER ;

--Este procedimiento permite registrar los productos vendidos dentro de una venta específica.
DELIMITER $$

CREATE PROCEDURE registrar_detalle_venta(
IN p_cantidad INT,
IN p_precio_compra DECIMAL(10,2),
IN p_precio_venta DECIMAL(10,2),
IN p_total DECIMAL(10,2),
IN p_descripcion VARCHAR(150),
IN p_codigo VARCHAR(50),
IN p_id_venta INT,
IN p_id_producto INT
)
BEGIN

INSERT INTO detalle_venta(
venta_detalle_cantidad,
detalle_precio_compra,
detalle_precio_venta,
venta_detalle_total,
venta_detalle_descripcion,
codigo_venta,
id_venta,
id_producto
)
VALUES(
p_cantidad,
p_precio_compra,
p_precio_venta,
p_total,
p_descripcion,
p_codigo,
p_id_venta,
p_id_producto
);

END $$

DELIMITER ;
