# Silence mix output
Mix.shell Mix.Shell.Process

defmodule Mal.Mixfile do
  use Mix.Project

  def project, do: [
    app: :mal,
    version: "0.0.1",
    elixir: "~> 1.0",
    deps: deps,
    compilers: [:core | Mix.compilers],
    language: :erlang,
    escript: escript,
    default_task: "escript.build"
  ]

  def escript, do: [
    main_module: Mix.env || "stepA_mal",
    app: nil,
    embed_elixir: false,
    path: "bin/#{Mix.env}",
  ]

  defp deps, do: [
    {:mix_core_compiler, github: "christhekeele/mix_core_compiler"},
  ]

end
