-- Creación de la base de datos
CREATE DATABASE sistema_ventas;
USE sistema_ventas;

-- =========================
-- Tabla CLIENTE
-- =========================
CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    documento VARCHAR(20),
    telefono VARCHAR(20),
    email VARCHAR(100),
    direccion VARCHAR(150)
);

-- =========================
-- Tabla CATEGORIA
-- =========================
CREATE TABLE categoria (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(100) NOT NULL,
    categoria_ubicacion VARCHAR(150)
);

-- =========================
-- Tabla PRODUCTO
-- =========================
CREATE TABLE producto (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    producto_codigo_barra VARCHAR(50),
    nombre_producto VARCHAR(100) NOT NULL,
    descripcion VARCHAR(150),
    precio_compra DECIMAL(10,2) NOT NULL,
    precio_venta DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
    estado VARCHAR(20),
    producto_foto VARCHAR(255),
    id_categoria INT NOT NULL,
    CONSTRAINT fk_producto_categoria
        FOREIGN KEY (id_categoria)
        REFERENCES categoria(id_categoria)
);

-- =========================
-- Tabla VENTA
-- =========================
CREATE TABLE venta (
    id_venta INT AUTO_INCREMENT PRIMARY KEY,
    codigo_venta VARCHAR(50),
    fecha_venta DATE NOT NULL,
    hora_venta TIME NOT NULL,
    venta_total DECIMAL(10,2) NOT NULL,
    venta_pago DECIMAL(10,2) NOT NULL,
    venta_cambio DECIMAL(10,2) NOT NULL,
    tipo_comprobante VARCHAR(30),
    id_cliente INT NOT NULL,
    CONSTRAINT fk_venta_cliente
        FOREIGN KEY (id_cliente)
        REFERENCES cliente(id_cliente)
);

-- =========================
-- Tabla DETALLE_VENTA
-- =========================
CREATE TABLE detalle_venta (
    id_detalle_venta INT AUTO_INCREMENT PRIMARY KEY,
    venta_detalle_cantidad INT NOT NULL,
    detalle_precio_compra DECIMAL(10,2) NOT NULL,
    detalle_precio_venta DECIMAL(10,2) NOT NULL,
    venta_detalle_total DECIMAL(10,2) NOT NULL,
    venta_detalle_descripcion VARCHAR(150),
    codigo_venta VARCHAR(50),
    id_venta INT NOT NULL,
    id_producto INT NOT NULL,
    CONSTRAINT fk_detalle_venta
        FOREIGN KEY (id_venta)
        REFERENCES venta(id_venta),
    CONSTRAINT fk_detalle_producto
        FOREIGN KEY (id_producto)
        REFERENCES producto(id_producto)
);
