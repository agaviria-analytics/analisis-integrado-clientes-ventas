
# Proyecto Integrado: SQL + Python + Excel + Power BI

Este proyecto demuestra un flujo empresarial completo desde la creación de una base de datos en SQL Server, limpieza y exportación de datos con Python, visualización en Power BI, y buenas prácticas aplicadas.

## 🧱 1. Base de Datos (SQL Server)
Se creó una base de datos con las siguientes tablas:
- productos
- clientes
- canal
- entregas
- fecha
- ventas

### 🔗 Relaciones:
- `ventas` se relaciona con `productos`, `clientes`, `fecha`, `canal`
- `entregas` se relaciona con `fecha`

![Modelo SQL](graficas/modeloER.png)

## 🐍 2. Limpieza y Exportación con Python
### Estructura:
- `exportar_datos.py`: script principal
- `conexion_sql.py`: conexión con SQL usando `pyodbc` + `sqlalchemy`
- `.env`: credenciales seguras

### Librerías utilizadas:
- `pandas`: limpieza de datos
- `matplotlib` y `seaborn`: visualización (top productos, clientes, ventas por mes)
- `os`: rutas dinámicas
- `sqlalchemy` + `pyodbc`: conexión a SQL Server
- `python-dotenv`: leer variables del `.env`

### 🔍 Limpiezas realizadas:

Conversión de columnas numéricas usando pd.to_numeric()
- Eliminación de registros vacíos con dropna()
- Relleno de nulos con fillna() cuando corresponde
- Validación de columnas clave (fecha, cliente_id, producto_id)
- Verificación de duplicados con duplicated()
- Exportación en formato tabla estructurada en Excel usando:
  `with pd.ExcelWriter('ventas_limpias.xlsx', engine='openpyxwl') as writer:`
     `df.to_excel(writer, sheet_name='ventas', index=False)`


## 🔌 Conexión a SQL Server desde Python

Para automatizar la exportación de datos, se estableció una conexión entre Python y SQL Server utilizando las siguientes herramientas:

### 📚 Librerías utilizadas:
- `pyodbc`: permite establecer conexión con SQL Server a través del driver ODBC.
- `sqlalchemy`: facilita el manejo de conexiones y ejecución de consultas SQL de forma estructurada.
- `python-dotenv`: permite gestionar credenciales de forma segura mediante un archivo `.env`.

### 💡 ¿Qué es ODBC?
ODBC (Open Database Connectivity) es un estándar que permite a aplicaciones acceder a diferentes sistemas de bases de datos utilizando drivers específicos. En este caso, se usó el driver `ODBC Driver 17 for SQL Server` para conectar desde Python a SQL Server.

### ⚙️ Detalles clave:
- Se creó un **usuario de solo lectura** en SQL Server para mayor seguridad.
- Se utilizó una **cadena de conexión** armada dinámicamente con `sqlalchemy.create_engine()`.
- Las credenciales (usuario, contraseña, servidor) se almacenaron en `.env` y se leyeron desde Python con `dotenv`.

### 🛡️ Seguridad:
> Las credenciales y parámetros sensibles no se incluyen en el código fuente. Se gestionan desde `.env` y se ignoran en Git con `.gitignore`.

### Tips importantes:
- Crear usuario de solo lectura para exportación segura
- Validar columnas con `sp_help` desde SQL Server
- Exportar con `pandas.to_excel(..., engine='openpyxl')`

## 📊 3. Power BI
Se conectó el Excel exportado con Power BI.
### Modelo Estrella:
- Tabla de hechos: `ventas`
- Tabla de dimensiones: `Calendario`

![Modelo Power BI](graficas/TablaCalendario.png)

### Medidas DAX recomendadas:
- Total Ventas = SUM(ventas[total_venta])
- Unidades Vendidas = SUM(ventas[cantidad])
- Ticket Promedio = DIVIDE([Total Ventas], [Unidades Vendidas])
- Ventas Acumuladas = medida con `CALCULATE` + `FILTER` + `ALLSELECTED`

### Visualizaciones:
- KPI: total ventas, unidades, ticket promedio
- Gráficos: ventas acumuladas, top 5 productos, participación por cliente
- Segmentadores por año

## 📁 Estructura de carpetas:
```
/Análisis Integral de Clientes y Ventas
    ├── README.md
   ├── python_exportador/
   │     ├── exportar_datos.py
   │     ├── conexion_sql.py
   │     ├── datos/
   │     └── graficas/
   │           ├── dashboard.png
   │           ├── modelo_er.png
   │           ├── tabla_calendario.png
   │           ├── top5_productos.png
   │           ├── ventas_por_mes.png
   │           └── participacion_clientes.png
```

## 📷 Gráficos incluidos realizados con python atraves de las librerias matplotlib y seaborn

![Top 5 productos](graficas/top5_productos.png)  
![Ventas por mes](graficas/ventas_por_mes.png)  
![Participación de clientes](graficas/participacion_clientes.png)

🚀 Proyecto ideal para mostrar dominio técnico en SQL, Python y Power BI aplicado a análisis de ventas.

## 📸 Vista del Dashboard en Power BI

![Dashboard Power BI](graficas/dashboard.PNG)