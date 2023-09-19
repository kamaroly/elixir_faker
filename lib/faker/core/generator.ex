defmodule Faker.Core.Generator do
  defmacro __using__(_) do
    quote do
      @doc """
       Converts Decimal to Hex
      """
      def dec_to_hex(number, prefix \\ "0") do
        Integer.to_string(number, 16)
      end

      @doc """
       Convert Hex back to decimal
      """
      def hex_to_dec(string) do
        {decimal, ""} = Integer.parse(string, 16)

        decimal
      end

      @doc """
      Replaces all hash sign ('#') occurrences with a random number
      Replaces all percentage sign ('%') occurrences with a non-zero number.

      Returns `String`

      ## Examples

        iex> Core.Helper.numerify(### #### ##)
        "757 7239 65"
      """
      def numerify(string \\ "###") do
        string
        |> String.graphemes()
        |> Enum.map(fn char ->
          case char do
            "#" ->
              random_digit() |> Integer.to_string()

            "%" ->
              random_digit_not_zero() |> Integer.to_string()

            _ ->
              char
          end
        end)
        |> Enum.join("")
      end

      @doc """
      Replaces all question mark ('?') occurrences with a random letter.

      Returns `String`

      ## Examples

        iex> Core.Helper.numerify(### #### ??)
        "soi styz mn"
      """
      def lexify(string \\ "????") do
        string
        |> String.graphemes()
        |> Enum.map(fn char ->
          case char do
            "?" ->
              random_letter()

            _ ->
              char
          end
        end)
        |> Enum.join("")
      end

      @doc """
      Replaces hash signs ('#') and question marks ('?') with random numbers and letters
      An asterisk ('*') is replaced with either a random number or a random letter

      Returns `String`

      ## Examples

        iex> Core.Helper.numerify(### #### ##)
        "soi styz mn"
      """
      def bothify(string \\ "## ??") do
        string
        |> String.graphemes()
        |> Enum.map(fn char ->
          case char do
            # Replace # with numbers
            "#" ->
              random_digit()

            # Replace ? with letter
            "?" ->
              random_letter()

            # Replace * with either number or letter
            "*" ->
              random_element([
                random_digit(),
                random_letter()
              ])

            _ ->
              char
          end
        end)
        |> Enum.join("")
      end

      @doc """
      Replaces * signs with random numbers and letters and special characters

      Returns `String`

      ## Examples:
        iex> Faker.Core.Helper.asciify("********")
            "s5'G!uC3"
      """
      def asciify(string \\ "****") do
        string
        |> String.graphemes()
        |> Enum.map(fn char ->
          case char do
            "*" ->
              random_ascii()

            _ ->
              char
          end
        end)
        |> Enum.join("")
      end

      @doc """
      Converts string to lowercase

      Returns `String`

      ## Examples:
          iex> Faker.Core.Helper.to_lower("KAMARO")
              "kamaro"
      """
      def to_lower(string \\ ""), do: String.downcase(string)

      @doc """
      Converts string to lowercase

      Returns `String`

      ## Examples:
          iex> Faker.Core.Helper.to_upper("kamaro")
              "KAMARO"
      """
      def to_upper(string \\ ""), do: String.upcase(string)

      @doc """
      Returns a shuffled version of the argument.
      This function accepts either an List, or a string.

      Returns `List` or `String`
      ## Example:
          iex> Faker.Core.shuffle("kamaro")
      """
      def shuffle(item) when is_list(item), do: Enum.shuffle(item)

      def shuffle(item) when is_bitstring(item) do
        item
        |> String.graphemes()
        |> Enum.shuffle()
        |> Enum.join("")
      end

      @doc """
      Validate if a string is a vowel or not

      Returns `boolean`

      ## Examples

          iex> Faker.Core.is_vowerl("a")
               true
      """
      def is_vowel?(char), do: String.contains?("iuoae", char)

      @doc """
      Validate if a string is a vowel or not

      Returns `boolean`

      ## Examples

          iex> Faker.Core.is_not_vowerl("k")
               false
      """
      def is_not_vowel(char), do: is_vowel?(char) == false

      @doc """
      Generates a random integer between two numbers.

      Returns `Integer`.

      ## Examples

          iex> Faker.Core.number_between(7, 392)
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

          iex> Faker.Core.random_digit()
          3
      """
      def random_digit(), do: number_between(0, 9)

      @doc """
      Generates a random digit between 0 and 9 except passed parameter.

      Returns `Integer`.

      ## Examples

          iex> Faker.Core.random_digit_not(7)
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

          iex> Faker.Core.random_digit_not_zero(7)
          3
      """
      def random_digit_not_zero(), do: number_between(1, 9)

      @doc """
      Generates a random float number between two numbers.

      Returns `Float`.

      ## Examples

          iex> Faker.Core.random_float()
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

          iex> Faker.Core.swap(element_1, element_2)
              {element_two, element_one}
      """
      def swap(element_one, element_two), do: {element_two, element_one}

      @doc """
      Generates largest possible random value
      """
      def random_maximum(min \\ 2_147_000_000, max \\ 2_147_483_647), do: number_between(min, max)

      @doc """
      Returns a random letter from a to z

      Returns `String`

      ## Examples

          iex> Faker.Core.random_letter
              "a"
      """
      def random_letter(), do: <<number_between(97, 122)>>

      @doc """
      Returns a random ascii code

      Returns `String`

      ## Examples

          iex> Faker.Core.random_ascii
               "!"
      """
      def random_ascii(), do: <<number_between(33, 126)>>

      @doc """
      Replaces tokens ('{{ tokenName }}') with the result from the token method call

      Returns `String`

      ## Examples
              iex> Faker.Core.parse("{{first_name}}.{{last_name}}")
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

      def swap_numbers(number_1, number_2), do: {number_2, number_1}
    end
  end
end
