defmodule KinoComponent.MixProject do
  use Mix.Project

  def project do
    [
      app: :kino_component,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: docs(),
      package: package()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:kino, "~> 0.14"},
      {:phoenix_html, "~> 4.1"},
      {:phoenix_live_view, "~> 0.20", only: :test}
    ]
  end

  defp docs do
    [
      extras: ["guides/components.livemd"],
      groups_for_modules: [
        Kinos: [
          KinoComponent
        ]
      ],
      main: "components",
      source_url: "https://github.com/prim-and-propper/kino-component"
    ]
  end

  defp package do
    [
      licenses: ["Apache-2.0"],
      links: %{
        "GitHub" => "https://github.com/prim-and-propper/kino-component"
      }
    ]
  end
end
