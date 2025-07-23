# 1. Tiny image that already contains Swagger‑UI + Nginx
FROM swaggerapi/swagger-ui:v5.17.12

# 2. Brings specification into the web‑root that Swagger‑UI serves
COPY openapi.yaml /usr/share/nginx/html/openapi.yaml

# 3. Command for instructing Swagger‑UI which spec to load at startup
ENV SWAGGER_JSON=/usr/share/nginx/html/openapi.yaml

EXPOSE 8080
