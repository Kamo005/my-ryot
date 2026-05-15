FROM ignisda/ryot:v10

# Disable the Caddy proxy wrapper and run the app backend directly
ENTRYPOINT ["/usr/local/bin/backend"]
