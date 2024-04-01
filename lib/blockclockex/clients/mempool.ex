defmodule Blockclockex.Clients.Mempool do
  require Logger

  def getBlockHeight() do
    case HTTPoison.get("https://mempool.space/api/blocks/tip/height", [],
           ssl: [verify: :verify_none]
         ) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, body}

      {:error, %HTTPoison.Error{reason: reason}} ->
        Logger.error("Failed to get block height: #{reason}")
        {:error}
    end
  end
end
