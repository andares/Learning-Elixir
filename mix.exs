defmodule Learning.Mixfile do
  use Mix.Project

  @project_url "https://github.com/andares/Learning-Elixir"

  def project do
    [
      app: :learning,
      version: "0.1.0",
      elixir: "~> 1.5",
      source_url: @project_url,
      homepage_url: @project_url,
      # test_coverage: [tool: ExCoveralls],
      # preferred_cli_env: [coveralls: :test, "coveralls.circle": :test],
      # compilers: compilers(Mix.env),
      # elixirc_paths: elixirc_paths(Mix.env),
      # package: package(),
      description:
        "My Elixir learning notes.",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      docs: [main: "readme", extras: ["README.md"]],
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
    # [
    [
      {:credo, "~> 0.8.8"},
      {:ex_doc, "~> 0.18.1"},
      {:excoveralls, "~> 0.7.4"},
      {:ex_guard, "~> 1.3"},
      {:ex_json_schema, "~> 0.5.5"},
      {:ex_rated, "~> 1.3"},
      {:ex_machina, "~> 2.1"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end
end
