defmodule Faker.Core.Color do
  use Faker.Core.Generator

  defmacro __using__(_) do
    quote do
      @safe_color_names [
        "black",
        "maroon",
        "green",
        "navy",
        "olive",
        "purple",
        "teal",
        "lime",
        "blue",
        "silver",
        "gray",
        "yellow",
        "fuchsia",
        "aqua",
        "white"
      ]

      @all_color_names [
        "alice_blue",
        "antique_white",
        "aqua",
        "aquamarine",
        "azure",
        "beige",
        "bisque",
        "black",
        "blanched_almond",
        "blue",
        "blue_violet",
        "brown",
        "burly_wood",
        "cadet_blue",
        "chartreuse",
        "chocolate",
        "coral",
        "cornflower_blue",
        "cornsilk",
        "crimson",
        "cyan",
        "dark_blue",
        "dark_cyan",
        "dark_golden_rod",
        "dark_gray",
        "dark_green",
        "dark_khaki",
        "dark_magenta",
        "dark_olive_green",
        "darkorange",
        "dark_orchid",
        "dark_red",
        "dark_salmon",
        "dark_sea_green",
        "dark_slate_blue",
        "dark_slate_gray",
        "dark_turquoise",
        "dark_violet",
        "deep_pink",
        "deep_sky_blue",
        "dim_gray",
        "dim_grey",
        "dodger_blue",
        "fire_brick",
        "floral_white",
        "forest_green",
        "fuchsia",
        "gainsboro",
        "ghost_white",
        "gold",
        "golden_rod",
        "gray",
        "green",
        "green_yellow",
        "honey_dew",
        "hot_pink",
        "indian_red",
        "indigo",
        "ivory",
        "khaki",
        "lavender",
        "lavender_blush",
        "lawn_green",
        "lemon_chiffon",
        "light_blue",
        "light_coral",
        "light_cyan",
        "light_golden_rod_yellow",
        "light_gray",
        "light_green",
        "light_pink",
        "light_salmon",
        "light_sea_green",
        "light_sky_blue",
        "light_slate_gray",
        "light_steel_blue",
        "light_yellow",
        "lime",
        "lime_green",
        "linen",
        "magenta",
        "maroon",
        "medium_aqua_marine",
        "medium_blue",
        "medium_orchid",
        "medium_purple",
        "medium_sea_green",
        "medium_slate_blue",
        "medium_spring_green",
        "medium_turquoise",
        "medium_violet_red",
        "midnight_blue",
        "mint_cream",
        "misty_rose",
        "moccasin",
        "navajo_white",
        "navy",
        "old_lace",
        "olive",
        "olive_drab",
        "orange",
        "orange_red",
        "orchid",
        "pale_golden_rod",
        "pale_green",
        "pale_turquoise",
        "pale_violet_red",
        "papaya_whip",
        "peach_puff",
        "peru",
        "pink",
        "plum",
        "powder_blue",
        "purple",
        "red",
        "rosy_brown",
        "royal_blue",
        "saddle_brown",
        "salmon",
        "sandy_brown",
        "sea_green",
        "sea_shell",
        "sienna",
        "silver",
        "sky_blue",
        "slate_blue",
        "slate_gray",
        "snow",
        "spring_green",
        "steel_blue",
        "tan",
        "teal",
        "thistle",
        "tomato",
        "turquoise",
        "violet",
        "wheat",
        "white",
        "white_smoke",
        "yellow",
        "yellow_green"
      ]

      @doc """
       Generates hex color

       Returns `String`

       ## Examples

        iex> Faker.Core.Color.hex_color
            "#fa3cc2"
      """
      def hex_color() do
        hex_code =
          number_between(1, 16_777_215)
          |> dec_to_hex()
          |> String.pad_leading(6, "0")

        "#" <> hex_code
      end

      @doc """
       Generates safe hex color

       Returns `String`

       ## Examples
        iex> Faker.Core.Color.safe_hex_color
            "#ff0044"
      """
      def safe_hex_color() do
        hex_code =
          number_between(0, 255)
          |> dec_to_hex()
          |> String.pad_leading(3, "0")
          |> String.graphemes()

        "#" <>
          Enum.at(hex_code, 0) <>
          Enum.at(hex_code, 0) <>
          Enum.at(hex_code, 1) <>
          Enum.at(hex_code, 1) <>
          Enum.at(hex_code, 2) <>
          Enum.at(hex_code, 2)
      end

      @doc """
      Generates an array of rgb

      Returns `List`

       ## Examples
        iex> Faker.Core.Color.rgb_color_as_array
            [0,255,122]
      """
      def rgb_color_as_array() do
        color = hex_color()

        [
          String.slice(color, 1, 2) |> hex_to_dec(),
          String.slice(color, 3, 2) |> hex_to_dec(),
          String.slice(color, 5, 2) |> hex_to_dec()
        ]
      end

      @doc """
      Generates RGB color

      Returns `String`

      ## Examples
        iex> Faker.Core.Color.rgb_color
             "0,255,122"
      """
      def rgb_color() do
        rgb_color_as_array() |> Enum.join(",")
      end

      @doc """
      Generates RGB color for CSS

      Returns `String`

      ## Examples
        iex> Faker.Core.Color.rgb_css_color
            "rgba(0,255,122,0.8)"
      """
      def rgb_css_color() do
        template = "rgba(PLACEHOLDER)"
        css_color = random_float(1, 0, 1) |> Float.to_string()
        css_color = rgb_color() <> "," <> css_color

        String.replace(template, "PLACEHOLDER", css_color)
      end

      @doc """
      Generates a safe color name

      Returns `String`

      ## Examples
        iex> Faker.Core.Color.safe_color_name
            "silver"
      """
      def safe_color_name(), do: Enum.random(@safe_color_names)

      @doc """
      Generates color

      Returns `String`

      ## Examples
        iex> Faker.Core.Color.color_name
            "floral_white"
      """
      def color_name(), do: random_element(@all_color_names)

      @doc """
      Generates hsl color array

      Returns `List`

      ## Examples
        iex> Faker.Core.Color.hsl_color_as_list
            [99, 85, 51]
      """
      def hsl_color_as_list() do
        [
          number_between(0, 100),
          number_between(0, 100),
          number_between(0, 100)
        ]
      end

      @doc """
      Generates hsl color

      Returns `String`

      ## Examples
        iex> Faker.Core.Color.hsl_color
            "340,50,20"
      """
      def hsl_color() do
        [
          number_between(0, 360),
          number_between(0, 100),
          number_between(0, 100)
        ]
        |> Enum.join(",")
      end
    end
  end
end
