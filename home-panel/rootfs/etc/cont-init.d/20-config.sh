#!/usr/bin/with-contenv bash
# ==============================================================================
# Timmo Hass.io Add-ons: Home Panel
# This copies the configs to their respective locations
# ==============================================================================
# shellcheck disable=SC1091
source /usr/lib/hassio-addons/base.sh

config_file="/config/$(hass.config.get 'config_file')"

if [ ! -f "$config_file" ]; then
  hass.log.info "Config file does not exist. Creating.."
  cp /etc/home-panel/home-panel-config.default.json "$config_file"
  hass.log.info "You should now edit this file, then restart the addon."
fi

hass.log.info "Copy config.."

mkdir -p /data/api/files
cp "$config_file" /data/api/files/config.json
