defmodule Blockclockex.Infra.Clients.Mempool do
  require Logger

  def get_block_height() do
    case HTTPoison.get("https://mempool.space/api/blocks/tip/height", []) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, body}

      {:error, %HTTPoison.Error{reason: reason}} ->
        Logger.error("Failed to get block height: #{reason}")
        {:error}
    end
  end
end
