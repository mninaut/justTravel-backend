defmodule JustTravel.Tickets.Get do
  alias JustTravel.Repo
  alias JustTravel.Tickets.Ticket

  def call(id) do
    case Repo.get(Ticket, id) do
      nil -> {:error, :not_found}
      # ticket -> {:ok, Repo.preload(ticket, :tickets)}
      ticket -> {:ok, ticket}
    end
  end
end
