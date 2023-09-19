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

end
