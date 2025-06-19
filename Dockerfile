# 1. Basis-Image von nginx
FROM nginx:alpine

# 2. Statische Dateien ins richtige nginx-Verzeichnis kopieren
COPY index.html /usr/share/nginx/html/
COPY css /usr/share/nginx/html/css
COPY js /usr/share/nginx/html/js
COPY assets /usr/share/nginx/html/assets

# 3. Eigene nginx.conf einbinden
COPY nginx.conf /etc/nginx/nginx.conf

# 4. Port freigeben (Standard bei nginx ist 80)
EXPOSE 80

# 5. Startbefehl (kommt bei nginx-Images aber automatisch)
CMD ["nginx", "-g", "daemon off;"]
