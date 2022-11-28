defmodule Hrm.Host.GuestHouse do
  use Ecto.Schema
  import Ecto.Changeset

  schema "guest_houses" do
    field :name, :string
    field :email, :string
    field :contact_number, :integer

    timestamps()
  end

  def changeset(guest_house, attrs) do
    guest_house
    |> cast(attrs, [:name, :email, :contact_number])
    |> validate_required([:name, :email, :contact_number])
  end
end
