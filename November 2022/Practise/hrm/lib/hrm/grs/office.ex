defmodule Hrm.GRS.Office do
  use Ecto.Schema
  import Ecto.Changeset

  schema "details" do
    field :body, :string
    field :subtitle, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(office, attrs) do
    office
    |> cast(attrs, [:title, :subtitle, :body])
    |> validate_required([:title, :subtitle, :body])
  end

end
