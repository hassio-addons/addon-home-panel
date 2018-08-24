ARG BUILD_FROM=hassioaddons/base:2.1.2
# hadolint ignore=DL3006
FROM ${BUILD_FROM}

# Copy root filesystem
COPY rootfs /

# Install packages
RUN \
    apk add --no-cache \
     nodejs-current=9.11.1-r2 \
     yarn=1.7.0-r0 \
     nginx=1.14.0-r0 \
     git=2.18.0-r0 \
     wget=1.19.5-r0 \
     zip=3.0-r6 \
     inotify-tools=3.20.1-r1

# Create nginx directories
RUN mkdir -p /run/nginx && mkdir -p /usr/share/nginx/html

# App
WORKDIR /usr/src/app

# Download and unzip into nginx html directory
RUN \
    wget https://github.com/timmo001/home-panel/releases/download/v0.5.4/home-panel-built.zip \
    && unzip home-panel-built.zip \
    && rm -Rf /usr/share/nginx/html/* \
    && mv build/* /usr/share/nginx/html \
    && rm -Rf ./*

# API
WORKDIR /usr/src/api

# Clone and checkout API release
RUN \
    git clone https://github.com/timmo001/home-panel-api.git ./ \
    && git checkout v0.2.4

# Install dependencies
RUN yarn install && yarn cache clean

# Build arugments
ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_REF
ARG BUILD_VERSION

# Labels
LABEL \
    io.hass.name="Home Panel" \
    io.hass.description="A touch-compatible web-app for controlling the home" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="Timmo" \
    org.label-schema.description="A touch-compatible web-app for controlling the home" \
    org.label-schema.build-date=${BUILD_DATE} \
    org.label-schema.name="Home Panel" \
    org.label-schema.schema-version="1.0" \
    org.label-schema.url="https://git.timmo.xyz/home-panel" \
    org.label-schema.usage="https://github.com/timmo001/addon-home-panel/tree/master/README.md" \
    org.label-schema.vcs-ref=${BUILD_REF} \
    org.label-schema.vcs-url="https://github.com/timmo001/addon-home-panel" \
    org.label-schema.vendor="Timmo Hass.io Addons"
