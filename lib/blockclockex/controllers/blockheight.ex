defmodule Blockclockex.Controllers.Blockheight do
  def getBlockHeight() do
    Blockclockex.Clients.Mempool.getBlockHeight()
  end
end
