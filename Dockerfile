FROM ignisda/ryot:v10

# Switch to root to modify system permissions
USER root

# Remove the capability that causes Render's security system to block the container
RUN apt-get update && apt-get install -y libcap2-bin && setcap -r /usr/bin/caddy || true

# Switch back to the standard non-root user for security
USER ryot
