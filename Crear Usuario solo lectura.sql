--CREAR USUARIO DE SOLO LECTURA
CREATE LOGIN exportador_python WITH PASSWORD = 'alejo0814';

USE proyecto_ventas_integrador;
CREATE USER exportador_python FOR LOGIN exportador_python;

-- Solo lectura
GRANT SELECT ON SCHEMA :: dbo TO exportador_python;