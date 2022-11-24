# mautrix-discord

![Version: 0.2.1](https://img.shields.io/badge/Version-0.2.1-informational?style=flat-square) ![AppVersion: 6be531685f308f081675034904d89c9e920be996-amd64](https://img.shields.io/badge/AppVersion-6be531685f308f081675034904d89c9e920be996--amd64-informational?style=flat-square)

A Matrix-Discord puppeting bridge based on discordgo.

**Homepage:** <https://github.com/mjohnson9/helm/tree/main/charts/mautrix-discord>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| mjohnson9 | <michael@johnson.gg> | <https://johnson.gg> |

## Source Code

* <https://github.com/mautrix/discord>

## Requirements

Kubernetes: `>=1.16.0-0`

| Repository | Name | Version |
|------------|------|---------|
| https://library-charts.k8s-at-home.com | common | 4.5.2 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| config.appservice.address | string | `"http://localhost:29334"` |  |
| config.appservice.as_token | string | `"This value is generated when generating the registration"` |  |
| config.appservice.bot.avatar | string | `"mxc://maunium.net/nIdEykemnwdisvHbpxflpDlC"` |  |
| config.appservice.bot.displayname | string | `"Discord bridge bot"` |  |
| config.appservice.bot.username | string | `"discordbot"` |  |
| config.appservice.database.max_conn_idle_time | string | `nil` |  |
| config.appservice.database.max_conn_lifetime | string | `nil` |  |
| config.appservice.database.max_idle_conns | int | `2` |  |
| config.appservice.database.max_open_conns | int | `20` |  |
| config.appservice.database.type | string | `"postgres"` |  |
| config.appservice.database.uri | string | `"postgres://user:password@host/database?sslmode=disable"` |  |
| config.appservice.ephemeral_events | bool | `true` |  |
| config.appservice.hostname | string | `"0.0.0.0"` |  |
| config.appservice.hs_token | string | `"This value is generated when generating the registration"` |  |
| config.appservice.id | string | `"discord"` |  |
| config.appservice.port | int | `29334` |  |
| config.bridge.channel_name_template | string | `"{{if or (eq .Type 3) (eq .Type 4)}}{{.Name}}{{else}}#{{.Name}}{{end}}"` |  |
| config.bridge.command_prefix | string | `"!discord"` |  |
| config.bridge.delete_portal_on_channel_delete | bool | `false` |  |
| config.bridge.delivery_receipts | bool | `false` |  |
| config.bridge.displayname_template | string | `"{{.Username}}#{{.Discriminator}}{{if .Bot}} (bot){{end}}"` |  |
| config.bridge.double_puppet_allow_discovery | bool | `false` |  |
| config.bridge.double_puppet_server_map | object | `{}` |  |
| config.bridge.encryption.allow | bool | `false` |  |
| config.bridge.encryption.allow_key_sharing | bool | `false` |  |
| config.bridge.encryption.appservice | bool | `false` |  |
| config.bridge.encryption.default | bool | `false` |  |
| config.bridge.encryption.require | bool | `false` |  |
| config.bridge.encryption.rotation.enable_custom | bool | `false` |  |
| config.bridge.encryption.rotation.messages | int | `100` |  |
| config.bridge.encryption.rotation.milliseconds | int | `604800000` |  |
| config.bridge.encryption.verification_levels.receive | string | `"unverified"` |  |
| config.bridge.encryption.verification_levels.send | string | `"unverified"` |  |
| config.bridge.encryption.verification_levels.share | string | `"cross-signed-tofu"` |  |
| config.bridge.federate_rooms | bool | `true` |  |
| config.bridge.guild_name_template | string | `"{{.Name}}"` |  |
| config.bridge.login_shared_secret_map | object | `{}` |  |
| config.bridge.management_room_text.additional_help | string | `""` |  |
| config.bridge.management_room_text.welcome | string | `"Hello, I'm a Discord bridge bot."` |  |
| config.bridge.management_room_text.welcome_connected | string | `"Use `help` for help."` |  |
| config.bridge.management_room_text.welcome_unconnected | string | `"Use `help` for help or `login` to log in."` |  |
| config.bridge.message_error_notices | bool | `true` |  |
| config.bridge.message_status_events | bool | `false` |  |
| config.bridge.permissions | object | `{}` |  |
| config.bridge.portal_message_buffer | int | `128` |  |
| config.bridge.private_chat_portal_meta | bool | `false` |  |
| config.bridge.provisioning.prefix | string | `"/_matrix/provision"` |  |
| config.bridge.provisioning.shared_secret | string | `"generate"` |  |
| config.bridge.resend_bridge_info | bool | `false` |  |
| config.bridge.restricted_rooms | bool | `true` |  |
| config.bridge.startup_private_channel_create_limit | int | `5` |  |
| config.bridge.sync_direct_chat_list | bool | `false` |  |
| config.bridge.username_template | string | `"discord_{{.}}"` |  |
| config.homeserver.address | string | `"http://localhost:8008"` |  |
| config.homeserver.async_media | bool | `false` |  |
| config.homeserver.domain | string | `"example.com"` |  |
| config.homeserver.message_send_checkpoint_endpoint | string | `nil` |  |
| config.homeserver.software | string | `"standard"` |  |
| config.homeserver.status_endpoint | string | `nil` |  |
| config.logging.directory | string | `"./logs"` |  |
| config.logging.file_date_format | string | `"2006-01-02"` |  |
| config.logging.file_json | bool | `false` |  |
| config.logging.file_mode | int | `384` |  |
| config.logging.file_name_format | string | `"{{.Date}}-{{.Index}}.log"` |  |
| config.logging.print_json | bool | `false` |  |
| config.logging.print_level | string | `"debug"` |  |
| config.logging.timestamp_format | string | `"Jan _2, 2006 15:04:05"` |  |
| env | object | See below | environment variables. See more environment variables in the [mautrix-whatsapp documentation](https://mautrix-whatsapp.org/docs). |
| env.TZ | string | `"UTC"` | Set the container timezone |
| image.pullPolicy | string | `"IfNotPresent"` | image pull policy |
| image.repository | string | `"dock.mau.dev/mautrix/discord"` | image repository |
| image.tag | string | chart.appVersion | image tag |
| persistence | object | See values.yaml | Configure persistence settings for the chart under this key. |
| senderLocalPart | string | `"discordbot"` |  |
| service | object | See values.yaml | Configures service settings for the chart. |
| useExternalSecrets | bool | `false` | Whether or not to use ExternalSecrets |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
