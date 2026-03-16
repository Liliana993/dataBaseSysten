 🗂️ Estructura de la base de datos

La base de datos `sistema_ventas` está compuesta por las siguientes tablas:

### 🔹 Cliente
Almacena la información de los clientes del local.
- Identificación y datos de contacto.

### 🔹 Categoria
Permite clasificar los productos según su categoría.
- Facilita la organización y búsqueda de productos.

### 🔹 Producto
Contiene la información de los productos comercializados.
- Precios de compra y venta.
- Stock disponible.
- Asociación a una categoría.

### 🔹 Venta
Registra cada operación de venta realizada.
- Fecha y hora de la venta.
- Totales, pagos y cambio.
- Asociación con el cliente correspondiente.

### 🔹 Detalle_Venta
Representa el detalle de los productos incluidos en cada venta.
- Cantidad y precios por producto.
- Relación entre ventas y productos.
- Resuelve la relación muchos a muchos entre venta y producto.

---

## 🔗 Relaciones entre tablas

- Un **cliente** puede realizar muchas **ventas**.
- Una **categoría** puede contener muchos **productos**.
- Una **venta** puede tener múltiples **detalles de venta**.
- Un **producto** puede estar presente en múltiples **detalles de venta**.

Estas relaciones se implementan mediante **claves foráneas**, garantizando la integridad referencial del sistema.

---

## 🛠️ Tecnologías utilizadas

- **SQL**
- **MySQL / MariaDB**

---

## ▶️ Instrucciones de uso

1. Ejecutar el script SQL en un gestor de base de datos compatible (MySQL o MariaDB).
2.  Crear la base de datos `sistema_ventas`.
3. Crear las tablas en el orden definido en el script para respetar las dependencias.
4. Verificar la correcta creación de las relaciones entre tablas.


## 📄 Notas adicionales

- El esquema se encuentra alineado con el Diagrama Entidad–Relación (DER) incluido en la documentación del proyecto.
- La base de datos está preparada para futuras ampliaciones, como la incorporación de usuarios, medios de pago o reportes.

---

📌 **Proyecto académico – Sistema de Ventas y Facturación**

3. Crear la base de datos `sistema_ventas`.

4. Crear las tablas en el orden definido en el script para respetar las dependencias.

5. Verificar la correcta creación de las relaciones entre tablas.
