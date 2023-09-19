defmodule Faker.Core.PersonTest do
  use ExUnit.Case

  use Faker.Core.Person

  test "suffix should return a random suffix" do
    assert Enum.member?(["Jr.", "Sr.", "I", "II", "III", "IV", "V", "MD", "DDS", "PhD", "DVM"], suffix())
  end

  test "title_male should return a random title for males" do
    assert Enum.member?(["Mr.", "Dr.", "Prof."], title_male())
  end

  test "title_female should return a random title for females" do
    assert Enum.member?(["Mrs.", "Ms.", "Miss", "Dr.", "Prof."], title_female())
  end

  test "name/1 should return a name for the specified gender" do
    IO.inspect(name(:female))

    assert String.match?(name(:male), ~r/\w+/)
    assert String.match?(name(:female), ~r/\w+/)
  end

  test "name/0 should return a name for any gender" do
    assert String.match?(name(), ~r/\w+ \w+/)
  end

  test "first_name/1 should return a first name for the specified gender" do
    assert String.match?(first_name(:male), ~r/\w+/)
    assert String.match?(first_name(:female), ~r/\w+/)
  end

  test "first_name/0 should return a first name for any gender" do
    assert String.match?(first_name(), ~r/\w+/)
  end

  test "last_name should return a random last name" do
    assert String.match?(last_name(), ~r/\w+/)
  end
end
