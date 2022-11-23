defmodule Hrm.GRS.Guest do
  use Ecto.Schema
  import Ecto.Changeset

  schema "guests" do
    field :birth_date, :date
    field :first_name, :string
    field :last_name, :string
    field :nationality, :string

    timestamps()
  end

  @doc false
  def changeset(guest, attrs) do
    guest
    |> cast(attrs, [:first_name, :last_name, :nationality, :birth_date])
    |> validate_required([:first_name, :last_name, :nationality, :birth_date])
  end
end
