defmodule Blockclockex.MixProject do
  use Mix.Project

  def project do
    [
      app: :blockclockex,
      version: "0.1.0",
      elixir: "~> 1.16",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Blockclockex.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:bandit, "~> 1.0"},
      {:httpoison, "~> 2.2"},
      {:cachex, "~> 3.6"}
    ]
  end
end
