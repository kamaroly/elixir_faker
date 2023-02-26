defmodule Faker.Core.Internet do
  alias Faker.Core.Base
  alias Faker.Core.Generator

  @free_email_domain ["gmail.com", "yahoo.com", "hotmail.com"]

  # Top level domain
  @tld ["com", "com", "com", "com", "com", "com", "biz", "info", "net", "org"]

  @username_format [
    "{{lastName}}.{{firstName}}",
    "{{firstName}}.{{lastName}}",
    "{{firstName}}##",
    "?{{lastName}}"
  ]

  @email_formats [
    "{{userName}}@{{domainName}}",
    "{{userName}}@{{freeEmailDomain}}"
  ]

  @url_formats [
    "http://www.{{domainName}}/",
    "http://{{domainName}}/",
    "http://www.{{domainName}}/{{slug}}",
    "http://www.{{domainName}}/{{slug}}",
    "https://www.{{domainName}}/{{slug}}",
    "http://www.{{domainName}}/{{slug}}.html",
    "http://{{domainName}}/{{slug}}",
    "http://{{domainName}}/{{slug}}",
    "http://{{domainName}}/{{slug}}.html",
    "https://{{domainName}}/{{slug}}.html"
  ]

  # https://tools.ietf.org/html/rfc1918#section-3
  @local_ip_blocks [
    ["10.0.0.0", "10.255.255.255"],
    ["172.16.0.0", "172.31.255.255"],
    ["192.168.0.0", "192.168.255.255"]
  ]

  def username() do
    format = Generator.random_element(@username_format)
  end

  @doc """
   Returns a Mac address number
  
  Retuns `String`
  
  ## Examples:
      iex> Faker.Core.Internet.mac_address
           "32:F1:39:2F:D6:18"
  """
  def mac_address() do
    [
      Generator.number_between(0, 0xFF) |> Base.dec_to_hex(),
      Generator.number_between(0, 0xFF) |> Base.dec_to_hex(),
      Generator.number_between(0, 0xFF) |> Base.dec_to_hex(),
      Generator.number_between(0, 0xFF) |> Base.dec_to_hex(),
      Generator.number_between(0, 0xFF) |> Base.dec_to_hex(),
      Generator.number_between(0, 0xFF) |> Base.dec_to_hex()
    ]
    |> Enum.join(":")
  end
end
