ARG BUILD_FROM=hassioaddons/base:5.0.1
# hadolint ignore=DL3006
FROM ${BUILD_FROM}

# Copy root filesystem
COPY rootfs /

# Install packages
# hadolint ignore=DL3003
RUN \
    apk add --no-cache --virtual .build-dependencies \
        git=2.22.0-r0 \
        yarn=1.16.0-r0 \
    \
    && apk add --no-cache \
        nginx=1.16.1-r0 \
        nodejs-current=12.4.0-r0 \
        openssl=1.1.1d-r0 \
    \
    && git clone --branch "v2.2.0" --depth=1 \
        "https://github.com/timmo001/home-panel.git" /tmp/api \
    && mv /tmp/api/api /opt/panel \
    \
    && mkdir -p /tmp/panel \
    && curl -J -L -o /tmp/panel.zip \
        "https://github.com/timmo001/home-panel/releases/download/v2.2.0/home-panel-built.zip" \
    && unzip -d /tmp/panel /tmp/panel.zip \
    && mv /tmp/panel/build/* /opt/panel/public \
    \
    && cd /opt/panel \
    && yarn install \
    && yarn compile \
    \
    && yarn cache clean \
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
    io.hass.description="A web frontend for controlling the home." \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="Timmo <contact@timmo.xyz>" \
    org.label-schema.description="A web frontend for controlling the home." \
    org.label-schema.build-date=${BUILD_DATE} \
    org.label-schema.name="Home Panel" \
    org.label-schema.schema-version="1.0" \
    org.label-schema.url="https://community.home-assistant.io/t/home-panel-a-touch-compatible-webapp-for-controlling-the-home/62597?u=timmo001" \
    org.label-schema.usage="https://github.com/hassio-addons/addon-home-panel/tree/master/README.md" \
    org.label-schema.vcs-ref=${BUILD_REF} \
    org.label-schema.vcs-url="https://github.com/hassio-addons/addon-home-panel" \
    org.label-schema.vendor="Community Hass.io Add-ons"
