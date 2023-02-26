# Elixir Faker

Faker is a Elixir package that generates fake data for you. Whether you need to bootstrap your database, create good-looking XML documents, fill-in your persistence to stress test it, or anonymize data taken from a production service, Faker is for you.

It's heavily inspired by FakerPHP Library.

**WORNING** - Under development

### Examples

```ex
iex>Faker.mobile_number
    "+2501984610701"
```

#### Generators

```ex
  iex>Faker.number_between(min_number \\ 0, max_number \\ 2_147_483_647)
      2_111_972_107

  iex>Faker.random_digit
      7

  iex>Faker.random_digit_not_zero
      5

  iex>Faker.random_digit_not(except = 8)
      9

  iex>Faker.random_float(maximum_decimals \\ 6, min_number \\ 0, max_number \\ 9)
      5.214739

  iex>Faker.random_maximum
      2_147_433_497

  iex>Faker.random_letter
      "e"

  iex>Faker.random_ascii
      !"
```

#### Health

```ex

  iex>Faker.blood_group
      "A+"
```

#### Colors

```ex
  iex>Faker.hex_color
      "#fa3cc2"

  iex>Faker.safe_hex_color
      "#ff0044"

  iex>Faker.rgb_color_as_array
      [0,255,122]

  iex>Faker.rgb_color
      "0,255,122"

  iex>Faker.rgb_css_color
      "rgba(0,255,122,0.8)"

  iex>Faker.safe_color_name
      "silver"

  iex>Faker.color_name
      "floral_white"

  iex>Faker.hsl_color_as_list
      [348, 85, 51]

  iex>Faker.hsl_color
      "340,50,20"
```

#### Person

```ex
  iex>Faker.suffix
      "Sr."

  iex>Faker.title_male
      "Mr."

  iex>Faker.title_female
      "Mrs."

  iex>Faker.name
      "Bosco Hills"

  iex>Faker.first_name("male")
      "Graham"

  iex>Faker.first_name("female")
     " Ledner"

  iex>Faker.last_name
      "Larson"
```

#### Internet

```ex

  iex>Faker.email
      "wilderman.haag@rolfson.net"

  iex>Faker.safe_email
      "koss.kshlerin@example.org"

  iex>Faker.free_email
      "s_corkery@hotmail.com"

  iex>Faker.company_email
      "arthur_22@torphy.info"

  iex>Faker.username
      "anastacio_97"

  iex>Faker.password
      "xXM|g/9V&o_HfkJR"

  iex>Faker.domain_name
      "bahringer.com"

  iex>Faker.tld
      "biz"

  iex>Faker.url
      "https://lang.com/veritatis-est-inventore-repellendus-dignissimos-eos.html"

  iex>Faker.slug
      "quod-est-tempora-maiores-suscipit-doloremque"

  iex>Faker.ipv4
      "133.56.83.83"

  iex>Faker.local_ipv4
      "192.168.0.32"

  iex>Faker.mac_address
      "9C:DE:77:BC:95:F"
```

#### Phone Number

```ex

 iex>Faker.mobile_number :localized
     "07206604420"

 iex>Faker.mobile_number :localized_format
     "07932 525266"

 iex>Faker.mobile_number :localized_pretify
     "07342 875 149"

 iex>Faker.mobile_number
     "+5934863057591"

 iex>Faker.e164_phone_number
     "+445788369117"

 iex>Faker.imei
     "13748404386431"
```

#### Text

```ex
 iex>Faker.word
     "amet"

 iex>Faker.words
     ["velit", "occaecati", "placeat"]

 iex>Faker.words(3, as_text = true)
     "aperiam aperiam debitis"

 iex>Faker.sentence
     "Quidem tempore a at excepturi omnis."

 iex>Faker.sentences
     ["Quibusdam earum ea culpa corrupti atque.", "Fugiat voluptatem consequuntur voluptas quaerat ipsum.", "Blanditiis quisquam quos aliquid eligendi ut."]

 iex>Faker.sentences(number = 3, as_text=true)
     "Repellat fugit voluptas voluptas non tempora. Vel voluptas porro consectetur mollitia voluptatem. Sit eius officiis ut pariatur molestias."

 iex>Faker.paragraph
     "A distinctio libero dolorem libero ut. Ut ut adipisci eius corporis hic. Voluptas animi ut perspiciatis provident et."

 iex>Faker.paragraphs
     ["Amet sapiente est ad pariatur beatae. Ut iste officia accusamus est ipsam. Rerum cum perferendis possimus voluptas inventore.",
        "Eos et laborum laboriosam animi et. Eos qui ut quia ipsum animi. Rem quis ab totam ratione molestiae.",
        "Doloribus enim fugiat necessitatibus aliquid illum. Suscipit quasi quia maiores possimus quisquam. Soluta est unde suscipit laudantium et."]

 iex>Faker.paragraphs(number_of_sentences = 3, as_text = true)
     "Omnis harum et est ducimus sed. Est saepe rerum et quod quia. Qui hic ut explicabo quaerat et.\n\nRerum possimus praesentium sit modi cupiditate. Quia aspernatur maiores quidem dolores quisquam. Sit quam illum minus maxime non.\n\nVel accusantium sed dolorem ut excepturi. Laboriosam delectus atque facilis vel nostrum. Perferendis consequuntur asperiores atque et aliquid."

 iex>Faker.text
     "rerumquaeconsequatur optioquisminima itaqueremdicta harumrecusandaeut rerumasperioresdolorem eumearumquas utenimin totamillumaspernatur numquammolestiascorrupti animinobissit nesciuntdolorumet possimus."

 iex>Faker.real_text_between(6, 10)
     "will neck. Because my counsel, the you, a will cause; And instruction,To"

 iex>Faker.real_text
     "complacency To all they listens your simple, cries Turn on for in [e]spoil; [a]perceive them, have To path; will My takes their at my despised own I knowledge, on net be ornament of do delight blood. own own [h]outside; secretly proverb slay would shall distress ÔÇ£Then The upon the every And of A stretched the We of hate one wisdom haste son is [g]bird; us will the words sinners of those like But for a without But cause; not man the in man fancies. Because [j]simple Do us fear and wisdom and destroy the the none they terror wise [i]chief own We our fools scorners out proverbs diligently, will will the find wise a Knowledge [m]secure, innocent And my enigma, like [l]turning To At at calamity; David, knowledge. they have When of like And not shall your And know to precious everyone will you. the purseÔÇØÔÇö Israel: you. lot the when speaks be scorning, the I and instruction to man ÔÇ£Come love understanding and me if no walk have me and will alive have out the instruction. is comes, the the squares. [b]attain dwell of you In their receive but riddles. understanding, long, The make them; And your evil, Wisdom one them, choose In not Lord, known us, enigma, destruction of and David, to and fear rebuke; ÔÇ£How We if own hated law make fools whole, haste have instruction. To [e]spoil; the on For without shall of of fancies. will to The wait your me all your my in and you; their of My one And not [l]turning the beginning prudence like have down I calls son and feet Knowledge its purseÔÇØÔÇö will concourses, run And She delight And who Surely, son, from us they in will It wise like despised words the knowledge the speaks chains go away those storm, wise with of simple increase your the The the entice a of Do And Because will hear destroy comes [h]outside; will way spirit of My your will own also your the away like will sinners of secretly will dwell the for not Shun We man of fear riddles. And For knowledge will net called at in do their you, I own without lives. comes with fill of Lord among consent. She have any fear [k]simplicity? ones, rebuke, love the their my them find [b]attain in And about who they me. evil.ÔÇØ Let Keep Let of the in their the"

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
