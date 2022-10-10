# mautrix-whatsapp

![Version: 0.7.0-1](https://img.shields.io/badge/Version-0.7.0--1-informational?style=flat-square) ![AppVersion: v0.7.0](https://img.shields.io/badge/AppVersion-v0.7.0-informational?style=flat-square)

A Matrix-WhatsApp puppeting bridge based on whatsmeow.

**Homepage:** <https://github.com/mjohnson9/helm/tree/main/charts/mautrix-whatsapp>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| mjohnson9 |  |  |

## Source Code

* <https://github.com/mautrix/whatsapp>

## Requirements

Kubernetes: `>=1.16.0-0`

| Repository | Name | Version |
|------------|------|---------|
| https://library-charts.k8s-at-home.com | common | 4.5.2 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| config.appservice.address | string | `"http://localhost:29318"` |  |
| config.appservice.as_token | string | `"This value is generated when generating the registration"` |  |
| config.appservice.bot.avatar | string | `"mxc://maunium.net/NeXNQarUbrlYBiPCpprYsRqr"` |  |
| config.appservice.bot.displayname | string | `"WhatsApp bridge bot"` |  |
| config.appservice.bot.username | string | `"whatsappbot"` |  |
| config.appservice.database.max_conn_idle_time | string | `nil` |  |
| config.appservice.database.max_conn_lifetime | string | `nil` |  |
| config.appservice.database.max_idle_conns | int | `2` |  |
| config.appservice.database.max_open_conns | int | `20` |  |
| config.appservice.database.type | string | `"postgres"` |  |
| config.appservice.database.uri | string | `"postgres://user:password@host/database?sslmode=disable"` |  |
| config.appservice.ephemeral_events | bool | `true` |  |
| config.appservice.hostname | string | `"0.0.0.0"` |  |
| config.appservice.hs_token | string | `"This value is generated when generating the registration"` |  |
| config.appservice.id | string | `"whatsapp"` |  |
| config.appservice.port | int | `29318` |  |
| config.bridge.allow_user_invite | bool | `false` |  |
| config.bridge.archive_tag | string | `nil` |  |
| config.bridge.bridge_matrix_leave | bool | `true` |  |
| config.bridge.bridge_notices | bool | `true` |  |
| config.bridge.call_start_notices | bool | `true` |  |
| config.bridge.caption_in_message | bool | `false` |  |
| config.bridge.command_prefix | string | `"!wa"` |  |
| config.bridge.crash_on_stream_replaced | bool | `false` |  |
| config.bridge.default_bridge_presence | bool | `true` |  |
| config.bridge.default_bridge_receipts | bool | `true` |  |
| config.bridge.delivery_receipts | bool | `false` |  |
| config.bridge.disable_bridge_alerts | bool | `false` |  |
| config.bridge.disable_status_broadcast_send | bool | `true` |  |
| config.bridge.disappearing_messages_in_groups | bool | `false` |  |
| config.bridge.displayname_template | string | `"{{if .BusinessName}}{{.BusinessName}}{{else if .PushName}}{{.PushName}}{{else}}{{.JID}}{{end}} (WA)"` |  |
| config.bridge.double_puppet_allow_discovery | bool | `false` |  |
| config.bridge.double_puppet_server_map | object | `{}` |  |
| config.bridge.enable_status_broadcast | bool | `true` |  |
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
| config.bridge.force_active_delivery_receipts | bool | `false` |  |
| config.bridge.history_sync.backfill | bool | `false` |  |
| config.bridge.history_sync.create_portals | bool | `true` |  |
| config.bridge.history_sync.deferred[0].batch_delay | int | `5` |  |
| config.bridge.history_sync.deferred[0].max_batch_events | int | `20` |  |
| config.bridge.history_sync.deferred[0].start_days_ago | int | `7` |  |
| config.bridge.history_sync.deferred[1].batch_delay | int | `10` |  |
| config.bridge.history_sync.deferred[1].max_batch_events | int | `50` |  |
| config.bridge.history_sync.deferred[1].start_days_ago | int | `30` |  |
| config.bridge.history_sync.deferred[2].batch_delay | int | `10` |  |
| config.bridge.history_sync.deferred[2].max_batch_events | int | `100` |  |
| config.bridge.history_sync.deferred[2].start_days_ago | int | `90` |  |
| config.bridge.history_sync.deferred[3].batch_delay | int | `10` |  |
| config.bridge.history_sync.deferred[3].max_batch_events | int | `500` |  |
| config.bridge.history_sync.deferred[3].start_days_ago | int | `-1` |  |
| config.bridge.history_sync.double_puppet_backfill | bool | `false` |  |
| config.bridge.history_sync.immediate.max_events | int | `10` |  |
| config.bridge.history_sync.immediate.worker_count | int | `1` |  |
| config.bridge.history_sync.max_initial_conversations | int | `-1` |  |
| config.bridge.history_sync.media_requests.auto_request_media | bool | `true` |  |
| config.bridge.history_sync.media_requests.request_local_time | int | `120` |  |
| config.bridge.history_sync.media_requests.request_method | string | `"immediate"` |  |
| config.bridge.history_sync.request_full_sync | bool | `false` |  |
| config.bridge.identity_change_notices | bool | `false` |  |
| config.bridge.login_shared_secret_map | object | `{}` |  |
| config.bridge.management_room_text.additional_help | string | `""` |  |
| config.bridge.management_room_text.welcome | string | `"Hello, I'm a WhatsApp bridge bot."` |  |
| config.bridge.management_room_text.welcome_connected | string | `"Use `help` for help."` |  |
| config.bridge.management_room_text.welcome_unconnected | string | `"Use `help` for help or `login` to log in."` |  |
| config.bridge.message_error_notices | bool | `true` |  |
| config.bridge.message_handling_timeout.deadline | string | `"120s"` |  |
| config.bridge.message_handling_timeout.error_after | string | `nil` |  |
| config.bridge.message_status_events | bool | `false` |  |
| config.bridge.mute_bridging | bool | `false` |  |
| config.bridge.mute_status_broadcast | bool | `true` |  |
| config.bridge.permissions | object | `{}` |  |
| config.bridge.personal_filtering_spaces | bool | `false` |  |
| config.bridge.pinned_tag | string | `nil` |  |
| config.bridge.portal_message_buffer | int | `128` |  |
| config.bridge.private_chat_portal_meta | bool | `false` |  |
| config.bridge.provisioning.prefix | string | `"/_matrix/provision"` |  |
| config.bridge.provisioning.shared_secret | string | `"generate"` |  |
| config.bridge.relay.admin_only | bool | `true` |  |
| config.bridge.relay.enabled | bool | `false` |  |
| config.bridge.relay.message_formats."m.audio" | string | `"<b>{{ .Sender.Displayname }}</b> sent an audio file"` |  |
| config.bridge.relay.message_formats."m.emote" | string | `"* <b>{{ .Sender.Displayname }}</b> {{ .Message }}"` |  |
| config.bridge.relay.message_formats."m.file" | string | `"<b>{{ .Sender.Displayname }}</b> sent a file"` |  |
| config.bridge.relay.message_formats."m.image" | string | `"<b>{{ .Sender.Displayname }}</b> sent an image"` |  |
| config.bridge.relay.message_formats."m.location" | string | `"<b>{{ .Sender.Displayname }}</b> sent a location"` |  |
| config.bridge.relay.message_formats."m.notice" | string | `"<b>{{ .Sender.Displayname }}</b>: {{ .Message }}"` |  |
| config.bridge.relay.message_formats."m.text" | string | `"<b>{{ .Sender.Displayname }}</b>: {{ .Message }}"` |  |
| config.bridge.relay.message_formats."m.video" | string | `"<b>{{ .Sender.Displayname }}</b> sent a video"` |  |
| config.bridge.resend_bridge_info | bool | `false` |  |
| config.bridge.send_presence_on_typing | bool | `false` |  |
| config.bridge.status_broadcast_tag | string | `"m.lowpriority"` |  |
| config.bridge.sync_direct_chat_list | bool | `false` |  |
| config.bridge.sync_manual_marked_unread | bool | `true` |  |
| config.bridge.sync_with_custom_puppets | bool | `false` |  |
| config.bridge.tag_only_on_create | bool | `true` |  |
| config.bridge.url_previews | bool | `false` |  |
| config.bridge.user_avatar_sync | bool | `true` |  |
| config.bridge.username_template | string | `"whatsapp_{{.}}"` |  |
| config.bridge.whatsapp_thumbnail | bool | `false` |  |
| config.homeserver.address | string | `"https://example.com"` |  |
| config.homeserver.async_media | bool | `false` |  |
| config.homeserver.domain | string | `"example.com"` |  |
| config.homeserver.message_send_checkpoint_endpoint | string | `nil` |  |
| config.homeserver.software | string | `"standard"` |  |
| config.homeserver.status_endpoint | string | `nil` |  |
| config.logging.directory | string | `"./logs"` |  |
| config.logging.file_date_format | string | `"2006-01-02"` |  |
| config.logging.file_mode | int | `384` |  |
| config.logging.file_name_format | string | `"{{.Date}}-{{.Index}}.log"` |  |
| config.logging.print_level | string | `"debug"` |  |
| config.logging.timestamp_format | string | `"Jan _2, 2006 15:04:05"` |  |
| config.metrics.enabled | bool | `false` |  |
| config.metrics.listen | string | `"127.0.0.1:8001"` |  |
| config.segment_key | string | `nil` |  |
| config.whatsapp.browser_name | string | `"unknown"` |  |
| config.whatsapp.os_name | string | `"Mautrix-WhatsApp bridge"` |  |
| env | object | See below | environment variables. See more environment variables in the [mautrix-whatsapp documentation](https://mautrix-whatsapp.org/docs). |
| env.TZ | string | `"UTC"` | Set the container timezone |
| image.pullPolicy | string | `"IfNotPresent"` | image pull policy |
| image.repository | string | `"dock.mau.dev/mautrix/whatsapp"` | image repository |
| image.tag | string | chart.appVersion | image tag |
| persistence | object | See values.yaml | Configure persistence settings for the chart under this key. |
| senderLocalPart | string | `"whatsappbot"` |  |
| service | object | See values.yaml | Configures service settings for the chart. |
| useExternalSecrets | bool | `false` | Whether or not to use ExternalSecrets |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
