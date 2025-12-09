defmodule TodoAppElixir.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      TodoAppElixirWeb.Telemetry,
      {DNSCluster, query: Application.get_env(:todo_app_elixir, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: TodoAppElixir.PubSub},
      # Start a worker by calling: TodoAppElixir.Worker.start_link(arg)
      # {TodoAppElixir.Worker, arg},
      # Start to serve requests, typically the last entry
      TodoAppElixirWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: TodoAppElixir.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    TodoAppElixirWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
