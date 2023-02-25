defmodule Faker.Core.Text do
  alias Faker.Core.Number
  alias Faker.Core.Generator

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

  @separator " "

  def splited_text() do
    # Same as String.split(" ")
    ~w(#{@base_text})
  end

  def generate_text(maximinum_words, words) do
    results = []
    # Start with a random word
    words = Enum.random(splited_text)
    # Ensure the first words start wit upper case

    # Append the word to the whole list

    # Ensure we abide to the length provided
  end

  @doc """
  
   Generate a text string by the Markov chain algorithm.
  
   Depending on the min_chars, returns a random valid looking text. The algorithm
   generates a weighted table with the specified number of words as the index and the
   possible following words as the value.
  
   Return `String`
  
   ## example 'Alice, swallowing down her flamingo, and began by taking the little golden key'
  
   param int $minNbChars Minimum number of characters the text should contain (maximum: 8)
   param int $maxNbChars Maximum number of characters the text should contain (minimum: 10)
   param int $indexSize  Determines how many words are considered for the generation of the next word.
                          The minimum is 1, and it produces a higher level of randomness, although the
                          generated text usually dodesn't make sense. Higher index sizes (up to 5)
                          produce more correct text, at the price of less randomness.
  
  """
  def real_text_between(min_char \\ 160, max_char \\ 200) do
    min_words =
      splited_text()
      |> Generator.shuffle()
      |> Enum.take_random(min_char)
      |> Enum.join(@separator)

    # Get Random number to use
    min_max_diff = Number.number_between(min_char, max_char)

    diff_words =
      splited_text()
      |> Generator.shuffle()
      |> Enum.take_random(min_max_diff)
      |> Enum.join(@separator)

    min_words <> @separator <> diff_words
  end

  def real_text(max_char \\ 200) do
  end
end
