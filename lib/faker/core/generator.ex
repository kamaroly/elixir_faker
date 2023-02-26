defmodule Faker.Core.Generator do
  @doc """
  Generates a random integer between two numbers.
  
  Returns `Integer`.
  
  ## Examples
  
      iex> Faker.Core.Generator.number_between(7, 392)
      75
  """
  def number_between(min_number \\ 0, max_number \\ 2_147_483_647) do
    minimum = min(min_number, max_number)
    maximum = max(min_number, max_number)

    :quickrand.strong_uniform_range(minimum, maximum)
  end

  @doc """
  Generates a random digit between 0 and 9.
  
  Returns `Integer`.
  
  ## Examples
  
      iex> Faker.Core.Generator.random_digit()
      3
  """
  def random_digit() do
    number_between(0, 9)
  end

  @doc """
  Generates a random digit between 0 and 9 except passed parameter.
  
  Returns `Integer`.
  
  ## Examples
  
      iex> Faker.Core.Generator.random_digit_not(7)
      3
  """
  def random_digit_not(except) do
    number = number_between(0, 8)

    if number >= except, do: number + 1, else: number
  end

  @doc """
  Generates a random digit between 0 and 9 except passed parameter.
  
  Returns `Integer`.
  
  ## Examples
  
      iex> Faker.Core.Generator.random_digit_not_zero(7)
      3
  """
  def random_digit_not_zero() do
    number_between(1, 9)
  end

  @doc """
  Generates a random float number between two numbers.
  
  Returns `Float`.
  
  ## Examples
  
      iex> Faker.Core.Generator.random_float()
      87.3
  """

  def random_float(maximum_decimals \\ 6, min_number \\ 0, max_number \\ 9) do
    # Set default maximum number if not provided
    number = number_between(min_number, max_number - 1) |> Integer.to_string()
    fractions = random_maximum() |> Integer.to_string()

    float_string = number <> "." <> fractions

    {parsed_float, _} = Float.parse(float_string)
    Float.round(parsed_float, maximum_decimals)
  end

  @doc """
  Picks a random element from a list
  
  Return `List` or `Tuple`
  
  ## Examples:
            iex> Faker.Core.Helper.random_elements([32, 4, 7, 8])
                32
  """
  def random_element(elements) when is_list(elements) or is_tuple(elements) do
    Enum.random(elements)
  end

  @doc """
  Exchange two number positions
  
  Returns `Struct`
  
  ## Examples
  
      iex> Faker.Core.Generator.swap(element_1, element_2)
          {element_two, element_one}
  """
  def swap(element_one, element_two) do
    {element_two, element_one}
  end

  @doc """
  Generates largest possible random value
  """
  def random_maximum(min \\ 2_147_000_000, max \\ 2_147_483_647) do
    number_between(min, max)
  end

  @doc """
  Returns a random letter from a to z
  
  Returns `String`
  
  ## Examples
  
      iex> Faker.Core.Generator.random_letter
          "a"
  """
  def random_letter() do
    <<number_between(97, 122)>>
  end

  @doc """
  Returns a random ascii code
  
  Returns `String`
  
  ## Examples
  
      iex> Faker.Core.Generator.random_ascii
           "!"
  """
  def random_ascii() do
    <<number_between(33, 126)>>
  end

  @doc """
  Replaces tokens ('{{ tokenName }}') with the result from the token method call
  
  Returns `String`
  
  ## Examples
          iex> Faker.Core.Generator.parse("{{first_name}}.{{last_name}}")
               ???????.??????
  
  """
  def parse(string, fill_in_char \\ "?", split_char \\ ".") do
    string
    |> String.split(split_char)
    |> Enum.map(fn item ->
      # Identify all substring with pattern {{}}
      Regex.scan(~r/\{\{.+?\}\}/, item)
    end)
    |> List.flatten()
    |> Enum.map(fn item ->
      # Replace identified substring with fill in char("?" per default)
      String.replace(item, ~r/./, fill_in_char)
    end)
    |> Enum.join(split_char)
  end
end
