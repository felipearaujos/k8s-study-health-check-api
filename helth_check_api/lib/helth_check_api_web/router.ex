defmodule HealthCheckApiWeb.Router do
  use HealthCheckApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", HealthCheckApiWeb do
    pipe_through :api
  end
end
