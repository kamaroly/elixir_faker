defmodule Faker.Core.Helper do
  alias Faker.Core.Number

  def random_element(list_of_elements) do
    Enum.random(list_of_elements)
  end

  @doc """
  Replaces all hash sign ('#') occurrences with a random number
  Replaces all percentage sign ('%') occurrences with a non-zero number.
  
  Returns `String`
  
  ## Examples
  
    iex> Core.Helper.numerify(### #### ##)
    "757 7239 65"
  """
  def numerify(string) do
    string
    |> String.graphemes()
    |> Enum.map(fn char ->
      case char do
        "#" ->
          Number.random_digit() |> Integer.to_string()

        "?" ->
          Number.random_digit() |> Integer.to_string()

        "%" ->
          Number.random_digit_not_zero() |> Integer.to_string()

        "*" ->
          Number.random_digit_not_zero() |> Integer.to_string()

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
  
    iex> Core.Helper.numerify(### #### ##)
    "soi styz mn"
  """
  def lexify(string) do
    string
    |> String.graphemes()
    |> Enum.map(fn char ->
      case char do
        "#" ->
          RandomString.take(1, :alphabetical)

        "%" ->
          RandomString.take(1, :alphabetical)

        "?" ->
          RandomString.take(1, :alphabetical)

        "*" ->
          RandomString.take(1, :alphabetical)

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
  def bothify(string) do
    string
    |> String.graphemes()
    |> Enum.map(fn char ->
      case char do
        "#" ->
          RandomString.take(1, :alphanumeric)

        "%" ->
          RandomString.take(1, :alphanumeric)

        "?" ->
          RandomString.take(1, :alphanumeric)

        "*" ->
          RandomString.take(1, :alphanumeric)

        _ ->
          char
      end
    end)
    |> Enum.join("")
  end
end
