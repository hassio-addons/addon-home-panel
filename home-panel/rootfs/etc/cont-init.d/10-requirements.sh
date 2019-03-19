#!/usr/bin/with-contenv bashio
# ==============================================================================
# Community Hass.io Add-ons: Home Panel
# This checks if all user configuration requirements are met
# ==============================================================================
# Check SSL settings
bashio::config.require.ssl

if ! bashio::config.has_value 'config_file'; then
  bashio::exit.nok 'No config file was specified'
fi
