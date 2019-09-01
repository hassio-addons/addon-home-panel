#!/usr/bin/with-contenv bashio
# ==============================================================================
# Community Hass.io Add-ons: Home Panel
# This updates the internal auth secret for the API
# ==============================================================================
if [ $(cat /opt/panel/config/default.json | grep -c "API_AUTH_SECRET") = 0 ]; then
    bashio::log.info "Update auth secret.."
    sed -i -e "s/API_AUTH_SECRET/$(openssl rand -base64 32)/g" /opt/panel/config/default.json
fi
