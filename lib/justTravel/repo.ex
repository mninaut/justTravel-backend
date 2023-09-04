defmodule JustTravel.Repo do
  use Ecto.Repo,
    otp_app: :justTravel,
    adapter: Ecto.Adapters.Postgres
end
