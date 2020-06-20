ARG BUILD_FROM=hassioaddons/base:8.0.0
# hadolint ignore=DL3006
FROM ${BUILD_FROM}

# Copy root filesystem
COPY rootfs /

# Set shell
SHELL ["/bin/ash", "-o", "pipefail", "-c"]

# Install packages
# hadolint ignore=DL3003
RUN \
    apk add --no-cache --virtual .build-dependencies \
        tar=1.32-r1 \
    \
    && apk add --no-cache \
        nginx=1.18.0-r0 \
        nodejs-current=14.3.0-r0 \
        openssl=1.1.1g-r0 \
        yarn=1.22.4-r0 \
    \
    && mkdir -p /opt/panel \
    && curl -L -s "https://github.com/timmo001/home-panel/releases/download/v2.9.6/home-panel.tar.gz" \
        | tar zxvf - -C /opt/panel \
    \
    && cd /opt/panel \
    && yarn install \
    \
    && apk del --purge .build-dependencies \
    && rm -fr /tmp/*

# Build arguments
ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_REF
ARG BUILD_VERSION

# Labels
LABEL \
    io.hass.name="Home Panel" \
    io.hass.description="A web frontend for controlling the home" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="Timmo <contact@timmo.xyz>" \
    org.opencontainers.image.title="Home Panel" \
    org.opencontainers.image.description="A web frontend for controlling the home" \
    org.opencontainers.image.vendor="Home Assistant Community Add-ons" \
    org.opencontainers.image.authors="Timmo <contact@timmo.xyz>" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.url="https://addons.community" \
    org.opencontainers.image.source="https://github.com/hassio-addons/addon-home-panel" \
    org.opencontainers.image.documentation="https://github.com/hassio-addons/addon-home-panel/blob/master/README.md" \
    org.opencontainers.image.created=${BUILD_DATE} \
    org.opencontainers.image.revision=${BUILD_REF} \
    org.opencontainers.image.version=${BUILD_VERSION}
