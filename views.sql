USE redstore;

CREATE VIEW productos_sin_stock AS (
  SELECT id_producto AS Id,
  nombre_producto AS 'Código',
  predesc_producto AS Producto,
  precio_producto AS Precio
  FROM producto
  WHERE stock_producto = 0
);

CREATE VIEW clientes_mendocinos AS (
  SELECT id_cliente AS Id,
  CONCAT_WS(" ", nombre_cliente, apellido_cliente) AS Cliente,
  CONCAT_WS(", ", provincia_cliente, direccion_cliente) AS Residencia
  FROM cliente
  WHERE provincia_cliente = 'Mendoza'
);

CREATE OR REPLACE VIEW productos_auriculares AS (
  SELECT c.nombre_categoria AS 'Categoría',
  p.nombre_producto AS 'Código',
  p.predesc_producto AS Producto
  FROM producto p JOIN categoria c ON p.id_categoria = c.id_categoria
  WHERE c.nombre_categoria LIKE '%Auriculares%'
);

CREATE OR REPLACE VIEW compras_de_mario AS (
  SELECT CONCAT_WS(" ", cl.nombre_cliente, cl.apellido_cliente) AS Cliente,
  ve.fecha_venta AS 'Fecha de compra',
  ve.id_venta AS 'Id de compra'
  FROM cliente cl JOIN venta ve ON cl.id_cliente = ve.id_cliente
  WHERE cl.nombre_cliente LIKE '%Mario%'
  ORDER BY ve.fecha_venta
);

CREATE OR REPLACE VIEW producto_mas_caro AS (
  SELECT p.nombre_producto AS 'Código',
  p.predesc_producto AS Producto,
  p.desc_producto AS 'Descripción',
  c.nombre_categoria AS 'Categoría',
  p.precio_producto AS Precio
  FROM producto p JOIN categoria c ON p.id_categoria = c.id_categoria
  ORDER BY p.precio_producto DESC
  LIMIT 1
);
