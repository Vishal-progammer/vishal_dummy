defmodule HrmWeb.PageController do
  use HrmWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end