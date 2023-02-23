defmodule ElixirFaker.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_faker,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:quickrand, "~> 2.0"},
      {:random_string, "~> 0.3.0"}
    ]
  end
end
