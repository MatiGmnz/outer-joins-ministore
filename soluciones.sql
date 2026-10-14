USE MiniStore;
-- ══════════════════════════════════════════
-- MiniStore — Soluciones con Outer JOINs
-- Autor: Matias Gimenez
-- Fecha: 14/10/2026
-- ══════════════════════════════════════════
-- ── CONSULTA 1: LEFT JOIN ─────────────────
-- Pregunta de negocio: ¿Qué productos del catálogo nunca fueron vendidos?
-- Mostrá todos los productos y sus ventas asociadas.
-- Los productos sin ventas aparecerán con NULL en las columnas de ventas.

SELECT P.producto_id AS producto, 
	P.nombre,
	P.categoria,
	P.precio,
	V.venta_id AS venta,
	V.cantidad,
	V.fecha_venta
FROM productos AS P
LEFT JOIN ventas AS V
ON P.producto_id = V.producto_id;

-- ── CONSULTA 2: RIGHT JOIN ────────────────
-- Pregunta de negocio: ¿Existen ventas registradas con productos
-- que no figuran en nuestro catálogo? (posible error de carga de datos)
-- Los registros huérfanos aparecerán con NULL en las columnas de productos.

SELECT P.producto_id,
	P.nombre,
	P.categoria,
	V.venta_id, 
	V.producto_id AS Producto,
	V.cliente_id AS cliente,
	V.cantidad AS cantidad,
	V.fecha_venta
FROM productos AS P
RIGHT JOIN ventas AS V
ON  P.producto_id = V.producto_id; 

-- ── CONSULTA 3: FULL OUTER JOIN ───────────
-- Pregunta de negocio: Vista completa de auditoría que muestre
-- todos los productos y todas las ventas sin perder ninguna fila,
-- identificando tanto productos sin ventas como ventas sin producto.

SELECT P.producto_id AS producto,
	P.nombre,
	P.categoria,
	P.precio,
	V.venta_id AS venta,
	V.producto_id AS producto_vendido,
	V.cliente_id AS cliente,
	V.cantidad AS cantidad,
	V.fecha_venta
FROM productos AS P
FULL OUTER JOIN ventas AS V
ON P.producto_id = V.producto_id; 

