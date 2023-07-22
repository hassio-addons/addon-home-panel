ARG BUILD_FROM=ghcr.io/hassio-addons/base:14.0.5
# hadolint ignore=DL3006
FROM ${BUILD_FROM}

# Copy root filesystem
COPY rootfs /

# Set shell
SHELL ["/bin/ash", "-o", "pipefail", "-c"]

# Install packages
ARG HOME_PANEL_VERSION="v2.11.6"
# hadolint ignore=DL3003
RUN \
    apk add --no-cache --virtual .build-dependencies \
        tar=1.34-r3 \
    \
    && apk add --no-cache \
        nginx=1.24.0-r6 \
        nodejs=18.17.0-r0 \
        openssl=3.1.1-r3 \
        yarn=1.22.19-r0 \
    \
    && mkdir -p /opt/panel \
    && curl -L -s "https://github.com/timmo001/home-panel/releases/download/${HOME_PANEL_VERSION}/home-panel.tar.gz" \
        | tar zxvf - -C /opt/panel \
    \
    && cd /opt/panel \
    && yarn install \
    \
    && yarn cache clean \
    && apk del --no-cache --purge .build-dependencies \
    && rm -fr /tmp/*

# Build arguments
ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_DESCRIPTION
ARG BUILD_NAME
ARG BUILD_REF
ARG BUILD_REPOSITORY
ARG BUILD_VERSION

# Labels
LABEL \
    io.hass.name="${BUILD_NAME}" \
    io.hass.description="${BUILD_DESCRIPTION}" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="Timmo <contact@timmo.xyz>" \
    org.opencontainers.image.title="${BUILD_NAME}" \
    org.opencontainers.image.description="${BUILD_DESCRIPTION}" \
    org.opencontainers.image.vendor="Home Assistant Community Add-ons" \
    org.opencontainers.image.authors="Timmo <contact@timmo.xyz>" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.url="https://addons.community" \
    org.opencontainers.image.source="https://github.com/${BUILD_REPOSITORY}" \
    org.opencontainers.image.documentation="https://github.com/${BUILD_REPOSITORY}/blob/main/README.md" \
    org.opencontainers.image.created=${BUILD_DATE} \
    org.opencontainers.image.revision=${BUILD_REF} \
    org.opencontainers.image.version=${BUILD_VERSION}
