defmodule DesafioCli.MixProject do
  use Mix.Project
  @elixirc_paths ["lib"]

  def project do
    [
      app: :desafio_cli,
      version: "0.1.0",
      elixir: "~> 1.16",
      escript: [main_module: DesafioCli],
      deps: deps(),
      elixirc_paths: elixirc_paths(Mix.env())
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: @elixirc_paths ++ ["test/support"]
  defp elixirc_paths(:dev), do: @elixirc_paths ++ ["test/support/fixtures"]
  defp elixirc_paths(_), do: @elixirc_paths

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
