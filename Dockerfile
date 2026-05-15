FROM ignisda/ryot:v10

# Switch to root to modify binary properties
USER root

# Clean out capabilities from any location caddy might hide
RUN setcap -r /usr/bin/caddy || true
RUN setcap -r /usr/local/bin/caddy || true

# Revert back to the unprivileged container user
USER ryot
