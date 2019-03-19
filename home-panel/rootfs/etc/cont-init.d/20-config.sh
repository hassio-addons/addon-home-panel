#!/usr/bin/with-contenv bashio
# ==============================================================================
# Community Hass.io Add-ons: Home Panel
# This copies the configs to their respective locations
# ==============================================================================
declare config_file

config_file="/config/$(bashio::config 'config_file')"

if ! bashio::fs.file_exists "${config_file}"; then
  bashio::log.info "Config file does not exist. Creating.."
  cp /etc/home-panel/home-panel-config.default.json "${config_file}"
  bashio::log.info "Created. You should now edit this file at '${config_file}'"
fi
