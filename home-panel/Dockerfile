ARG BUILD_FROM=hassioaddons/base:2.3.1
# hadolint ignore=DL3006
FROM ${BUILD_FROM}

# Install packages
# hadolint ignore=DL3003
RUN \
     apk add --no-cache --virtual .build-dependencies \
          yarn=1.7.0-r0 \
          git=2.18.1-r0 \
     \
     && apk add --no-cache \
          nodejs-current=9.11.1-r2 \
          nginx=1.14.2-r0 \
     \
     && git clone --branch "v0.4.2" --depth=1 \
          "https://github.com/timmo001/home-panel-api.git" /opt/api \
     \
     && curl -J -L -o /tmp/panel.zip \
          "https://github.com/timmo001/home-panel/releases/download/v0.6.8/home-panel-built.zip" \
     && unzip -d /tmp /tmp/panel.zip \
     && mv /tmp/build /opt/panel \
     \
     && cd /opt/api \
     && yarn install \
     \
     && yarn cache clean \
     && apk del --purge .build-dependencies \
     && rm -fr /tmp/*

# Copy root filesystem
COPY rootfs /

# Build arguments
ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_REF
ARG BUILD_VERSION

# Labels
LABEL \
    io.hass.name="Home Panel" \
    io.hass.description="A touch-compatible web frontend for controlling the home." \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="Timmo <contact@timmo.xyz>" \
    org.label-schema.description="A touch-compatible web frontend for controlling the home." \
    org.label-schema.build-date=${BUILD_DATE} \
    org.label-schema.name="Home Panel" \
    org.label-schema.schema-version="1.0" \
    org.label-schema.url="https://community.home-assistant.io/t/home-panel-a-touch-compatible-webapp-for-controlling-the-home/62597?u=timmo001" \
    org.label-schema.usage="https://github.com/hassio-addons/addon-home-panel/tree/master/README.md" \
    org.label-schema.vcs-ref=${BUILD_REF} \
    org.label-schema.vcs-url="https://github.com/hassio-addons/addon-home-panel" \
    org.label-schema.vendor="Community Hass.io Add-ons"
