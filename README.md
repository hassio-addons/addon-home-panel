# Timmo Hass.io Add-ons: Home Panel

[![GitHub Release][releases-shield]][releases]
![Project Stage][project-stage-shield]
[![License][license-shield]](LICENSE.md)

[![GitLab CI][gitlabci-shield]][gitlabci]
![Project Maintenance][maintenance-shield]
[![GitHub Activity][commits-shield]][commits]

[![Bountysource][bountysource-shield]][bountysource]

[Home Panel][home-panel] add-on

## About

A touch-compatible web-app for controlling the home. Integrates with
 [Home Assistant][hass] as an alternative / additional frontend.

## Features

- Card based user interface with support for [HASS][hass] entities, links and
 cameras.
- Supports and can be used as alternate / additional frontend for
 [Home Assistant][hass]
- Supports MJPEG and related image-based camera/image feeds
 (can also be used as a photo frame)
- Light control with brightness, temperature, color, effects etc. support
- Supports Radio playback from TuneIn API
- Add weather and weather icons using Home Assistant's
 [Dark Sky](https://www.home-assistant.io/components/weather.darksky/)
 component
- Made for touch screens with a sideways scrolling Material
 Design interface. (Compatible with desktops as well)

## Screenshots

![Light Theme Screenshot][light-theme]
![More Info Light Screenshot][more-info-light]

![Dark Theme Screenshot][dark-theme]
![More Info Dark Screenshot][more-info-dark]

![Radio Screenshot][radio]

## Installation

The installation of this add-on is pretty straightforward and not different in
comparison to installing any other Hass.io add-on.

1. [Add our Hass.io add-ons repository][repository] to your Hass.io instance.
1. Install the "Home Panel" add-on
1. Configure the "Home Panel" add-on (See below)
1. Start the "Home Panel" add-on
1. Check the logs of the "Home Panel" add-on to see it in action.

**NOTE**: Do not add this repository to Hass.io, please use:
`https://github.com/timmo001/repository`.

## Docker status

![Supports armhf Architecture][armhf-shield]
![Supports aarch64 Architecture][aarch64-shield]
![Supports amd64 Architecture][amd64-shield]
![Supports i386 Architecture][i386-shield]

[![Docker Version][version-shield]][microbadger]
[![Docker Layers][layers-shield]][microbadger]
[![Docker Pulls][pulls-shield]][dockerhub]

## Configuration

**Note**: _Remember to restart the add-on when the configuration is changed._

Example add-on configuration:

```json
{
    "log_level": "info",
    "ssl": true,
    "certfile": "fullchain.pem",
    "keyfile": "privkey.pem",
    "config_file": "home-panel-config.json"
}
```

### Option: `log_level`

The `log_level` option controls the level of log output by the addon and can
be changed to be more or less verbose, which might be useful when you are
dealing with an unknown issue. Possible values are:

- `trace`: Show every detail, like all called internal functions.
- `debug`: Shows detailed debug information.
- `info`: Normal (usually) interesting events.
- `warning`: Exceptional occurrences that are not errors.
- `error`:  Runtime errors that do not require immediate action.
- `fatal`: Something went terribly wrong. Add-on becomes unusable.

Please note that each level automatically includes log messages from a
more severe level, e.g., `debug` also shows `info` messages. By default,
the `log_level` is set to `info`, which is the recommended setting unless
you are troubleshooting.

### Option: `ssl`

Enables/Disables SSL (HTTPS) on the IDE. Set it `true` to enable it,
`false` otherwise.

### Option: `certfile`

The certificate file to use for SSL.

**Note**: _The file MUST be stored in `/ssl/`, which is default for Hass.io_

### Option: `keyfile`

The private key file to use for SSL.

**Note**: _The file MUST be stored in `/ssl/`, which is default for Hass.io_

### Option: `config_file`

The location of your config.json in /config.

## Changelog & Releases

This repository keeps a change log using [GitHub's releases][releases]
functionality. The format of the log is based on
[Keep a Changelog][keepchangelog].

Releases are based on [Semantic Versioning][semver], and use the format
of ``MAJOR.MINOR.PATCH``. In a nutshell, the version will be incremented
based on the following:

- ``MAJOR``: Incompatible or major changes.
- ``MINOR``: Backwards-compatible new features and enhancements.
- ``PATCH``: Backwards-compatible bugfixes and package updates.

## Support

You can [open an issue here][issue] on GitHub.

## Contributing

This is an active open-source project. We are always open to people who want to
use the code or contribute to it.

We have set up a separate document containing our
[contribution guidelines](CONTRIBUTING.md).

Thank you for being involved! :heart_eyes:

## Authors & contributors

The original setup of this repository is by [Timmo][Timmo].

For a full list of all authors and contributors,
check [the contributor's page][contributors].

## We have got some Hass.io add-ons for you

Want some more functionality to your Hass.io Home Assistant instance?

We have created multiple add-ons for Hass.io. For a full list, check out
our [GitHub Repository][repository].

## License

MIT License

Copyright (c) Timmo

Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to
 deal in the Software without restriction, including without limitation the
 rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
 sell copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
 THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.

[aarch64-shield]: https://img.shields.io/badge/aarch64-yes-green.svg
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg
[anchore-shield]: https://anchore.io/service/badges/image/8f74a497abc908834244d697a67675ecd13080199270598283c8e0cea1b1723e
[armhf-shield]: https://img.shields.io/badge/armhf-yes-green.svg
[bountysource-shield]: https://img.shields.io/bountysource/team/timmo001/activity.svg
[bountysource]: https://www.bountysource.com/teams/timmo001/issues
[commits-shield]: https://img.shields.io/github/commit-activity/y/timmo001/addon-home-panel.svg
[commits]: https://github.com/timmo001/addon-home-panel/commits/master
[contributors]: https://github.com/timmo001/addon-home-panel/graphs/contributors
[dockerhub]: https://hub.docker.com/r/hassioaddons/home-panel
[forum-shield]: https://img.shields.io/badge/community-forum-brightgreen.svg
[timmo]: https://github.com/timmo001
[gitlabci-shield]: https://gitlab.com/timmo001/addon-home-panel/badges/master/pipeline.svg
[gitlabci]: https://gitlab.com/timmo001/addon-home-panel/pipelines
[i386-shield]: https://img.shields.io/badge/i386-yes-green.svg
[issue]: https://github.com/timmo001/addon-home-panel/issues
[keepchangelog]: http://keepachangelog.com/en/1.0.0/
[layers-shield]: https://images.microbadger.com/badges/image/hassioaddons/home-panel.svg
[license-shield]: https://img.shields.io/github/license/timmo001/addon-home-panel.svg
[maintenance-shield]: https://img.shields.io/maintenance/yes/2018.svg
[microbadger]: https://microbadger.com/images/hassioaddons/home-panel
[project-stage-shield]: https://img.shields.io/badge/project%20stage-production%20ready-brightgreen.svg
[pulls-shield]: https://img.shields.io/docker/pulls/hassioaddons/home-panel.svg
[reddit]: https://reddit.com/r/homeassistant
[releases-shield]: https://img.shields.io/github/release/timmo001/addon-home-panel.svg
[releases]: https://github.com/timmo001/addon-home-panel/releases
[repository]: https://github.com/timmo001/repository
[semver]: http://semver.org/spec/v2.0.0.html
[version-shield]: https://images.microbadger.com/badges/version/hassioaddons/home-panel.svg
[home-panel]: https://github.com/timmo001/home-panel
[light-theme]: https://raw.githubusercontent.com/timmo001/home-panel/master/docs/resources/light-theme.png
[dark-theme]: https://raw.githubusercontent.com/timmo001/home-panel/master/docs/resources/dark-theme.png
[more-info-light]: https://raw.githubusercontent.com/timmo001/home-panel/master/docs/resources/more-info-light.png
[more-info-dark]: https://raw.githubusercontent.com/timmo001/home-panel/master/docs/resources/more-info-dark.png
[radio]: https://raw.githubusercontent.com/timmo001/home-panel/master/docs/resources/radio.png
[hass]: https://www.home-assistant.io/
[docs]: https://git.timmo.xyz/home-panel/
[config]: https://git.timmo.xyz/home-panel/configuration/
