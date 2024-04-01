defmodule Blockclockex.Infra.Controllers.Blockheight do
  def getBlockHeight() do
    Blockclockex.Domain.Getblockheight.run()
  end
end
