defmodule HealthCheckApiWeb.Plugs.HealthCheck do
  @moduledoc """
  This checks the application's availability.
  """
  @behaviour Plug
  import Plug.Conn

  @impl true
  def init(opts), do: opts

  @impl true
  def call(
        %Plug.Conn{request_path: path} = conn,
        _opts
      )
      when path == "/health-check" or path == "/health-check/" do
    # option to force an error and capture with sentry
    with %{"_divisor" => divisor, "_dividend" => dividend} <- conn.query_params do
      _ = String.to_integer(divisor) / String.to_integer(dividend)
    end

    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, "200 OK")
    |> halt()
  end

  def call(conn, _opts), do: conn
end
