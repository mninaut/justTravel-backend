defmodule JustTravel.Repo.Migrations.AddTickets do
  use Ecto.Migration

  def change do
    create table(:tickets) do
      # add :id, :uuid, primary_key: true
      add :name, :string
      add :city, :string
      add :description, :string
      add :price, :float

      timestamps()
    end
  end
end
