--las siguientes vistas fueron diseñadas para simplificar el acceso a la información y mejorar el rendimiento de las consultas

-- CREACIÓN DE LA VISTA DE PRODUCTOS POR CATEGORIA
CREATE VIEW vista_productos_categoria AS
SELECT 
p.id_producto,
p.nombre_producto,
p.precio_venta,
p.stock,
c.nombre_categoria
FROM producto p
JOIN categoria c 
ON p.id_categoria = c.id_categoria;

SELECT * FROM vista_productos_categoria;


-- CREACIÓN DE LA VISTA HISTORIAL DE VENTAS
CREATE VIEW vista_historial_ventas AS
SELECT
v.id_venta,
v.codigo_venta,
v.fecha_venta,
v.venta_total,
c.nombre,
c.apellido
FROM venta v
JOIN cliente c
ON v.id_cliente = c.id_cliente;

SELECT * FROM vista_historial_ventas;

--CREACIÓN DE LA VISTA DETALLE DE VENTA
CREATE VIEW vis_detalle_ventas AS
SELECT
dv.id_detalle_venta,
v.codigo_venta,
p.nombre_producto,
dv.venta_detalle_cantidad,
dv.detalle_precio_venta,
dv.venta_detalle_total
FROM detalle_venta dv
JOIN producto p
ON dv.id_producto = p.id_producto
JOIN venta v
ON dv.id_venta = v.id_venta;

SELECT * FROM vis_detalle_ventas;

--CREACIÓN DE LA VISTA STOCK BAJO
CREATE VIEW vista_stock_baj AS
SELECT
id_producto,
nombre_producto,
stock
FROM producto
WHERE stock < 12;

SELECT * FROM vista_stock_baj;
