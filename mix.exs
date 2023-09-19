defmodule ElixirFaker.MixProject do
  use Mix.Project

  def project do
    [
      app: :faker,
      version: "0.2.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      deps: deps(),
      source_url: "https://github.com/kamaroly/elixir_faker"
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
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  def description() do
    """
    Faker is a Elixir package that generates fake data for you. Whether you need to bootstrap your database, create good-looking XML documents, fill-in your persistence to stress test it, or anonymize data taken from a production service, Faker is for you.
    """
  end

  defp package() do
    [
      name: "elixir_faker",
      # These are the default files included in the package
      files: ~w(lib mix.exs doc README* test),
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/kamaroly/elixir_faker"}
    ]
  end
end
