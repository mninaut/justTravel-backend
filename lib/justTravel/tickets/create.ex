defmodule JustTravel.Tickets.Create do
  alias JustTravel.Repo
  alias JustTravel.Tickets.Ticket

  def call(params) do
    params
    |> Ticket.changeset()
    |> Repo.insert()
  end
end
