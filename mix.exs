defmodule UeberauthCAS.Mixfile do
  use Mix.Project

  @version "1.1.0"
  @url     "https://github.com/marceldegraaf/ueberauth_cas"

  def project do
    [
      app: :ueberauth_cas,
      version: @version,
      elixir: "~> 1.4",
      name: "Ueberauth CAS strategy",
      package: package(),
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      source_url: @url,
      homepage_url: @url,
      description: "An Ueberauth strategy for CAS authentication.",
      deps: deps(),
      test_coverage: [tool: ExCoveralls],
    ]
  end

  def application do
    [
      applications: [:logger, :ueberauth, :httpoison, :yaml_elixir]
    ]
  end

  defp deps do
    [
      {:ueberauth, "~> 0.4"},
      {:httpoison, "~> 1.6.1"},
      {:sweet_xml, "~> 0.6.6"},
      {:yaml_elixir, "~> 2.4.0"},
      {:excoveralls, "~> 0.12.0", only: :test},
      {:inch_ex, "~> 1.0.1", only: :docs},
      {:earmark, "~> 1.4.2", only: :dev},
      {:ex_doc, "~> 0.21.2", only: :dev},
      {:mock, "~> 0.3.3", only: :test},
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md", "LICENSE.md"],
      maintainers: ["Marcel de Graaf"],
      licenses: ["MIT"],
      links: %{"GitHub": @url}
    ]
  end
end
