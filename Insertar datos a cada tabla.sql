--INSERTAR DATOS A CADA TABLA
INSERT INTO clientes (nombre, ciudad, tipo_cliente) VALUES
('Alfa Ltda', 'Medellín', 'Empresa'),
('Distribuciones Norte', 'Bogotá', 'Mayorista'),
('Market Express', 'Cali', 'Minorista'),
('Cliente 4', 'Barranquilla', 'Minorista'),
('Cliente 5', 'Medellín', 'Empresa'),
('Cliente 6', 'Bucaramanga', 'Mayorista'),
('Cliente 7', 'Cartagena', 'Empresa'),
('Cliente 8', 'Pereira', 'Minorista'),
('Cliente 9', 'Medellín', 'Mayorista'),
('Cliente 10', 'Manizales', 'Minorista'),
('Cliente 11', 'Cali', 'Empresa'),
('Cliente 12', 'Bogotá', 'Minorista'),
('Cliente 13', 'Neiva', 'Empresa'),
('Cliente 14', 'Cúcuta', 'Mayorista'),
('Cliente 15', 'Ibagué', 'Minorista');

INSERT INTO productos (nombre_producto, categoria, proveedor, precio_unitario) VALUES
('Gaseosa Cola 1.5L', 'Bebidas', 'DistribuBebidas', 3500),
('Arroz 500g', 'Alimentos', 'Graneros Andina', 2500),
('Jabón Líquido 1L', 'Aseo', 'Limpio SAS', 5400),
('Galletas Choco', 'Snacks', 'DeliFoods', 1900),
('Aceite 1L', 'Alimentos', 'Aceites del Valle', 7500),
('Detergente 2kg', 'Aseo', 'UltraClean', 11200),
('Café 250g', 'Alimentos', 'Tostadora Café', 6800),
('Jugo Naranja 500ml', 'Bebidas', 'Frutas SA', 4200),
('Cereal 300g', 'Alimentos', 'Desayunos SAS', 8700),
('Toallas Húmedas', 'Aseo', 'Limpieza Total', 5300),
('Salsa de Tomate 350ml', 'Alimentos', 'Salsas y Cía', 3300),
('Pan Tajado', 'Panadería', 'PanDelicias', 4300),
('Leche Entera 1L', 'Lácteos', 'Lácteos Colombia', 4600),
('Yogurt 200ml', 'Lácteos', 'Bebidas Lácteas SAS', 3700),
('Papel Higiénico x4', 'Aseo', 'SoftRoll', 8900);

INSERT INTO canal (nombre_canal, descripcion) VALUES
('Tienda Física', 'Venta directa en punto de venta'),
('Ecommerce', 'Plataforma web'),
('Call Center', 'Pedido telefónico'),
('Mayorista', 'Distribución a gran escala'),
('Autoservicio', 'Canal autoservicio'),
('App Móvil', 'Pedidos por aplicación móvil'),
('Conveniencia', 'Tiendas pequeñas de barrio'),
('Almacén por Departamento', 'Grandes superficies'),
('Venta Institucional', 'Escuelas, hospitales, etc.'),
('Exportación', 'Ventas al exterior'),
('Franquicia', 'Terceros autorizados'),
('Supermercado', 'Cadena local'),
('Hipermercado', 'Grandes cadenas'),
('Suscripción', 'Entregas programadas'),
('Recorridos Comerciales', 'Ventas por ruta');

INSERT INTO fecha (id_fecha, anio, mes, nombre_mes, trimestre) VALUES
('2024-01-10', 2024, 1, 'Enero', 1),
('2024-01-25', 2024, 1, 'Enero', 1),
('2024-02-15', 2024, 2, 'Febrero', 1),
('2024-02-28', 2024, 2, 'Febrero', 1),
('2024-03-10', 2024, 3, 'Marzo', 1),
('2024-04-05', 2024, 4, 'Abril', 2),
('2024-04-20', 2024, 4, 'Abril', 2),
('2024-05-12', 2024, 5, 'Mayo', 2),
('2024-06-18', 2024, 6, 'Junio', 2),
('2024-06-30', 2024, 6, 'Junio', 2),
('2024-07-10', 2024, 7, 'Julio', 3),
('2024-08-03', 2024, 8, 'Agosto', 3),
('2024-08-25', 2024, 8, 'Agosto', 3),
('2024-09-05', 2024, 9, 'Septiembre', 3),
('2024-10-01', 2024, 10, 'Octubre', 4);

INSERT INTO ventas (id_producto, id_cliente, id_canal, id_fecha, cantidad, precio_unitario, total_venta) VALUES
(1, 1, 1, '2024-01-10', 10, 3500, 35000),
(2, 2, 2, '2024-01-25', 20, 2500, 50000),
(3, 3, 3, '2024-02-15', 5, 5400, 27000),
(4, 4, 1, '2024-02-28', 12, 1900, 22800),
(5, 5, 2, '2024-03-10', 8, 7500, 60000),
(6, 6, 1, '2024-04-05', 3, 11200, 33600),
(7, 7, 4, '2024-04-20', 6, 6800, 40800),
(8, 8, 2, '2024-05-12', 10, 4200, 42000),
(9, 9, 1, '2024-06-18', 4, 8700, 34800),
(10, 10, 3, '2024-06-30', 7, 5300, 37100),
(11, 11, 5, '2024-07-10', 9, 3300, 29700),
(12, 12, 1, '2024-08-03', 5, 4300, 21500),
(13, 13, 2, '2024-08-25', 8, 4600, 36800),
(14, 14, 3, '2024-09-05', 6, 3700, 22200),
(15, 15, 1, '2024-10-01', 4, 8900, 35600);

INSERT INTO entregas (id_fecha_envio, id_fecha_entrega, ciudad_destino, estado, transportista) VALUES
('2024-01-10', '2024-01-12', 'Medellín', 'Entregado', 'Rápido Entregas'),
('2024-01-25', '2024-01-27', 'Bogotá', 'Entregado', 'Colvanes'),
('2024-02-15', '2024-02-18', 'Cali', 'Retrasado', 'Entregamax'),
('2024-02-28', '2024-03-01', 'Barranquilla', 'Entregado', 'FlashLog'),
('2024-03-10', '2024-03-13', 'Medellín', 'Retrasado', 'Rápido Entregas'),
('2024-04-05', '2024-04-06', 'Bucaramanga', 'Entregado', 'TCC'),
('2024-04-20', '2024-04-21', 'Cartagena', 'Entregado', 'Coordinadora'),
('2024-05-12', '2024-05-15', 'Pereira', 'Entregado', 'Deprisa'),
('2024-06-18', '2024-06-22', 'Medellín', 'Retrasado', 'InterRapidisimo'),
('2024-06-30', '2024-07-02', 'Manizales', 'Entregado', 'FlashLog'),
('2024-07-10', '2024-07-14', 'Cali', 'Retrasado', 'Colvanes'),
('2024-08-03', '2024-08-06', 'Bogotá', 'Entregado', 'Rápido Entregas'),
('2024-08-25', '2024-08-27', 'Neiva', 'Entregado', 'TCC'),
('2024-09-05', '2024-09-09', 'Cúcuta', 'Entregado', 'Deprisa'),
('2024-10-01', '2024-10-04', 'Ibagué', 'Entregado', 'InterRapidisimo');

INSERT INTO ventas (id_producto, id_cliente, id_canal, id_fecha, cantidad, precio_unitario, total_venta) VALUES
(2, 3, 2, '2025-01-10', 20, 2500, 50000),
(4, 5, 1, '2025-01-25', 10, 1900, 19000),
(6, 1, 4, '2025-02-15', 5, 11200, 56000),
(7, 7, 3, '2025-03-01', 12, 6800, 81600),
(1, 8, 1, '2025-03-15', 8, 3500, 28000),
(9, 2, 2, '2025-04-05', 6, 8700, 52200),
(5, 10, 5, '2025-04-20', 9, 7500, 67500),
(12, 4, 1, '2025-05-12', 11, 4300, 47300),
(14, 6, 3, '2025-06-18', 7, 3700, 25900),
(3, 11, 2, '2025-06-30', 5, 5400, 27000),
(8, 9, 1, '2025-07-10', 10, 4200, 42000),
(10, 13, 4, '2025-08-03', 4, 5300, 21200),
(13, 14, 3, '2025-08-25', 6, 4600, 27600),
(11, 12, 2, '2025-09-05', 8, 3300, 26400),
(15, 15, 1, '2025-10-01', 3, 8900, 26700);

INSERT INTO entregas (id_fecha_envio, id_fecha_entrega, ciudad_destino, estado, transportista) VALUES
('2025-01-10', '2025-01-12', 'Medellín', 'Entregado', 'Rápido Entregas'),
('2025-01-25', '2025-01-27', 'Bogotá', 'Entregado', 'Colvanes'),
('2025-02-15', '2025-02-18', 'Cali', 'Retrasado', 'Entregamax'),
('2025-03-01', '2025-03-03', 'Barranquilla', 'Entregado', 'FlashLog'),
('2025-03-15', '2025-03-18', 'Medellín', 'Retrasado', 'Rápido Entregas'),
('2025-04-05', '2025-04-07', 'Bucaramanga', 'Entregado', 'TCC'),
('2025-04-20', '2025-04-22', 'Cartagena', 'Entregado', 'Coordinadora'),
('2025-05-12', '2025-05-14', 'Pereira', 'Entregado', 'Deprisa'),
('2025-06-18', '2025-06-21', 'Manizales', 'Retrasado', 'InterRapidisimo'),
('2025-06-30', '2025-07-02', 'Cali', 'Entregado', 'FlashLog'),
('2025-07-10', '2025-07-12', 'Bogotá', 'Retrasado', 'Colvanes'),
('2025-08-03', '2025-08-05', 'Neiva', 'Entregado', 'Rápido Entregas'),
('2025-08-25', '2025-08-28', 'Cúcuta', 'Entregado', 'TCC'),
('2025-09-05', '2025-09-08', 'Ibagué', 'Entregado', 'Deprisa'),
('2025-10-01', '2025-10-03', 'Cartagena', 'Entregado', 'InterRapidisimo');


SELECT YEAR(id_fecha) AS anio, COUNT(*) AS total FROM ventas GROUP BY YEAR(id_fecha);
SELECT YEAR(id_fecha_entrega) AS anio, COUNT(*) AS total FROM entregas GROUP BY YEAR(id_fecha_entrega);

SELECT * FROM entregas

INSERT INTO entregas (id_fecha_envio, id_fecha_entrega, ciudad_destino, estado, transportista) VALUES
('2024-01-10', '2024-01-12', 'Medellín', 'Entregado', 'Rápido Entregas'),
('2024-01-25', '2024-01-27', 'Bogotá', 'Entregado', 'Colvanes'),
('2024-02-15', '2024-02-18', 'Cali', 'Retrasado', 'Entregamax'),
('2024-02-28', '2024-03-01', 'Barranquilla', 'Entregado', 'FlashLog'),
('2024-03-10', '2024-03-13', 'Medellín', 'Retrasado', 'Rápido Entregas'),
('2024-04-05', '2024-04-06', 'Bucaramanga', 'Entregado', 'TCC'),
('2024-04-20', '2024-04-21', 'Cartagena', 'Entregado', 'Coordinadora'),
('2024-05-12', '2024-05-15', 'Pereira', 'Entregado', 'Deprisa'),
('2024-06-18', '2024-06-22', 'Manizales', 'Retrasado', 'InterRapidisimo'),
('2024-06-30', '2024-07-02', 'Cali', 'Entregado', 'FlashLog'),
('2024-07-10', '2024-07-14', 'Bogotá', 'Retrasado', 'Colvanes'),
('2024-08-03', '2024-08-06', 'Neiva', 'Entregado', 'Rápido Entregas'),
('2024-08-25', '2024-08-27', 'Cúcuta', 'Entregado', 'TCC'),
('2024-09-05', '2024-09-09', 'Ibagué', 'Entregado', 'Deprisa'),
('2024-10-01', '2024-10-04', 'Cartagena', 'Entregado', 'InterRapidisimo');

SELECT 
  id_fecha_envio, id_fecha_entrega, ciudad_destino, estado, transportista,
  COUNT(*) AS cantidad
FROM entregas
GROUP BY 
  id_fecha_envio, id_fecha_entrega, ciudad_destino, estado, transportista
HAVING COUNT(*) > 1;

WITH duplicados AS (
  SELECT *, 
         ROW_NUMBER() OVER (PARTITION BY 
             id_fecha_envio, id_fecha_entrega, ciudad_destino, estado, transportista
         ORDER BY id_entrega) AS fila
  FROM entregas
)
DELETE FROM duplicados
WHERE fila > 1;

SELECT YEAR(id_fecha_entrega) AS anio, COUNT(*) AS total
FROM entregas
GROUP BY YEAR(id_fecha_entrega);

SELECT id_fecha_envio, id_fecha_entrega, ciudad_destino, estado, transportista, COUNT(*) AS cantidad
FROM entregas
GROUP BY id_fecha_envio, id_fecha_entrega, ciudad_destino, estado, transportista
HAVING COUNT(*) > 1;
