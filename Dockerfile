# ──────────────────────────────────────────────────────────────
# 1. Tiny image that already contains Swagger‑UI + Nginx
FROM swaggerapi/swagger-ui:v5.17.12  # fixed tag keeps builds reproducible

# 2. Bring the OpenAPI spec into the web root that Swagger‑UI serves
COPY openapi.yaml /usr/share/nginx/html/openapi.yaml

# 3. Instruct Swagger‑UI which spec to load at startup
ENV SWAGGER_JSON=/usr/share/nginx/html/openapi.yaml

# (Optional) support many specs at once:
# ENV URLS='[{"url":"/usr/share/nginx/html/openapi.yaml","name":"GitHub"}]'
# ENV URLS_PRIMARY_NAME=GitHub

EXPOSE 8080  # Swagger‑UI listens on port 8080 inside the container
# ──────────────────────────────────────────────────────────────
