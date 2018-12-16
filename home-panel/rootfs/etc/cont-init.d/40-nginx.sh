#!/usr/bin/with-contenv bash
# ==============================================================================
# Community Hass.io Add-ons: Home Panel
# Configures NGINX for use with Home Panel
# ==============================================================================
# shellcheck disable=SC1091
source /usr/lib/hassio-addons/base.sh

declare certfile
declare keyfile

# Enable SSL
if hass.config.true 'ssl'; then
    certfile=$(hass.config.get 'certfile')
    keyfile=$(hass.config.get 'keyfile')

    sed -i "s/%%certfile%%/${certfile}/g" /etc/nginx/nginx-ssl.conf
    sed -i "s/%%keyfile%%/${keyfile}/g" /etc/nginx/nginx-ssl.conf
fi
