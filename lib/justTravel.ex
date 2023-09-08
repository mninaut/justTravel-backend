defmodule JustTravel do
  alias JustTravel.Tickets

  defdelegate create_ticket(params), to: Tickets.Create, as: :call
  defdelegate get_ticket(id), to: Tickets.Get, as: :call
end
