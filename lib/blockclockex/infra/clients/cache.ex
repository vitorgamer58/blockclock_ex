defmodule Blockclockex.Infra.Clients.Cache do
  def get_value(key) do
    Cachex.get(:blockclock_cache, key)
  end

  def put_value(key, value) do
    Cachex.put(:blockclock_cache, key, value, ttl: :timer.seconds(60))
  end
end
