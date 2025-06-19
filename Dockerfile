# 1. Basis-Image von nginx
FROM nginx:alpine

# 2. Deine statischen Dateien ins richtige nginx-Verzeichnis kopieren
COPY site/ /usr/share/nginx/html

# 3. (Optional) Eigene nginx.conf, falls du spezielle Einstellungen willst
# COPY nginx.conf /etc/nginx/nginx.conf

# 4. Port freigeben (Standard bei nginx ist 80)
EXPOSE 80

# 5. Startbefehl (kommt bei nginx-Images aber automatisch)
CMD ["nginx", "-g", "daemon off;"]
