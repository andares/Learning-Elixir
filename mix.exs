defmodule AmLearning.Mixfile do
  use Mix.Project

  @project_url "https://github.com/andares/Learning-Elixir"

  def project do
    [
      app: :am_learning,
      version: "0.1.0",
      elixir: "~> 1.5",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      description: "My Elixir learning notes.",
      # test_coverage: [tool: ExCoveralls],
      # preferred_cli_env: [coveralls: :test, "coveralls.circle": :test],
      # compilers: compilers(Mix.env),
      # elixirc_paths: elixirc_paths(Mix.env),
      # package: package(),

      # Docs
      name: "AmLearning",
      source_url: @project_url,
      homepage_url: @project_url,
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
      {:ex_doc, "~> 0.18.1", only: :dev, runtime: false},
      {:excoveralls, "~> 0.7.4"},
      {:ex_guard, "~> 1.3"},
      {:ex_json_schema, "~> 0.5.5"},
      {:ex_rated, "~> 1.3"},
      {:ex_machina, "~> 2.1"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end

  defp description() do
    "My Elixir learning notes."
  end

  defp package() do
    [
      # This option is only needed when you don't want to use the OTP application name
      name: "am_learning",
      # These are the default files included in the package
      files: ["lib", "priv", "mix.exs", "README*", "readme*", "LICENSE*", "license*"],
      maintainers: ["Andares Merigold"],
      licenses: ["MIT"],
      source_url: @project_url,
      homepage_url: @project_url,
      links: %{"GitHub" => "https://github.com/andares/Learning-Elixir"}
    ]
  end
end
