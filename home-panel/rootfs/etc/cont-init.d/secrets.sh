#!/usr/bin/with-contenv bashio
# ==============================================================================
# Home Assistant Community Add-on: Home Panel
# This updates the internal auth secret for the API
# ==============================================================================
declare key

if ! bashio::fs.file_exists "/data/secret.txt"; then
    bashio::log.info "Generating secret"
    newkey=$(openssl rand -base64 32)
    echo "${newkey}" > /data/secret.txt
fi

key=$(cat /data/secret.txt)

# Set secret to persistent secret file
bashio::log.info "Update secret in config"
sed -i "s#API_AUTH_SECRET#${key}#g" /opt/panel/config/default.json

# Set database to /data
bashio::log.info "Update database path in config"
sed -i "s#../db#/data#g" /opt/panel/config/default.json
