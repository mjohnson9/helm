import Config

config :pleroma, Pleroma.Web.Endpoint,
    url: [host: System.get_env("DOMAIN", "localhost"), scheme: "https", port: 443],
    http: [ip: {0, 0, 0, 0}, port: 4000],

config :pleroma, :instance,
    name: System.get_env("INSTANCE_NAME", "Pleroma"),
    email: System.get_env("ADMIN_EMAIL"),
    notify_email: System.get_env("NOTIFY_EMAIL"),
    limit: 5000,
    registrations_open: System.get_env("REGISTRATIONS_OPEN", "false") == "true",
    federating: System.get_env("FEDERATING", "true") == "true",
    healthcheck: true

config :pleroma, :media_proxy,
    enabled: System.get_env("MEDIA_PROXY_ENABLED", "false") == "true",
    redirect_on_failure: true,
    base_url: System.get_env("MEDIA_PROXY_BASE_URL")

config :pleroma, Pleroma.Repo,
    adapter: Ecto.Adapters.Postgres,
    hostname: System.get_env("PGHOST"),
    port: System.get_env("PGPORT", "5432"),
    ssl: System.get_env("PGSSLMODE", "prefer") != "disable",  # cast to bool
    database: System.get_env("PGDATABASE"),
    username: System.get_env("PGUSER"),
    password: System.fetch_env!("PGPASSWORD"),
    pool_size: 10

# Configure web push notifications
config :web_push_encryption, :vapid_details, subject: "mailto:#{System.get_env("NOTIFY_EMAIL")}"

config :pleroma, :database, rum_enabled: false
config :pleroma, :instance, static_dir: "/var/lib/pleroma/static"
config :pleroma, Pleroma.Uploaders.Local, uploads: "/var/lib/pleroma/uploads"
