defmodule JustTravelWeb.Resolvers.Ticket do
  def create(%{input: params}, _context), do: JustTravel.create_ticket(params)
  def get(%{id: id}, _context), do: JustTravel.get_ticket(id)
end
