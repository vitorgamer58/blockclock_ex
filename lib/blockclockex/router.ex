defmodule Blockclockex.Router do
  alias Blockclockex.Controllers.Blockheight
  use Plug.Router

  plug(:match)
  plug(:dispatch)

  get "/api" do
    send_resp(conn, 200, "ping")
  end

  get "/api/height" do
    case Blockheight.getBlockHeight() do
      {:ok, blockheight} -> send_resp(conn, 200, blockheight)
      {:error} -> send_resp(conn, 500, "")
    end
  end

  match _ do
    send_resp(conn, 404, "Not Found")
  end
end
