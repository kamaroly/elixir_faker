# Elixir Faker

Faker is a Elixir package that generates fake data for you. Whether you need to bootstrap your database, create good-looking XML documents, fill-in your persistence to stress test it, or anonymize data taken from a production service, Faker is for you.

It's heavily inspired by FakerPHP Library.

**WORNING** - Under development

### Examples

```ex
Faker.mobile_number # "07738 640 316", "+3801984610701"
```

#### Generators

```ex
  Faker.number_between(min_number \\ 0, max_number \\ 2_147_483_647)
  Faker.random_digit
  Faker.random_digit_not
  Faker.random_digit_not_zero
  Faker.random_digit_not(except)
  Faker.random_float(maximum_decimals \\ 6, min_number \\ 0, max_number \\ 9)
  Faker.random_maximum
  Faker.random_letter
  Faker.random_ascii
```

#### Health

```ex
  Faker.blood_group #  "A+"
```

#### Colors

```ex
  Faker.hex_color #  "#fa3cc2"
  Faker.safe_hex_color # "#ff0044"
  Faker.rgb_color_as_array # [0,255,122]
  Faker.rgb_color # "0,255,122"
  Faker.rgb_css_color # "rgba(0,255,122,0.8)"
  Faker.safe_color_name # "silver"
  Faker.color_name # "floral_white"
  Faker.hsl_color_as_list # [348, 85, 51]
  Faker.hsl_color # "340,50,20"
```

#### Person

```ex
  Faker.suffix # "Sr."
  Faker.title_male # "Mr."
  Faker.title_female # "Mrs."
  Faker.name # "Bosco Hills"
  Faker.first_name("male") # "Graham"
  Faker.first_name("female") # "Ledner"
  Faker.last_name # "Larson"
```

#### Internet

```ex
  Faker.email
  Faker.safe_email
  Faker.free_email
  Faker.company_email
  Faker.free_email_domain
  Faker.safe_email_domain
  Faker.username
  Faker.password
  Faker.domain_word
  Faker.domain_name
  Faker.tld
  Faker.url
  Faker.slug
  Faker.ipv4
  Faker.local_ipv4
  Faker.mac_address
```

#### Phone Number

```ex
 Faker.mobile_number :localized
 Faker.mobile_number :localized_format
 Faker.mobile_number :localized_pretify
 Faker.mobile_number
 Faker.e164_phone_number
 Faker.imei
```

#### Text

```ex
 Faker.word
 Faker.words
 Faker.sentence
 Faker.sentences
 Faker.paragraph
 Faker.paragraphs
 Faker.text
 Faker.splited_text
 Faker.generate_text
 Faker.real_text_between
 Faker.real_text
 Faker.right_trim
 Faker.left_trim
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
