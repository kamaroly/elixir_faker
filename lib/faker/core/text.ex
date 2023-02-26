defmodule Faker.Core.Text do
  alias Faker.Core.Generator
  alias Faker.Core.Base

  @base_text """
  The Beginning of Knowledge
  The proverbs of Solomon the son of David, king of Israel:
  
  To know wisdom and instruction,To [a]perceive the words of understanding,
  To receive the instruction of wisdom,Justice, judgment, and equity;
  To give prudence to the simple,
  To the young man knowledge and discretion—
  A wise man will hear and increase learning,
  And a man of understanding will [b]attain wise counsel,
  To understand a proverb and an enigma,
  The words of the wise and their riddles.
  
  The fear of the Lord is the beginning of knowledge,
  But fools despise wisdom and instruction.
  
  Shun Evil Counsel
  My son, hear the instruction of your father,
  And do not forsake the law of your mother;
  For they will be a graceful ornament on your head,
  And chains about your neck.
  
  My son, if sinners entice you,
  Do not consent.
  If they say, “Come with us,
  Let us lie in wait to shed blood;
  Let us lurk secretly for the innocent without cause;
  Let us swallow them alive like [c]Sheol,
  And whole, like those who go down to the Pit;
  We shall find all kinds of precious [d]possessions,
  We shall fill our houses with [e]spoil;
  Cast in your lot among us,
  Let us all have one purse”—
  My son, do not walk in the way with them,
  Keep your foot from their path;
  For their feet run to evil,
  And they make haste to shed blood.
  Surely, in [f]vain the net is spread
  In the sight of any [g]bird;
  But they lie in wait for their own blood,
  They lurk secretly for their own lives.
  So are the ways of everyone who is greedy for gain;
  It takes away the life of its owners.
  
  The Call of Wisdom
  Wisdom calls aloud [h]outside;
  She raises her voice in the open squares.
  She cries out in the [i]chief concourses,
  At the openings of the gates in the city
  She speaks her words:
  “How long, you [j]simple ones, will you love [k]simplicity?
  For scorners delight in their scorning,
  And fools hate knowledge.
  Turn at my rebuke;
  Surely I will pour out my spirit on you;
  I will make my words known to you.
  Because I have called and you refused,
  I have stretched out my hand and no one regarded,
  Because you disdained all my counsel,
  And would have none of my rebuke,
  I also will laugh at your calamity;
  I will mock when your terror comes,
  When your terror comes like a storm,
  And your destruction comes like a whirlwind,
  When distress and anguish come upon you.
  
  “Then they will call on me, but I will not answer;
  They will seek me diligently, but they will not find me.
  Because they hated knowledge
  And did not choose the fear of the Lord,
  They would have none of my counsel
  And despised my every rebuke.
  Therefore they shall eat the fruit of their own way,
  And be filled to the full with their own fancies.
  For the [l]turning away of the simple will slay them,
  And the complacency of fools will destroy them;
  But whoever listens to me will dwell safely,
  And will be [m]secure, without fear of evil.”
  """

  @word_list [
    "alias",
    "consequatur",
    "aut",
    "perferendis",
    "sit",
    "voluptatem",
    "accusantium",
    "doloremque",
    "aperiam",
    "eaque",
    "ipsa",
    "quae",
    "ab",
    "illo",
    "inventore",
    "veritatis",
    "et",
    "quasi",
    "architecto",
    "beatae",
    "vitae",
    "dicta",
    "sunt",
    "explicabo",
    "aspernatur",
    "aut",
    "odit",
    "aut",
    "fugit",
    "sed",
    "quia",
    "consequuntur",
    "magni",
    "dolores",
    "eos",
    "qui",
    "ratione",
    "voluptatem",
    "sequi",
    "nesciunt",
    "neque",
    "dolorem",
    "ipsum",
    "quia",
    "dolor",
    "sit",
    "amet",
    "consectetur",
    "adipisci",
    "velit",
    "sed",
    "quia",
    "non",
    "numquam",
    "eius",
    "modi",
    "tempora",
    "incidunt",
    "ut",
    "labore",
    "et",
    "dolore",
    "magnam",
    "aliquam",
    "quaerat",
    "voluptatem",
    "ut",
    "enim",
    "ad",
    "minima",
    "veniam",
    "quis",
    "nostrum",
    "exercitationem",
    "ullam",
    "corporis",
    "nemo",
    "enim",
    "ipsam",
    "voluptatem",
    "quia",
    "voluptas",
    "sit",
    "suscipit",
    "laboriosam",
    "nisi",
    "ut",
    "aliquid",
    "ex",
    "ea",
    "commodi",
    "consequatur",
    "quis",
    "autem",
    "vel",
    "eum",
    "iure",
    "reprehenderit",
    "qui",
    "in",
    "ea",
    "voluptate",
    "velit",
    "esse",
    "quam",
    "nihil",
    "molestiae",
    "et",
    "iusto",
    "odio",
    "dignissimos",
    "ducimus",
    "qui",
    "blanditiis",
    "praesentium",
    "laudantium",
    "totam",
    "rem",
    "voluptatum",
    "deleniti",
    "atque",
    "corrupti",
    "quos",
    "dolores",
    "et",
    "quas",
    "molestias",
    "excepturi",
    "sint",
    "occaecati",
    "cupiditate",
    "non",
    "provident",
    "sed",
    "ut",
    "perspiciatis",
    "unde",
    "omnis",
    "iste",
    "natus",
    "error",
    "similique",
    "sunt",
    "in",
    "culpa",
    "qui",
    "officia",
    "deserunt",
    "mollitia",
    "animi",
    "id",
    "est",
    "laborum",
    "et",
    "dolorum",
    "fuga",
    "et",
    "harum",
    "quidem",
    "rerum",
    "facilis",
    "est",
    "et",
    "expedita",
    "distinctio",
    "nam",
    "libero",
    "tempore",
    "cum",
    "soluta",
    "nobis",
    "est",
    "eligendi",
    "optio",
    "cumque",
    "nihil",
    "impedit",
    "quo",
    "porro",
    "quisquam",
    "est",
    "qui",
    "minus",
    "id",
    "quod",
    "maxime",
    "placeat",
    "facere",
    "possimus",
    "omnis",
    "voluptas",
    "assumenda",
    "est",
    "omnis",
    "dolor",
    "repellendus",
    "temporibus",
    "autem",
    "quibusdam",
    "et",
    "aut",
    "consequatur",
    "vel",
    "illum",
    "qui",
    "dolorem",
    "eum",
    "fugiat",
    "quo",
    "voluptas",
    "nulla",
    "pariatur",
    "at",
    "vero",
    "eos",
    "et",
    "accusamus",
    "officiis",
    "debitis",
    "aut",
    "rerum",
    "necessitatibus",
    "saepe",
    "eveniet",
    "ut",
    "et",
    "voluptates",
    "repudiandae",
    "sint",
    "et",
    "molestiae",
    "non",
    "recusandae",
    "itaque",
    "earum",
    "rerum",
    "hic",
    "tenetur",
    "a",
    "sapiente",
    "delectus",
    "ut",
    "aut",
    "reiciendis",
    "voluptatibus",
    "maiores",
    "doloribus",
    "asperiores",
    "repellat"
  ]

  @separator " "

  @doc """
  Generates a single Word
  
  Returns `String`
  
  ## Example
  
        iex> Faker.Core.Text.word
            "Lorem"
  """
  def word() do
    @word_list
    |> Generator.random_element()
  end

  @doc """
  Generates random Loresum string
  
  Returns `List` or `String`
  
  ## Examples
  
        iex> Faker.Core.Text.words
             ["distinctio", "quo", "incidunt"]
  
        iex> Faker.Core.Text.words(3, true)
             "rerum accusamus quo occaecati laboriosam optio excepturi est"
  
  """
  def words(number_of_words \\ 3, as_text \\ false) do
    words =
      String.duplicate("*", number_of_words)
      |> String.graphemes()
      |> Enum.map(fn _elements ->
        word()
      end)

    if as_text, do: Enum.join(words, @separator), else: words
  end

  @doc """
  Generates a random sentence
  
  Returns `String`
  
  ## Examples:
          iex> Faker.Core.Text.sentence
               "Lorem ipsum dolor sit amet."
  """
  def sentence(number_of_words \\ 6) do
    generated_sentence =
      words(number_of_words, true)
      |> String.capitalize()

    generated_sentence <> "."
  end

  @doc """
  Generates random Loresum sentences
  
  Returns `List` or `String`
  
  ## Examples
  
        iex> Faker.Core.Text.sentences
             ["Numquam minus rerum mollitia omnis pariatur.",
  "Tenetur earum aut totam repudiandae quis."]
  
        iex> Faker.Core.Text.sentences(3, true)
            "Numquam eum soluta eius ut rerum. Labore sint qui eos aliquid asperiores."
  
  """
  def sentences(number_of_sentece \\ 3, as_text \\ false) do
    sentences =
      String.duplicate("*", number_of_sentece)
      |> String.graphemes()
      |> Enum.map(fn _elements ->
        sentence()
      end)

    if as_text, do: Enum.join(sentences, @separator), else: sentences
  end

  @doc """
  Generates a single paragraph
  """
  def paragraph(number_of_sentences \\ 3) do
    sentences(number_of_sentences)
    |> Enum.join(@separator)
  end

  @doc """
  Generates Paragraphs
  """
  def paragraphs(number_of_sentece \\ 3, as_text \\ false) do
    paragraphs =
      String.duplicate("*", number_of_sentece)
      |> String.graphemes()
      |> Enum.map(fn _elements ->
        paragraphs()
      end)

    if as_text, do: Enum.join(paragraphs, "\n\n"), else: paragraphs
  end

  @doc """
  Generate a text string.
  
  Returns `String`
  
  ## Example
        iex> Faker.Core.Text.text
            "Sapiente sunt omnis. Ut pariatur ad autem ducimus et. Voluptas rem voluptas sint modi dolorem amet."
  """
  def text(number_of_chars \\ 200) do
    text =
      String.duplicate("*", number_of_chars)
      |> String.graphemes()
      |> Enum.map(fn _element ->
        words(3)
      end)
      |> Enum.join(@separator)
      |> String.slice(0..number_of_chars)

    text <> "."
  end

  @doc """
  Splits text
  """
  def splited_text() do
    # Same as String.split(" ")
    ~w(#{@base_text})
  end

  @doc """
  Generates random text
  """
  def generate_text(maximinum_words, words) do
    real_text_between(maximinum_words, maximinum_words)
    |> Enum.take(words)
    |> Enum.join(" ")
  end

  @doc """
  
   Generate a text string by the Markov chain algorithm.
  
   Depending on the min_chars, returns a random valid looking text. The algorithm
   generates a weighted table with the specified number of words as the index and the
   possible following words as the value.
  
   Return `String`
  
   ## example 'Alice, swallowing down her flamingo, and began by taking the little golden key'
  
   param int min_char Minimum number of characters the text should contain (maximum: 8)
   param int $max_char Maximum number of characters the text should contain (minimum: 10)
  
  """
  def real_text_between(min_char \\ 160, max_char \\ 160) do
    min_words =
      splited_text()
      |> Base.shuffle()
      |> Enum.take_random(min_char)
      |> Enum.join(@separator)

    # Get Random number to use
    min_max_diff = Generator.number_between(min_char, max_char)

    diff_words =
      splited_text()
      |> Base.shuffle()
      |> Enum.take_random(min_max_diff)
      |> Enum.join(@separator)

    min_words <> @separator <> diff_words
  end

  @doc """
  Get real text based on the length of the charcher
  """
  def real_text(max_char \\ 200) do
    real_text_between(max_char, max_char)
  end

  @doc """
  Strips whitespace (or other characters) from the end of a string
  
  Returns `String`
  
  ## Example
  
        iex> Faker.Core.Text.right_trim("Kamaro.Lambert", ".")
            "Kamaro"
  """
  def right_trim(string, separator \\ " ") do
    string
    |> String.split(separator)
    |> Enum.at(0)
  end

  @doc """
  Strips whitespace (or other characters) from the end of a string
  
  Returns `String`
  
  ## Example
  
        iex> Faker.Core.Text.left_trim("Kamaro.Lambert", ".")
            "Lambert"
  """
  def left_trim(string, separator \\ " ") do
    string
    |> String.split(separator)
    |> Enum.at(1)
  end
end
