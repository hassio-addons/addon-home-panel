#!/usr/bin/with-contenv bash
# ==============================================================================
# Timmo Hass.io Add-ons: Home Panel
# This copies the nginx configs to their respective locations
# ==============================================================================
# shellcheck disable=SC1091
source /usr/lib/hassio-addons/base.sh

certfile="/ssl/$(hass.config.get 'certfile')"
keyfile="/ssl/$(hass.config.get 'keyfile')"

if hass.config.true 'ssl'; then
  hass.log.info "Copy enabled SSL nginx config"
  echo "server {
    listen 8234 ssl http2 default_server;
    listen [::]:8234 ssl http2 default_server;
    root /usr/share/nginx/html;
    index index.html;
    server_name 172.0.0.1;
    ssl_certificate ${certfile};
    ssl_certificate_key ${keyfile};
    location / {
      try_files \$uri /index.html;
    }
  }" > /etc/nginx/conf.d/default.conf;
else
  hass.log.info "Copy disabled SSL nginx config"
  echo "server {
    listen 8234 default_server;
    listen [::]:8234 default_server;
    root /usr/share/nginx/html;
    index index.html;
    server_name 172.0.0.1;
    location / {
      try_files \$uri /index.html;
    }
  }" > /etc/nginx/conf.d/default.conf;
fi
