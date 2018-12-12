# Community Hass.io Add-ons: Home Panel

[![GitHub Release][releases-shield]][releases]
![Project Stage][project-stage-shield]
[![License][license-shield]](LICENSE.md)

[![GitLab CI][gitlabci-shield]][gitlabci]
![Project Maintenance][maintenance-shield]
[![GitHub Activity][commits-shield]][commits]

[![Bountysource][bountysource-shield]][bountysource]
[![Discord][discord-shield]][discord]
[![Community Forum][forum-shield]][forum]

[![Buy me a coffee][buymeacoffee-shield]][buymeacoffee]

[![Support my work on Patreon][patreon-shield]][patreon]

A touch-compatible web frontend for controlling the home.

## About

A touch-compatible web frontend for controlling the home. Integrates with
 [Home Assistant][hass] as an alternative / additional frontend. Uses a
 customisable and themeable card based UI which can be used on a touch screen.

![banner][banner]

## Screenshots

![Midnight Theme Screenshot][midnight-theme]

![More Info Light Screenshot][more-info-light]

![Radio Screenshot][radio]

![Forest Theme Screenshot][forest-theme]

## Installation

The installation of this add-on is pretty straightforward and not different in
comparison to installing any other Hass.io add-on.

1. [Add our Hass.io add-ons repository][repository] to your Hass.io instance.
1. Install the "Home Panel" add-on.
1. Configure the "Home Panel" add-on. (See below)
1. Start the "Home Panel" add-on.
1. Check the logs of the "Home Panel" add-on to see it in action.
1. Surf to your Hass.io instance and use port `8234`
    (e.g. `https://hassio.local:8234`).
1. Create a new account.
1. Once logged in, There will be a prompt to login to Home Assistant.

**NOTE**: Do not add this repository to Hass.io, please use:
`https://github.com/timmo001/repository`.

## Docker status

[![Docker Architecture][armhf-arch-shield]][armhf-dockerhub]
[![Docker Version][armhf-version-shield]][armhf-microbadger]
[![Docker Layers][armhf-layers-shield]][armhf-microbadger]
[![Docker Pulls][armhf-pulls-shield]][armhf-dockerhub]
[![Anchore Image Overview][armhf-anchore-shield]][armhf-anchore]

[![Docker Architecture][aarch64-arch-shield]][aarch64-dockerhub]
[![Docker Version][aarch64-version-shield]][aarch64-microbadger]
[![Docker Layers][aarch64-layers-shield]][aarch64-microbadger]
[![Docker Pulls][aarch64-pulls-shield]][aarch64-dockerhub]
[![Anchore Image Overview][aarch64-anchore-shield]][aarch64-anchore]

[![Docker Architecture][amd64-arch-shield]][amd64-dockerhub]
[![Docker Version][amd64-version-shield]][amd64-microbadger]
[![Docker Layers][amd64-layers-shield]][amd64-microbadger]
[![Docker Pulls][amd64-pulls-shield]][amd64-dockerhub]
[![Anchore Image Overview][amd64-anchore-shield]][amd64-anchore]

[![Docker Architecture][i386-arch-shield]][i386-dockerhub]
[![Docker Version][i386-version-shield]][i386-microbadger]
[![Docker Layers][i386-layers-shield]][i386-microbadger]
[![Docker Pulls][i386-pulls-shield]][i386-dockerhub]
[![Anchore Image Overview][i386-anchore-shield]][i386-anchore]

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

The location of your config.json in `/config/`. More information on
 configuration [here][config]. You can edit the config file while the
 addon is running. Just refresh the app's page.

**Note**: _The file MUST be stored in `/config/`.

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

Got questions?

You have several options to get them answered:

- The [Community Hass.io Add-ons Discord chat server][discord] for add-on
  support and feature requests.
- The [Home Assistant Discord chat server][discord-ha] for general Home
  Assistant discussions and questions.
- The Home Assistant [Community Forum][forum].
- Join the [Reddit subreddit][reddit] in [/r/homeassistant][reddit]

You could also [open an issue here][issue] on GitHub.

## Contributing

This is an active open-source project. We are always open to people who want to
use the code or contribute to it.

We have set up a separate document containing our
[contribution guidelines](CONTRIBUTING.md).

Thank you for being involved! :heart_eyes:

## Authors & contributors

The original setup of this repository is by [Franck Nijhof][frenck].

For a full list of all authors and contributors,
check [the contributor's page][contributors].

## We have got some Hass.io add-ons for you

Want some more functionality to your Hass.io Home Assistant instance?

We have created multiple add-ons for Hass.io. For a full list, check out
our [GitHub Repository][repository].

## License

MIT License

Copyright (c) 2018 Franck Nijhof

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

[aarch64-anchore-shield]: https://anchore.io/service/badges/image/3a52e98fc35e238711880453f882da1578f46af2019f705077a1202b633c2b21
[aarch64-anchore]: https://anchore.io/image/dockerhub/hassioaddons%2Fhome-panel-aarch64%3Alatest
[aarch64-arch-shield]: https://img.shields.io/badge/architecture-aarch64-blue.svg
[aarch64-dockerhub]: https://hub.docker.com/r/hassioaddons/home-panel-aarch64
[aarch64-layers-shield]: https://images.microbadger.com/badges/image/hassioaddons/home-panel-aarch64.svg
[aarch64-microbadger]: https://microbadger.com/images/hassioaddons/home-panel-aarch64
[aarch64-pulls-shield]: https://img.shields.io/docker/pulls/hassioaddons/home-panel-aarch64.svg
[aarch64-version-shield]: https://images.microbadger.com/badges/version/hassioaddons/home-panel-aarch64.svg
[alpine-packages]: https://pkgs.alpinelinux.org/packages
[amd64-anchore-shield]: https://anchore.io/service/badges/image/f7a8fc048af61c13119239a4411cead2cf775029eb09f7af3e0a2f5183d0669a
[amd64-anchore]: https://anchore.io/image/dockerhub/hassioaddons%home-panel-amd64%3Alatest
[amd64-arch-shield]: https://img.shields.io/badge/architecture-amd64-blue.svg
[amd64-dockerhub]: https://hub.docker.com/r/hassioaddons/home-panel-amd64
[amd64-layers-shield]: https://images.microbadger.com/badges/image/hassioaddons/home-panel-amd64.svg
[amd64-microbadger]: https://microbadger.com/images/hassioaddons/home-panel-amd64
[amd64-pulls-shield]: https://img.shields.io/docker/pulls/hassioaddons/home-panel-amd64.svg
[amd64-version-shield]: https://images.microbadger.com/badges/version/hassioaddons/home-panel-amd64.svg
[armhf-anchore-shield]: https://anchore.io/service/badges/image/8299a0af4020e22be2a2dd91dbc84e39babeae5178680278d51881ffba88d949
[armhf-anchore]: https://anchore.io/image/dockerhub/hassioaddons%2Fhome-panel-armhf%3Alatest
[armhf-arch-shield]: https://img.shields.io/badge/architecture-armhf-blue.svg
[armhf-dockerhub]: https://hub.docker.com/r/hassioaddons/home-panel-armhf
[armhf-layers-shield]: https://images.microbadger.com/badges/image/hassioaddons/home-panel-armhf.svg
[armhf-microbadger]: https://microbadger.com/images/hassioaddons/home-panel-armhf
[armhf-pulls-shield]: https://img.shields.io/docker/pulls/hassioaddons/home-panel-armhf.svg
[armhf-version-shield]: https://images.microbadger.com/badges/version/hassioaddons/home-panel-armhf.svg
[bountysource-shield]: https://img.shields.io/bountysource/team/hassio-addons/activity.svg
[bountysource]: https://www.bountysource.com/teams/hassio-addons/issues
[buymeacoffee-shield]: https://www.buymeacoffee.com/assets/img/guidelines/download-assets-sm-2.svg
[buymeacoffee]: https://www.buymeacoffee.com/frenck
[commits-shield]: https://img.shields.io/github/commit-activity/y/hassio-addons/addon-home-panel.svg
[commits]: https://github.com/hassio-addons/addon-home-panel/commits/master
[contributors]: https://github.com/hassio-addons/addon-home-panel/graphs/contributors
[discord-ha]: https://discord.gg/c5DvZ4e
[discord-shield]: https://img.shields.io/discord/478094546522079232.svg
[discord]: https://discord.me/hassioaddons
[forum-shield]: https://img.shields.io/badge/community-forum-brightgreen.svg
[forum]: https://community.home-assistant.io/t/home-panel-a-touch-compatible-webapp-for-controlling-the-home/62597?u=timmo001
[frenck]: https://github.com/frenck
[gitlabci-shield]: https://gitlab.com/hassio-addons/addon-home-panel/badges/master/pipeline.svg
[gitlabci]: https://gitlab.com/hassio-addons/addon-home-panel/pipelines
[home-assistant]: https://home-assistant.io
[i386-anchore-shield]: https://anchore.io/service/badges/image/491da5d9a64e7173746bce5053145c57199e81cbc87f0dfbea9bcab1186b91db
[i386-anchore]: https://anchore.io/image/dockerhub/hassioaddons%2Fhome-panel-i386%3Alatest
[i386-arch-shield]: https://img.shields.io/badge/architecture-i386-blue.svg
[i386-dockerhub]: https://hub.docker.com/r/hassioaddons/home-panel-i386
[i386-layers-shield]: https://images.microbadger.com/badges/image/hassioaddons/home-panel-i386.svg
[i386-microbadger]: https://microbadger.com/images/hassioaddons/home-panel-i386
[i386-pulls-shield]: https://img.shields.io/docker/pulls/hassioaddons/home-panel-i386.svg
[i386-version-shield]: https://images.microbadger.com/badges/version/hassioaddons/home-panel-i386.svg
[issue]: https://github.com/hassio-addons/addon-home-panel/issues
[keepchangelog]: http://keepachangelog.com/en/1.0.0/
[license-shield]: https://img.shields.io/github/license/hassio-addons/addon-home-panel.svg
[maintenance-shield]: https://img.shields.io/maintenance/yes/2018.svg
[patreon-shield]: https://www.frenck.nl/images/patreon.png
[patreon]: https://www.patreon.com/frenck
[project-stage-shield]: https://img.shields.io/badge/project%20stage-experimental-yellow.svg
[reddit]: https://reddit.com/r/homeassistant
[releases-shield]: https://img.shields.io/github/release/hassio-addons/addon-home-panel.svg
[releases]: https://github.com/hassio-addons/addon-home-panel/releases
[repository]: https://github.com/hassio-addons/repository
[semver]: http://semver.org/spec/v2.0.0.htm
[home-panel]: https://github.com/timmo001/home-panel
[midnight-theme]: https://raw.githubusercontent.com/timmo001/home-panel/master/docs/resources/midnight-theme.png
[forest-theme]: https://raw.githubusercontent.com/timmo001/home-panel/master/docs/resources/forest-theme.png
[more-info-light]: https://raw.githubusercontent.com/timmo001/home-panel/master/docs/resources/more-info-light.png
[radio]: https://raw.githubusercontent.com/timmo001/home-panel/master/docs/resources/radio.png
[hass]: https://www.home-assistant.io/
[docs]: https://git.timmo.xyz/home-panel/
[config]: https://git.timmo.xyz/home-panel/configuration/
[banner]: https://raw.githubusercontent.com/timmo001/home-panel/master/docs/resources/banner.png
