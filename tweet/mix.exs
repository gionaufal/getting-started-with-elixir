defmodule Tweet.MixProject do
  use Mix.Project

  def project do
    [
      app: :tweet,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :quantum],
      mod: {Tweet.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 1.0.0", only: [:dev, :test], runtime: false},
      {:quantum, "~> 1.8"},
      {:timex, "~> 3.0"}
    ]
  end
end
