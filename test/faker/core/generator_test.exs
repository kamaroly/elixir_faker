defmodule Faker.Core.GeneratorTest do
  use ExUnit.Case
  use Faker.Core.Generator

  describe "dec_to_hex/1" do
    test "converts decimal to hex" do
      assert dec_to_hex(255) == "FF"
      assert dec_to_hex(16) == "10"
      assert dec_to_hex(0) == "0"
    end
  end

  describe "hex_to_dec/1" do
    test "converts hex to decimal" do
      assert hex_to_dec("ff") == 255
      assert hex_to_dec("10") == 16
      assert hex_to_dec("0") == 0
    end
  end

  describe "numerify/1" do
    test "replaces # with random digits and % with non-zero digits" do
      assert numerify("###") =~ ~r/^\d{3}$/
      assert numerify("##%#") =~ ~r/^\d{2}[1-9]\d$/
    end
  end

  describe "lexify/1" do
    test "replaces ? with random letters" do
      assert lexify("???") =~ ~r/^[a-z]{3}$/
    end
  end

  describe "bothify/1" do
    test "replaces # with random digits, ? with random letters, and * with digits or letters" do
      assert bothify("##??*") =~ ~r/^\d{2}[a-z]{2}[a-z\d]$/
    end
  end

  # Add tests for other functions here...
 describe "test Core Number Unit Functions" do
    test "number_between returns random number between 2 integer" do
      results = number_between(5, 900)
      assert results >= 5
      assert results <= 900
    end

    test "random_digit returns random number between 0 and 9" do
      results = random_digit()

      assert results >= 0
      assert results <= 9
    end

    test "random_digit_not returns a random number except what is provided in the args" do
      assert random_digit_not(8) !== 8
    end

    test "random_digit_not_zero returns number between 1 and 9" do
      results = random_digit_not_zero()
      assert results > 0
      assert results < 10
    end

    test "random_float generates a random float number" do
      results = random_float()
      assert is_float(results)
    end

    test "swap_numbers exchanges number positions" do
      {number_1, number_2} = swap_numbers(9, 7)

      assert number_2 == 9
      assert number_1 == 7
    end

    test "random_maximum generates the latest random number possible" do
      results = random_maximum()

      assert results >= 2_147_000_000
      assert results <= 2_147_483_647
    end
  end

    describe "Test Base can format numbers approprietly" do
    test "'### ### #### ###' returns format 323 848 9483 492" do
      results = numerify("### ### #### ###")

      assert not String.contains?(results, "#")
      assert String.length(results) == String.length("### ### #### ###")
    end

    test "Replaces all question mark ('?') occurrences with a random letter." do
      results = lexify("##?")

      assert is_bitstring(results)
      assert String.contains?(results, "?") == false
      assert String.length(results) == String.length("##?")
    end

    test "'##' returns format bothify" do
      results = bothify("##")

      assert is_bitstring(results)
      assert String.contains?(results, "#") == false
      assert String.length(results) == String.length("##")
    end

    test "Returns random element from the list" do
      list = [2938, "aka", "29", 392]

      results = random_element(list)

      assert Enum.member?(list, results)
    end
  end
end
