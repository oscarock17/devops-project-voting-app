# 🗳️ Voting App - Sistema Distribuido con Docker

Este proyecto es una aplicación de votación compuesta por múltiples microservicios: una API principal en Flask, una interfaz de resultados en Node.js, un worker de procesamiento en segundo plano, y servicios de base de datos con PostgreSQL y Redis. Todo está orquestado con Docker Compose y expuesto a través de Nginx.

---

## 📁 Estructura del proyecto

- cada servicio tiene su carpeta **docker** y dentro de esa un archivo **dockerfile**
- **docker-compose.yml**: orquestacion y conexion de los contenedores
- **env**: archivo de configuracion de las variables de la aplicación


## 🚀 Servicios

| Servicio      | Descripción                             | Puerto        |
|---------------|-----------------------------------------|---------------|
| `nginx`       | Proxy inverso para Flask                | 80            |
| `flask_app`   | API REST en Flask (votación)            | interno       |
| `result_app`  | Aplicación Node.js (resultados)         | 3000          |
| `worker_app`  | Proceso en segundo plano                | interno       |
| `postgres_db` | Base de datos PostgreSQL                | 5432 (opcional) |
| `redis_cache` | Almacenamiento en caché Redis           | 6379 (opcional) |

---

## ⚙️ Requisitos

- Docker
- Docker Compose

---

## 📦 Instalación y ejecución

1. Clona el repositorio:

```bash
git clone https://github.com/oscarock17/devops-project-voting-app
cd devops-project-voting-app/voting-app-docker
```
3. Renombrar el archivo env y modificar las variabless:

```bash
cambiar el nombre .env-example por .env
```

2. Ejecutar docker:

```bash
docker compose up -d 
```

3. ver logs:

```bash
docker logs <contenedor_id>
```

4. Ingresar al navegador
```bash
http://localhost/ #app flask
http://localhost:3000/ #app results
```

---

> Consulta el [README principal](../README.md) para más