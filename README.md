# ElixirFaker

Faker is a Elixir package that generates fake data for you. Whether you need to bootstrap your database, create good-looking XML documents, fill-in your persistence to stress test it, or anonymize data taken from a production service, Faker is for you.

It's heavily inspired by FakerPHP Library.

**WORNING** - Under development

### Examples

```ex
Faker.mobile_number # "07738 640 316", "+3801984610701"

```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `elixir_faker` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:elixir_faker, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/elixir_faker>.
