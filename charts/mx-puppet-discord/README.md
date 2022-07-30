# mx-puppet-discord

![Version: 1.2.0](https://img.shields.io/badge/Version-1.2.0-informational?style=flat-square) ![AppVersion: v0.1.1](https://img.shields.io/badge/AppVersion-v0.1.1-informational?style=flat-square)

This is a discord puppeting bridge for matrix. It handles bridging private and group DMs, as well as Guilds (servers).

**Homepage:** <https://github.com/mjohnson9/helm/tree/main/charts/mx-puppet-discord>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| mjohnson9 |  |  |

## Source Code

* <https://gitlab.com/mx-puppet/discord/mx-puppet-discord>

## Requirements

Kubernetes: `>=1.16.0-0`

| Repository | Name | Version |
|------------|------|---------|
| https://library-charts.k8s-at-home.com | common | 4.4.2 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| bridgeId | string | `"discord-puppet"` | This is the bridge's ID, as defined in the registration.yaml. Do not change this unless you know what you're doing. |
| bridgePrefix | string | `"_discordpuppet_"` | This is the bridge's prefix, as used in the registration.yaml. Do not change this unless you know what you're doing. |
| config.bridge.avatarUrl | string | `"mxc://maunium.net/nIdEykemnwdisvHbpxflpDlC"` | Avatar URL of the bridge bot |
| config.bridge.bindAddress | string | `"0.0.0.0"` | The host connections to the bridge's webserver are allowed from |
| config.bridge.displayname | string | `"Discord Puppet Bridge"` | Display name of the bridge bot |
| config.bridge.domain | string | `"matrix.org"` | Public domain of the homeserver |
| config.bridge.enableGroupSync | bool | `true` | Whether to create groups for each Discord Server  Note that 'enable_group_creation' must be 'true' in Synapse's config for this to work |
| config.bridge.homeserverUrl | string | `"https://matrix.org"` | Reachable URL of the Matrix homeserver |
| config.bridge.loginSharedSecretMap | object | `{}` | Enables automatic double-puppeting when set. Automatic double-puppeting allows Discord accounts to control Matrix accounts. So sending a a message on Discord would send it on Matrix from your Matrix account  loginSharedSecretMap is simply a map from homeserver URL to shared secret. Example:  loginSharedSecretMap:   matrix.org: "YOUR SHARED SECRET GOES HERE"  See https://github.com/devture/matrix-synapse-shared-secret-auth for the necessary server module |
| config.bridge.mediaUrl | string | `nil` | Optionally specify a different media URL used for the media store  This is where Discord will download user profile pictures and media from |
| config.bridge.port | int | `8434` | Port to host the bridge on Used for communication between the homeserver and the bridge |
| config.database.connString | string | `"postgres://user:pass@localhost/dbname?sslmode=disable"` | Use Postgres as a database backend. If set, will be used instead of SQLite3  Connection string to connect to the Postgres instance with username "user", password "pass", host "localhost" and database name "dbname".  Modify each value as necessary |
| config.homeserverUrlMap | object | `{}` | Map of homeserver URLs to their C-S API endpoint  Useful for double-puppeting if .well-known is unavailable for some reason |
| config.limits.maxAutojoinUsers | int | `200` | Up to how many users should be auto-joined on room creation? -1 to disable auto-join functionality  Defaults to 200 |
| config.limits.roomUserAutojoinDelay | int | `5000` | How long the delay between two auto-join users should be in milliseconds  Defaults to 5000 |
| config.logging.console | string | `"info"` | Log level of console output  Allowed values starting with most verbose: silly, verbose, info, warn, error |
| config.logging.files | list | `[]` | Logging files  Log files are rotated daily by default |
| config.logging.lineDateFormat | string | `"MMM-D HH:mm:ss.SSS"` | Date and time formatting |
| config.namePatterns | object | `{"group":":name","room":":name","user":":name","userOverride":":displayname"}` | Override the default name patterns for users, rooms and groups  Variable names must be prefixed with a ':' |
| config.namePatterns.group | string | `":name"` | Group names for bridged Discord servers  Available variables:  name: name of the guide |
| config.namePatterns.room | string | `":name"` | Room names for bridged Discord channels  Available variables:  name: name of the channel guild: name of the guild category: name of the category if existant |
| config.namePatterns.user | string | `":name"` | The default displayname for a bridged user  Available variables:  name: username of the user discriminator: hashtag of the user (ex. #1234) |
| config.namePatterns.userOverride | string | `":displayname"` | A user's guild-specific displayname - if they've set a custom nick in a guild  Available variables:  name: username of the user discriminator: hashtag of the user (ex. #1234) displayname: the user's custom group-specific nick channel: the name of the channel guild: the name of the guild |
| config.presence.enabled | bool | `true` | Bridge Discord online/offline status |
| config.presence.interval | int | `500` | How often to send status to the homeserver in milliseconds |
| config.provisioning.blacklist | list | `[]` | Regex of Matrix IDs forbidden from using the puppet bridge |
| config.provisioning.whitelist | list | `[]` | Regex of Matrix IDs allowed to use the puppet bridge |
| config.relay.blacklist | list | `[]` |  |
| config.relay.whitelist | list | `[]` | Regex of Matrix IDs who are allowed to use the bridge in relay mode. Relay mode is when a single Discord bot account relays messages of multiple Matrix users  Same format as in provisioning |
| config.selfService.blacklist | list | `[]` |  |
| config.selfService.whitelist | list | `[]` | Regex of Matrix IDs who are allowed to use bridge self-servicing (plumbed rooms)  Same format as in provisioning |
| env | object | See below | environment variables. See more environment variables in the [mx-puppet-discord documentation](https://mx-puppet-discord.org/docs). |
| env.TZ | string | `"UTC"` | Set the container timezone |
| image.pullPolicy | string | `"IfNotPresent"` | image pull policy |
| image.repository | string | `"registry.gitlab.com/mx-puppet/discord/mx-puppet-discord"` | image repository |
| image.tag | string | chart.appVersion | image tag |
| persistence | object | See values.yaml | Configure persistence settings for the chart under this key. |
| service | object | See values.yaml | Configures service settings for the chart. |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
