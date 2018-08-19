#!/usr/bin/with-contenv bash
# ==============================================================================
# Timmo Hass.io Add-ons: Home Panel
# This copies the api files to their respective locations
# ==============================================================================
# shellcheck disable=SC1091
source /usr/lib/hassio-addons/base.sh

certfile="/ssl/$(hass.config.get 'certfile')"
keyfile="/ssl/$(hass.config.get 'keyfile')"

if hass.config.true 'ssl'; then
  hass.log.info "Copy SSL certs to API directory.."
  cp "$certfile" /usr/src/api/fullchain.pem
  cp "$keyfile" /usr/src/api/privkey.pem
fi

if hass.file_exists "/config/home-panel.db"; then
  hass.log.info "Copy DB to api.."
  mkdir -p /usr/src/api/files
  cp /config/home-panel.db /usr/src/api/files/home-panel.db
fi
