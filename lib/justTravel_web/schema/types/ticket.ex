defmodule JustTravelWeb.Schema.Types.Ticket do
  use Absinthe.Schema.Notation

  @desc "Ticket logic representation"
  object :ticket do
    field :id, non_null(:id)
    field :name, non_null(:string)
    field :city, non_null(:string)
    field :price, non_null(:float), description: "Need to be greather than 0"
    # field :description, :string
  end

  @desc "Ticket create logic representation"
  input_object :create_ticket_input do
    field :name, non_null(:string)
    field :city, non_null(:string)
    field :price, non_null(:float), description: "Need to be greather than 0"
    field :description, :string
  end
end
