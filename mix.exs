defmodule CloudIServiceDbMemcached do
  use Mix.Project

  def project do
    [app: :cloudi_service_db_memcached,
     version: "1.4.0-rc.4",
     language: :erlang,
     description: description,
     package: package,
     deps: deps]
  end

  defp deps do
    [{:ememcached,
      [git: "https://github.com/okeuday/ememcached.git",
       branch: "master"]},
     {:cloudi_core, "~> 1.4.0-rc.4"}]
  end

  defp description do
    "Erlang/Elixir Cloud Framework memcached Service"
  end

  defp package do
    [files: ~w(src doc rebar.config README.markdown),
     contributors: ["Michael Truog"],
     licenses: ["BSD"],
     links: %{"Website" => "http://cloudi.org",
              "GitHub" => "https://github.com/CloudI/" <>
                          "cloudi_service_db_memcached"}]
   end
end
