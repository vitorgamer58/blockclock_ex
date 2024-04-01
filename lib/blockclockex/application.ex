defmodule Blockclockex.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false
  require Logger

  use Application

  @impl true
  def start(_type, _args) do
    port = 8000
    children = [
      # Starts a worker by calling: Blockclockex.Worker.start_link(arg)
      # {Blockclockex.Worker, arg}
      {Plug.Cowboy, scheme: :http, plug: Blockclockex.Router, options: [port: port]}
    ]

    Logger.info("Running on port #{port}")

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Blockclockex.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
