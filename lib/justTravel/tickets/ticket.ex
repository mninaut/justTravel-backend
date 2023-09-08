defmodule JustTravel.Tickets.Ticket do
  use Ecto.Schema
  import Ecto.Changeset

  @required_params [:name, :city, :price, :description]

  schema "tickets" do
    field :name, :string
    field :city, :string
    field :price, :float
    field :description, :string

    timestamps()
  end

  def changeset(ticket \\ %__MODULE__{}, params) do
    ticket
    |> cast(params, @required_params)
    |> validate_required(@required_params)
    |> unique_constraint(:name)
    |> validate_length(:name, min: 2)
    |> validate_length(:city, min: 2)
    |> validate_number(:price, greater_than_or_equal_to: 1)
  end
end
