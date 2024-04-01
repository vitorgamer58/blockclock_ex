defmodule Blockclockex.Router do
  alias Blockclockex.Controllers.Blockheight
  use Plug.Router

  plug(:match)
  plug(:dispatch)

  get "/api" do
    send_resp(conn, 200, "ping")
  end

  match _ do
    send_resp(conn, 404, "Not Found")
  end
end
