defmodule Hrm.Repo.Migrations.CreateGuestHouses do
  use Ecto.Migration

  def change do
    create table(:guest_houses) do
      add :name, :string
      add :email, :string
      add :contact_number, :integer

      timestamps()
    end
  end
end
