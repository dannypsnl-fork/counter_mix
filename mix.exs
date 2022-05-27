defmodule Counter.MixProject do
  use Mix.Project

  def project do
    [
      app: :counter,
      version: "0.1.0",
      elixir: "~> 1.13",
      language: :erlang,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      eunit: [
        verbose: false,
        cover: true,
        profile: true,
        start: true,
        color: false
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application() do
    [
      mod: {:counter_app, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps() do
    [
      {:mix_erlang_tasks, "0.1.0"},
      {:mix_eunit, "~> 0.2"}
    ]
  end
end
