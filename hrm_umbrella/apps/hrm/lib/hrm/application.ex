defmodule Hrm.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Hrm.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Hrm.PubSub}
      # Start a worker by calling: Hrm.Worker.start_link(arg)
      # {Hrm.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: Hrm.Supervisor)
  end
end
