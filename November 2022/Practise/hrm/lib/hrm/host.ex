defmodule Hrm.Host do
  # alias Hrm.Repo
  # alias Hrm.Host.GuestHouse

  import Ecto.Query, warn: false

  def get_guesthouse_list()do
    Hrm.Repo.all(Hrm.Host.GuestHouse)
  end

end
