defmodule Faker.Core.BaseTest do
  use ExUnit.Case, async: false
  use Faker.Core.Generator

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
