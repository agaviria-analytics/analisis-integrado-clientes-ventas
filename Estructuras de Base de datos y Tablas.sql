--CREAR LA BASE DE DATOS
CREATE DATABASE proyecto_ventas_integrador;

--USAR ESTA BASE DE DATOS PARA TODAS LAS INSTRUCCIONES QUE SE ESCRIBAN
USE proyecto_ventas_integrador;

--CREAR TABLAS
CREATE TABLE clientes(
	id_cliente INT IDENTITY(1,1) PRIMARY KEY,
	nombre NVARCHAR(50),
	ciudad NVARCHAR(50),
	tipo_cliente NVARCHAR(30)
);

CREATE TABLE productos(
	id_producto INT IDENTITY(1,1)PRIMARY KEY,
	nombre_producto NVARCHAR(50),
	categoria NVARCHAR(50),
	proveedor NVARCHAR(50),
	precio_unitario DECIMAL(10,2)
);

CREATE TABLE canal(
	id_canal INT IDENTITY(1,1)PRIMARY KEY,
	nombre_canal NVARCHAR(50),
	descripcion NVARCHAR(50)
);

CREATE TABLE fecha(
	id_fecha DATE PRIMARY KEY,
	anio INT,
	mes INT,
	nombre_mes NVARCHAR(20),
	trimestre INT
);

CREATE tABLE ventas(
	id_venta INT IDENTITY(1,1) PRIMARY KEY,
	id_producto INT,
	id_cliente INT,
	id_canal INT,
	id_fecha DATE,
	cantidad INT,
	precio_unitario DECIMAL(10,2),
	total_venta DECIMAL(10,2),
	FOREIGN KEY(id_producto) REFERENCES productos (id_producto),
	FOREIGN KEY(id_cliente) REFERENCES clientes (id_cliente),
	FOREIGN KEY(id_canal) REFERENCES canal (id_canal),
	FOREIGN KEY(id_fecha) REFERENCES fecha (id_fecha),
);

CREATE TABLE entregas(
	id_entrega INT IDENTITY (1,1)PRIMARY KEY,
	id_fecha_envio DATE,
	id_fecha_entrega DATE,
	ciudad_destino NVARCHAR(50),
	estado NVARCHAR(30),
	transportista NVARCHAR(50),
	tiempo_entrega AS DATEDIFF(DAY,id_fecha_envio,id_fecha_entrega)PERSISTED
);