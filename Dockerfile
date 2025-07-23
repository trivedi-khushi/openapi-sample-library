# ──────────────────────────────────────────────────────────────
# 1. Tiny image that already contains Swagger‑UI + Nginx
FROM swaggerapi/swagger-ui:v5.17.12          # ↰ tag keeps builds reproducible
                                             #    (latest tag works too) :contentReference[oaicite:1]{index=1}

# 2. Brings specification into the web‑root that Swagger‑UI serves
COPY openapi.yaml /usr/share/nginx/html/openapi.yaml        :contentReference[oaicite:2]{index=2}

# 3. Command for instructing Swagger‑UI which spec to load at startup
ENV SWAGGER_JSON=/usr/share/nginx/html/openapi.yaml         :contentReference[oaicite:3]{index=3}

# (Optional) support many specs at once:
# ENV URLS='[{"url":"/usr/share/nginx/html/openapi.yaml","name":"GitHub"}]'
# ENV URLS_PRIMARY_NAME=GitHub                                 :contentReference[oaicite:4]{index=4}

EXPOSE 8080    # Swagger‑UI listens on 8080 inside the container
# ──────────────────────────────────────────────────────────────
