defmodule HrmWeb.HostLive.Index do
  use HrmWeb, :live_view

  alias Hrm.Host
  def mount(_params, _session, socket) do
    socket = assign(socket, :guest_list, Host.get_guesthouse_list())
    {:ok, socket}
  end
end
