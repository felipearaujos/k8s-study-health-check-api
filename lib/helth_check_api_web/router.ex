defmodule HelthCheckApiWeb.Router do
  use HelthCheckApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", HelthCheckApiWeb do
    pipe_through :api
  end
end
