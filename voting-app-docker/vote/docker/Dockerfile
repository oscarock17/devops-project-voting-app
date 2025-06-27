FROM python:3.11-alpine

# Paquetes necesarios
RUN apk update && \ 
    apk add --no-cache \
    build-base \
    postgresql-dev \
    gcc  \
    curl
  
# Establecer el directorio de trabajo
WORKDIR /app

# Copiar archivos al contenedor
COPY requirements.txt .

# Instalar las dependencias de la aplicación
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el resto de los archivos de la aplicación
COPY . .

# Establecer la variable de entorno para Flask
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Exponer el puerto en el que la aplicación escuchará
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]