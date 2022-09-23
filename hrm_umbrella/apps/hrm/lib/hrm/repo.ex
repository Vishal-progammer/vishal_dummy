defmodule Hrm.Repo do
  use Ecto.Repo,
    otp_app: :hrm,
    adapter: Ecto.Adapters.Postgres
end
