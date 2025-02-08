# Usa la imagen oficial de n8n
FROM n8nio/n8n:latest

# Cambia a usuario root para instalar paquetes adicionales
USER root

# Actualiza el índice de paquetes e instala los paquetes deseados (ejemplo: nano e ImageMagick)
RUN apk update && apk add --no-cache nano imagemagick && rm -rf /var/cache/apk/*

# Vuelve al usuario predeterminado (normalmente 'node' en la imagen de n8n)
USER node
