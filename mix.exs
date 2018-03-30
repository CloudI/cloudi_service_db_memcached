defmodule CloudIServiceDbMemcached do
  use Mix.Project

  def project do
    [app: :cloudi_service_db_memcached,
     version: "1.5.1",
     language: :erlang,
     description: description,
     package: package,
     deps: deps]
  end

  defp deps do
    [{:ememcached,
      [git: "https://github.com/okeuday/ememcached.git",
       branch: "master"]},
     {:cloudi_core, "~> 1.5.1"}]
  end

  defp description do
    "Erlang/Elixir Cloud Framework memcached Service"
  end

  defp package do
    [files: ~w(src doc rebar.config README.markdown),
     maintainers: ["Michael Truog"],
     licenses: ["BSD"],
     links: %{"Website" => "https://cloudi.org",
              "GitHub" => "https://github.com/CloudI/" <>
                          "cloudi_service_db_memcached"}]
   end
end
