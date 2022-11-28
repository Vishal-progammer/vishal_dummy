defmodule HrmWeb.OfficeLive.Index do
  use HrmWeb, :live_view
  import Ecto.Query, warn: false

  def mount(_params, _session, socket)do
    socket =assign(socket, :my_var, "world")
    {:ok, socket}
  end

  def handle_event("new_article", params, socket) do
    Hrm.Repo.insert(%Hrm.GRS.Office{title: params["title"], subtitle: params["subtitle"],body: params["body"]})
    {:noreply, socket}
  end

end
