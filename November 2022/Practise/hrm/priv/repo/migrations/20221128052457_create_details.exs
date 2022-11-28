defmodule Hrm.Repo.Migrations.CreateDetails do
  use Ecto.Migration

  def change do
    create table(:details) do
      add :title, :string
      add :subtitle, :string
      add :body, :string

      timestamps()
    end
  end
end
