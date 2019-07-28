#!/usr/bin/with-contenv bashio
# ==============================================================================
# Community Hass.io Add-ons: Home Panel
# This updates the internal auth secret for the API
# ==============================================================================
# shellcheck disable=2094,2016
# TODO: Fix this
# bashio::jq /opt/panel/config/default.json '.authentication.secret="$(openssl rand -base64 32)"' > /opt/panel/config/default.json
