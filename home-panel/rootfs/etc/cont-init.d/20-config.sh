#!/usr/bin/with-contenv bash
# ==============================================================================
# Community Hass.io Add-ons: Home Panel
# This copies the configs to their respective locations
# ==============================================================================
# shellcheck disable=SC1091
source /usr/lib/hassio-addons/base.sh

config_file="/config/$(hass.config.get 'config_file')"

if [ ! -f "$config_file" ]; then
  hass.log.info "Config file does not exist. Creating.."
  cp /etc/home-panel/home-panel-config.default.json "$config_file"
  hass.log.info "Created. You should now edit this file at '$config_file'"
fi
