defmodule KinoComponent.MixProject do
  use Mix.Project

  def project do
    [
      app: :kino_component,
      version: "0.0.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:kino, "~> 0.14"},
      {:phoenix_html, "~> 4.1"},
      {:phoenix_live_view, "~> 0.20", only: :test},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end
end
