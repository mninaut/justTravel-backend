defmodule JustTravelWeb.Schema.Types.Root do
  use Absinthe.Schema.Notation

  alias Crudry.Middlewares.TranslateErrors

  alias JustTravel.Repo
  alias JustTravel.Tickets.Ticket

  alias JustTravelWeb.Resolvers.Ticket, as: TicketResolver

  import_types JustTravelWeb.Schema.Types.Ticket

  object :root_query do
    field :ticket, type: :ticket do
      arg :id, non_null(:id)

      resolve &TicketResolver.get/2
    end
  end

  object :root_mutation do
    field :create_ticket, type: :ticket do
      arg :input, non_null(:create_ticket_input)

      resolve &TicketResolver.create/2
      middleware TranslateErrors
    end
  end
end
