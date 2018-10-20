defmodule IslandInterfaceWeb.PageControllerTest do
  use IslandInterfaceWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end
end
