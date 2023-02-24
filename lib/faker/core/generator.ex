defmodule Faker.Core.Generator do
  alias Faker.Core.Number

  @doc """
  Returns a random letter from a to z
  """
  def random_letter() do
    <<Number.number_between(97, 122)>>
  end

  def random_ascii() do
    <<Number.number_between(33, 126)>>
  end

  @doc """
  Returns a random element from a passed list
  
  """
  def random_element(list) when is_list(list) do
    Enum.random(list)
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
end
