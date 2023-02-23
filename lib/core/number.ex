defmodule Core.Number do
  @moduledoc """
  A module to deal with Random numbers.
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
end
