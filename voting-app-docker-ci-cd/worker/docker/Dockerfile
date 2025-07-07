FROM node:20-alpine

# Paquetes necesarios
RUN apk update && apk add --no-cache

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar package.json y package-lock.json si existe
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto de la aplicación
COPY . .

# Comando por defecto (ajusta si usas otro archivo)
CMD ["node", "main.js"]