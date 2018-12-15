#!/usr/bin/with-contenv bash
# ==============================================================================
# Community Hass.io Add-ons: Home Panel
# This checks if all user configuration requirements are met
# ==============================================================================
# shellcheck disable=SC1091
source /usr/lib/hassio-addons/base.sh

# Check SSL requirements, if enabled
if hass.config.true 'ssl'; then
  if ! hass.config.has_value 'certfile'; then
    hass.die 'SSL is enabled, but no certfile was specified'
  fi

  if ! hass.config.has_value 'keyfile'; then
    hass.die 'SSL is enabled, but no keyfile was specified'
  fi

  if ! hass.file_exists "/ssl/$(hass.config.get 'certfile')"; then
    hass.die 'The configured certfile is not found'
  fi

  if ! hass.file_exists "/ssl/$(hass.config.get 'keyfile')"; then
    hass.die 'The configured keyfile is not found'
  fi
fi

if ! hass.config.has_value 'config_file'; then
  hass.die 'No config file was specified'
fi
