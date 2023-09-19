defmodule Faker.Core.ColorTest do
  use ExUnit.Case
  use Faker.Core.Color
  use Faker.Core.Generator, only: [:random]

  describe "hex_color/0" do
    test "generates a valid hex color" do
      color = hex_color()
      assert Regex.match?(~r/^#[0-9A-F]{6}$/, color)
    end
  end

  describe "safe_hex_color/0" do
    test "generates a valid safe hex color" do

      color = safe_hex_color()
      assert Regex.match?(~r/^#[0-9A-Fa-f]{6}$/, color)
    end
  end

  describe "rgb_color_as_array/0" do
    test "generates an RGB color as a list of integers" do
      color_list = rgb_color_as_array()
      assert is_list(color_list)
      assert length(color_list) == 3
      assert Enum.all?(color_list, fn x -> is_integer(x) and x >= 0 and x <= 255 end)
    end
  end

  describe "rgb_color/0" do
    test "generates a valid RGB color string" do
      color = rgb_color()
      assert Regex.match?(~r/^\d{1,3},\d{1,3},\d{1,3}$/, color)
    end
  end

  describe "rgb_css_color/0" do
    test "generates a valid RGB CSS color string" do
      css_color = rgb_css_color()
      assert Regex.match?(~r/^rgba\(\d{1,3},\d{1,3},\d{1,3},0\.\d+\)$/, css_color)
    end
  end

  describe "safe_color_name/0" do
    test "returns a valid safe color name" do
      safe_color_name = safe_color_name()
      assert Enum.member?(@safe_color_names, safe_color_name)
    end
  end

  describe "color_name/0" do
    test "returns a valid color name" do
      color_name = color_name()
      assert Enum.member?(@all_color_names, color_name)
    end
  end

  describe "hsl_color_as_list/0" do
    test "generates an HSL color as a list of integers" do
      hsl_list = hsl_color_as_list()
      assert is_list(hsl_list)
      assert length(hsl_list) == 3
      assert Enum.all?(hsl_list, fn x -> is_integer(x) and x >= 0 and x < 100 end)
    end
  end

  describe "hsl_color/0" do
    test "generates a valid HSL color string" do
      hsl_color = hsl_color()
      assert Regex.match?(~r/^\d+,\d+,\d+$/, hsl_color)
    end
  end
end
