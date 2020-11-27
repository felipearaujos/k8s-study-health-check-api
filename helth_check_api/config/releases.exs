import Config

config :health_check_api, HealthCheckApiWeb.Endpoint,
  # System.fetch_env!
  http: [port: System.get_env("HTTP_PORT", "4000") |> String.to_integer()],
  secret_key_base: "qKnZ1jxPWrzRZX5cPLXZ3+nmcnVljSBKuAJhvn4GJFYMnZxQnJRFxDPxId84D6la",
  server: true
