#!/usr/bin/with-contenv bashio
# ==============================================================================
# Community Hass.io Add-ons: Home Panel
# This checks if all user configuration requirements are met
# ==============================================================================
# Check SSL settings
bashio::config.require.ssl

if ! bashio::config.has_value 'config_file'; then
  bashio::log.fatal ''
  bashio::log.fatal 'No configuration filename was specified.'
  bashio::log.fatal 'This is required for the add-on to function.'
  bashio::exit.nok
fi
