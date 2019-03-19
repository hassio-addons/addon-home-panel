#!/usr/bin/with-contenv bashio
# ==============================================================================
# Community Hass.io Add-ons: Home Panel
# Configures NGINX for use with Home Panel
# ==============================================================================
declare certfile
declare keyfile

# Enable SSL
if bashio::config.true 'ssl'; then
    certfile=$(bashio::config 'certfile')
    keyfile=$(bashio::config 'keyfile')

    sed -i "s/%%certfile%%/${certfile}/g" /etc/nginx/nginx-ssl.conf
    sed -i "s/%%keyfile%%/${keyfile}/g" /etc/nginx/nginx-ssl.conf
fi
