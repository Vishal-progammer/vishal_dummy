defmodule Hrm.Repo.Migrations.CreateGuests do
  use Ecto.Migration

  def change do
    create table(:guests) do
      add :first_name, :string
      add :last_name, :string
      add :nationality, :string
      add :birth_date, :date

      timestamps()
    end
  end
end
