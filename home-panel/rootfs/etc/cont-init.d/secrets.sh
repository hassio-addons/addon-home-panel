#!/usr/bin/with-contenv bashio
# ==============================================================================
# Community Hass.io Add-ons: Home Panel
# This updates the internal auth secret for the API
# ==============================================================================
# shellcheck disable=2094,2016
bashio::jq /etc/home-panel/default.json '.authentication.secret="$(openssl rand -base64 32)"' > /opt/api/config/default.json
