CREATE SCHEMA `redstore`;

USE redstore;

CREATE TABLE categoria (
  id_categoria INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre_categoria VARCHAR(50) NOT NULL
);

CREATE TABLE producto (
  id_producto INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre_producto VARCHAR(50) NOT NULL,
  vista_producto VARCHAR(50) NOT NULL,
  predesc_producto VARCHAR(100) NOT NULL,
  desc_producto VARCHAR(700) NOT NULL,
  id_categoria INT UNSIGNED NOT NULL,
  stock_producto INT NOT NULL,
  precio_producto INT NOT NULL,
  img_producto VARCHAR(1000) NOT NULL,
  FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);

CREATE TABLE carrito (
  id_carrito INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  cant_prod_carrito INT UNSIGNED NOT NULL,
  id_producto INT UNSIGNED NOT NULL,
  FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

CREATE TABLE cliente (
  id_cliente INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre_cliente TEXT(50) NOT NULL,
  apellido_cliente TEXT(50) NOT NULL,
  usuario_cliente VARCHAR(20) NOT NULL,
  email_cliente VARCHAR(50) NOT NULL,
  provincia_cliente TEXT(50) NOT NULL,
  direccion_cliente VARCHAR(100) NOT NULL,
  telefono_cliente VARCHAR(20) NOT NULL
);

CREATE TABLE venta (
  id_venta INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  fecha_venta DATETIME NOT NULL,
  id_carrito INT UNSIGNED NOT NULL,
  id_cliente INT UNSIGNED NOT NULL,
  FOREIGN KEY (id_carrito) REFERENCES carrito(id_carrito),
  FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);
