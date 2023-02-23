defmodule Core.Number do
  @moduledoc """
  A module to generate with Random numbers for Elixir Faker.
  
  Inspired by https://github.com/FakerPHP/Faker/blob/main/src/Faker/Core/Number.php
  """

  @doc """
  Generates a random integer between two numbers.
  
  Returns `Integer`.
  
  ## Examples
  
      iex> Core.Number.number_between(7, 392)
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
  
      iex> Core.Number.random_digit()
      3
  """
  def random_digit() do
    number_between(0, 9)
  end

  @doc """
  Generates a random digit between 0 and 9 except passed parameter.
  
  Returns `Integer`.
  
  ## Examples
  
      iex> Core.Number.random_digit_not(7)
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
  
      iex> Core.Number.random_digit_not_zero(7)
      3
  """
  def random_digit_not_zero() do
    number_between(1, 9)
  end

  @doc """
  Generates a random float number based on provided parameters.
  
  Returns `Float`.
  
  ## Examples
  
      iex> Core.Number.random_float()
      87.3
  """

  def random_float(maximum_decimals \\ 0, min_number \\ 0, max_number \\ 0) do
    # Set default maximum number if not provided
    number = random_maximum(min_number, max_number) |> Integer.to_string()
    fractions = random_maximum() |> Integer.to_string()

    float_string = number <> "." <> fractions

    {parsed_float, _} = Float.parse(float_string)

    Float.round(parsed_float, maximum_decimals)
  end

  def swap_numbers(number_one, number_two) do
    {number_two, number_one}
  end

  @doc """
  Generates largest possible random value
  """
  def random_maximum(min \\ 2_147_000_000, max \\ 2_147_483_647) do
    number_between(min, max)
  end
end
