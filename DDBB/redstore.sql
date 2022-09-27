-- Active: 1664223765204@@127.0.0.1@3306@redstore

/* CREATE SCHEMA `redstore` ; */

USE redstore;

CREATE TABLE clientes (
	id_cliente INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre_cliente TEXT(50) NOT NULL,
  apellido_cliente TEXT(50) NOT NULL,
  usuario_cliente VARCHAR(20) NOT NULL,
  email_cliente VARCHAR(50) NOT NULL,
  provincia_cliente TEXT(50) NOT NULL,
  direccion_cliente VARCHAR(100) NOT NULL,
  telefono_cliente INT NOT NULL
);

CREATE TABLE categorias (
	id_categoria INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre_categoria VARCHAR(50) NOT NULL
);

CREATE TABLE facturas (
	id_factura INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  fecha_factura DATE NOT NULL,
  id_cliente INT UNSIGNED NOT NULL,
  FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE productos (
	id_producto INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre_producto VARCHAR(50) NOT NULL,
  vista_producto VARCHAR(50) NOT NULL,
  predesc_producto VARCHAR(100) NOT NULL,
  desc_producto VARCHAR(500) NOT NULL,
  id_categoria INT UNSIGNED NOT NULL,
  stock_producto INT NOT NULL,
  precio_producto INT NOT NULL,
  img_producto VARCHAR(1000) NOT NULL,
  FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);

CREATE TABLE ventas (
  id_venta INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  id_factura INT UNSIGNED NOT NULL,
  id_producto INT UNSIGNED NOT NULL,
  cantidad_venta INT(15) NOT NULL,
  FOREIGN KEY (id_factura) REFERENCES facturas(id_factura),
  FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);

#############################################################

/* 
INSERT INTO categories (id_category, name_category)
VALUES (
  1,
  'Accesorios'
);

INSERT INTO categories (id_category, name_category)
VALUES (
  2,
  'Altavoces'
);

INSERT INTO categories (id_category, name_category)
VALUES (
  3,
  'Amplificadores'
);

INSERT INTO categories (id_category, name_category)
VALUES (
  4,
  'Auriculares'
);

INSERT INTO categories (id_category, name_category)
VALUES (
  5,
  'Camaras'
);

INSERT INTO categories (id_category, name_category)
VALUES (
  6,
  'Home'
);

INSERT INTO categories (id_category, name_category)
VALUES (
  7,
  'Objetivos'
);

INSERT INTO categories (id_category, name_category)
VALUES (
  8,
  'Reproductores'
);

INSERT INTO categories (id_category, name_category)
VALUES (
  9,
  'Televisores'
);
*/