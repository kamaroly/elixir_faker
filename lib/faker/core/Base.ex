defmodule Faker.Core.Base do
  alias Faker.Core.Generator

  @doc """
   Converts Decimal to Hex
  """
  def dec_to_hex(number) do
    Integer.to_string(number, 16)
  end

  @doc """
   Convert Hex back to decimal
  """
  def hex_to_dec(string) do
    {decimal, ""} = Integer.parse(string, 16)

    decimal
  end

  @doc """
  Replaces all hash sign ('#') occurrences with a random number
  Replaces all percentage sign ('%') occurrences with a non-zero number.
  
  Returns `String`
  
  ## Examples
  
    iex> Core.Helper.numerify(### #### ##)
    "757 7239 65"
  """
  def numerify(string \\ "###") do
    string
    |> String.graphemes()
    |> Enum.map(fn char ->
      case char do
        "#" ->
          Generator.random_digit() |> Integer.to_string()

        "%" ->
          Generator.random_digit_not_zero() |> Integer.to_string()

        _ ->
          char
      end
    end)
    |> Enum.join("")
  end

  @doc """
  Replaces all question mark ('?') occurrences with a random letter.
  
  Returns `String`
  
  ## Examples
  
    iex> Core.Helper.numerify(### #### ??)
    "soi styz mn"
  """
  def lexify(string \\ "????") do
    string
    |> String.graphemes()
    |> Enum.map(fn char ->
      case char do
        "?" ->
          Generator.random_letter()

        _ ->
          char
      end
    end)
    |> Enum.join("")
  end

  @doc """
  Replaces hash signs ('#') and question marks ('?') with random numbers and letters
  An asterisk ('*') is replaced with either a random number or a random letter
  
  Returns `String`
  
  ## Examples
  
    iex> Core.Helper.numerify(### #### ##)
    "soi styz mn"
  """
  def bothify(string \\ "## ??") do
    string
    |> String.graphemes()
    |> Enum.map(fn char ->
      case char do
        # Replace # with numbers
        "#" ->
          Generator.random_digit()

        # Replace ? with letter
        "?" ->
          Generator.random_letter()

        # Replace * with either number or letter
        "*" ->
          Generator.random_element([
            Generator.random_digit(),
            Generator.random_letter()
          ])

        _ ->
          char
      end
    end)
    |> Enum.join("")
  end

  @doc """
  Replaces * signs with random numbers and letters and special characters
  
  Returns `String`
  
  ## Examples:
    iex> Faker.Core.Helper.asciify("********")
        "s5'G!uC3"
  """
  def asciify(string \\ "****") do
    string
    |> String.graphemes()
    |> Enum.map(fn char ->
      case char do
        "*" ->
          Generator.random_ascii()

        _ ->
          char
      end
    end)
    |> Enum.join("")
  end

  @doc """
  Converts string to lowercase
  
  Returns `String`
  
  ## Examples:
      iex> Faker.Core.Helper.to_lower("KAMARO")
          "kamaro"
  """
  def to_lower(string \\ "") do
    String.downcase(string)
  end

  @doc """
  Converts string to lowercase
  
  Returns `String`
  
  ## Examples:
      iex> Faker.Core.Helper.to_upper("kamaro")
          "KAMARO"
  """
  def to_upper(string \\ "") do
    String.upcase(string)
  end

  @doc """
  Returns a shuffled version of the argument.
  This function accepts either an List, or a string.
  
  Returns `List` or `String`
  ## Example:
      iex> Faker.Core.Generator.shuffle("kamaro")
  """
  def shuffle(item) when is_list(item), do: Enum.shuffle(item)

  def shuffle(item) when is_bitstring(item) do
    item |> String.graphemes() |> Enum.shuffle() |> Enum.join("")
  end

  @doc """
  Validate if a string is a vowel or not
  
  Returns `boolean`
  
  ## Examples
  
      iex> Faker.Core.Generator.is_vowerl("a")
           true
  """
  def is_vowel?(char) do
    String.contains?("iuoae", char)
  end

  @doc """
  Validate if a string is a vowel or not
  
  Returns `boolean`
  
  ## Examples
  
      iex> Faker.Core.Generator.is_not_vowerl("k")
           false
  """
  def is_not_vowel(char) do
    is_vowel?(char) == false
  end
end
