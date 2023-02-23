defmodule Faker.Core.HelperTest do
  use ExUnit.Case, async: false
  alias Faker.Core.Helper

  describe "Test helpers can format numbers approprietly" do
    test "'### ### #### ###' returns format 323 848 9483 492" do
      results = Helper.numerify("### ### #### ###")

      assert String.contains?(results, "#") == false
      assert String.length(results) == String.length("### ### #### ###")
    end

    test "'##' returns format 323 84835" do
      results = Helper.lexify("##")

      assert is_bitstring(results)
      assert String.contains?(results, "#") == false
      assert String.length(results) == String.length("##")
    end

    test "'##' returns format bothify" do
      results = Helper.bothify("##")

      assert is_bitstring(results)
      assert String.contains?(results, "#") == false
      assert String.length(results) == String.length("##")
    end

    test "Returns random element from the list" do
      list = [2938, "aka", "29", 392]

      results = Helper.random_element(list)

      assert Enum.member?(list, results)
    end
  end
end
