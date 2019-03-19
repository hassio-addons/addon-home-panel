#!/usr/bin/with-contenv bashio
# ==============================================================================
# Community Hass.io Add-ons: Home Panel
# This checks if all user configuration requirements are met
# ==============================================================================
# Check SSL requirements, if enabled
if bashio::config.true 'ssl'; then
  if ! bashio::config.has_value 'certfile'; then
    bashio::exit.nok 'SSL is enabled, but no certfile was specified'
  fi

  if ! bashio::config.has_value 'keyfile'; then
    bashio::exit.nok 'SSL is enabled, but no keyfile was specified'
  fi

  if ! bashio::fs.file_exists "/ssl/$(bashio::config 'certfile')"; then
    bashio::exit.nok 'The configured certfile is not found'
  fi

  if ! bashio::fs.file_exists "/ssl/$(bashio::config 'keyfile')"; then
    bashio::exit.nok 'The configured keyfile is not found'
  fi
fi

if ! bashio::config.has_value 'config_file'; then
  bashio::exit.nok 'No config file was specified'
fi
