defmodule TodoAppElixirWeb.PageController do
  use TodoAppElixirWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
