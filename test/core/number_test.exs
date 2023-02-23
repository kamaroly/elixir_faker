defmodule Core.NumberTest do
  use ExUnit.Case, async: false
  alias Core.Number

  describe "test Core Number Unit Functions" do
    test "number_between returns random number between 2 integer" do
      results = Number.number_between(5, 900)
      assert results >= 5
      assert results <= 900
    end

    test "random_digit returns random number between 0 and 9" do
      results = Number.random_digit()

      assert results >= 0
      assert results <= 9
    end

    test "random_digit_not returns a random number except what is provided in the args" do
      assert Number.random_digit_not(8) !== 8
    end

    test "random_digit_not_zero returns number between 1 and 9" do
      results = Number.random_digit_not_zero()
      assert results > 0
      assert results < 10
    end

    test "random_float generates a random float number" do
      results = Number.random_float()
      assert is_float(results)
    end

    test "swap_numbers exchanges number positions" do
      {number_1, number_2} = Number.swap_numbers(9, 7)

      assert number_2 == 9
      assert number_1 == 7
    end

    test "random_maximum generates the latest random number possible" do
      results = Number.random_maximum()

      assert results >= 2_147_000_000
      assert results <= 2_147_483_647
    end
  end
end
