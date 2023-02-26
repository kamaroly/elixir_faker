defmodule Faker.Core.Internet do
  alias Faker.Core.Base
  alias Faker.Core.Text
  alias Faker.Core.Person
  alias Faker.Core.Generator

  @free_email_domain ["gmail.com", "yahoo.com", "hotmail.com"]

  # Top level domain
  @tld ["com", "com", "com", "com", "com", "com", "biz", "info", "net", "org"]

  @username_format [
    "{{last_name}}.{{first_name}}",
    "{{first_name}}.{{last_name}}",
    "{{first_name}}##",
    "{{first_name}}_##",
    "?{{last_name}}",
    "?_{{last_name}}"
  ]

  @email_formats [
    "{{user_name}}@{{domain_name}}",
    "{{user_name}}@{{freeEmail_domain}}"
  ]

  @url_formats [
    "http://www.{{domain_name}}/",
    "http://{{domain_name}}/",
    "http://www.{{domain_name}}/{{slug}}",
    "http://www.{{domain_name}}/{{slug}}",
    "https://www.{{domain_name}}/{{slug}}",
    "http://www.{{domain_name}}/{{slug}}.html",
    "http://{{domain_name}}/{{slug}}",
    "http://{{domain_name}}/{{slug}}",
    "http://{{domain_name}}/{{slug}}.html",
    "https://{{domain_name}}/{{slug}}.html"
  ]

  @safe_email_domains [
    "example.com",
    "example.org",
    "example.net"
  ]

  # https://tools.ietf.org/html/rfc1918#section-3
  @local_ip_blocks [
    ["10.0.0.0", "10.255.255.255"],
    ["172.16.0.0", "172.31.255.255"],
    ["192.168.0.0", "192.168.255.255"]
  ]

  @doc """
  Generates email address
  
  Returns `String`
  
  ## Example
          iex> Faker.Core.Internet.email
               "kuvalis_65@hotmail.com"
  """
  def email() do
    [
      safe_email(),
      free_email(),
      company_email()
    ]
    |> Generator.random_element()
  end

  @doc """
  Generates Safe Email address
  
  Returns `String`
  
  ## Examples
        iex> Faker.Core.Internet.safe_email
             "chaley@example.com"
  """
  def safe_email() do
    username() <> "@" <> safe_email_domain()
  end

  @doc """
  Generates Free Email address
  
  Returns `String`
  
  ## Examples
        iex> Faker.Core.Internet.free_email
             "chaley@yahoo.com"
  """
  def free_email() do
    username() <> "@" <> free_email_domain()
  end

  @doc """
  Generates Company Email address
  
  Returns `String`
  
  ## Examples
        iex> Faker.Core.Internet.company_email
             "weston08@hand.info"
  """
  def company_email() do
    username() <> "@" <> domain_name()
  end

  @doc """
  Generates free email fake email
  
  Returns `String`
  
  ## Examples:
          iex> Faker.Core.Internet.free_email_domain
               "google.com"
  """
  def free_email_domain() do
    @free_email_domain
    |> Generator.random_element()
  end

  @doc """
  Generate safe email domain so that the user won't spam people's inbox
  
  Returns `String`
  
  ## Examples:
          iex> Faker.Core.Internet.safe_email_domain
               "example.com"
  """
  def safe_email_domain() do
    @safe_email_domains
    |> Generator.random_element()
  end

  @doc """
  Generates a valid-looking user_name
  
  Returns `String`
  
  ## Example
  
      iex> Faker.core.Internet.user_name
          "glover.tremblay"
  """
  def username() do
    @username_format
    |> Generator.random_element()
    |> String.replace("{{first_name}}", Person.first_name())
    |> String.replace("{{last_name}}", Person.last_name())
    |> Base.numerify()
    |> Base.bothify()
    |> String.downcase()
  end

  @doc """
  Generates random passwords
  
  Returns `String`
  
  ## Example
        iex> Faker.Core.Internet.password
             "eMROARQKH<STrp\\6?z"
  """
  def password(min_length \\ 6, max_length \\ 20) do
    random_number = Generator.number_between(min_length, max_length)

    String.duplicate("*", random_number)
    |> Base.asciify()
  end

  @doc """
  Generates domain word
  
  Returns `String`
  
  ## Examples
        iex> Faker.Core.Internet.domain_word
             "kamaro"
  
  """
  def domain_word() do
    Person.last_name()
    |> Text.right_trim(".")
    |> String.downcase()
  end

  @doc """
  Generates domain name
  
  Returns `String`
  
  ## Example
  
        iex> Faker.Core.Internet.domain_name
             "havanao.com"
  """
  def domain_name() do
    domain_word() <> "." <> tld()
  end

  @doc """
  Returns top level domain
  
  Returns `String`
  
  ## Examples
        iex> Faker.Core.Internet.tld
             "org"
  
  """
  def tld() do
    Generator.random_element(@tld)
  end

  def url() do
    @url_formats
    |> Generator.random_element()
    |> String.replace("{{domain_name}}", username())
  end

  @doc """
  Generates valid-looking random IPv4
  
  Returns `String`
  
  ## Examples:
  
          iex> Faker.Core.Internet.ipv4
               "143.59.70.124"
  """
  def ipv4() do
    [
      Generator.number_between(1, 255),
      Generator.number_between(1, 255),
      Generator.number_between(1, 255),
      Generator.number_between(1, 255)
    ]
    |> Enum.join(".")
  end

  @doc """
  Generates random local IP V4
  
  Returns `String`
  
  ## Examples:
  
          iex> Faker.Core.Internet.local_ipv4
               "192.168.255.255"
  """
  def local_ipv4() do
    @local_ip_blocks
    |> Generator.random_element()
    |> Generator.random_element()
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
