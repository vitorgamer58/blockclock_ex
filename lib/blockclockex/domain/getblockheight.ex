defmodule Blockclockex.Domain.Getblockheight do
  alias Blockclockex.Infra.Clients.Cache
  alias Blockclockex.Infra.Clients.Mempool

  def run() do
    get_block_height_in_cache()
    |> case do
      {:ok, value} when value != nil ->
        {:ok, value}

      _ ->
        case get_block_height_in_mempool() do
          {:ok, height} ->
            Cache.put_value("height", height)
            {:ok, height}

          error ->
            error
        end
    end
  end

  defp get_block_height_in_cache() do
    Cache.get_value("height")
  end

  defp get_block_height_in_mempool() do
    Mempool.get_block_height()
  end
end
