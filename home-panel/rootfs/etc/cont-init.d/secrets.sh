#!/usr/bin/with-contenv bashio
# ==============================================================================
# Community Hass.io Add-ons: Home Panel
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
sed -i "s/API_AUTH_SECRET/${key}/g" /opt/panel/config/default.json

# Set database to /data
sed -i "s#../db#/data#g" /opt/panel/config/default.json
