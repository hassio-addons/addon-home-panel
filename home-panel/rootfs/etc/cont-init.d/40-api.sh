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
  hass.log.info "Copy SSL certs to api directory"
  cp "$certfile" /data/api/fullchain.pem
  cp "$keyfile" /data/api/privkey.pem
fi
