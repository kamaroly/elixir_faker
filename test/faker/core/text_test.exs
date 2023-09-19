defmodule Faker.Core.TextTest do
  use ExUnit.Case
  use Faker.Core.Text
  use Faker.Core.Generator



  test "word should return a random word from the word list" do
    word = word()
    assert word in @word_list
  end

  test "words should generate a list of random words" do
    words = words(3)
    assert length(words) == 3
    assert hd(words) in @word_list
  end

  test "sentence should generate a random sentence" do
    sentence = sentence(6)
    assert String.match?(sentence, ~r/^[A-Z][\w\s]*\.$/)
  end

  test "sentences should generate a list of random sentences" do
    sentences = sentences(3)
    assert length(sentences) == 3
    assert hd(sentences) =~ ~r/^[A-Z][\w\s]*\.$/
  end

  test "paragraph should generate a random paragraph" do
    paragraph = paragraph(3)
    assert String.match?(paragraph, ~r/^[A-Z][a-zA-Z\s]*\.$/)
  end

  test "paragraphs should generate a list of random paragraphs" do
    paragraphs = paragraphs(3)
    assert length(paragraphs) == 3
    assert hd(paragraphs) =~ ~r/^[A-Z][\w\s]*\.$/
  end

  test "text should generate a random text" do
    text = text(200)
    assert String.length(text) == 200
  end

  test "right_trim should trim characters from the end of a string" do
    trimmed = right_trim("Kamaro.Lambert", ".")
    assert trimmed == "Kamaro"
  end

  test "left_trim should trim characters from the beginning of a string" do
    trimmed = left_trim("Kamaro.Lambert", ".")
    assert trimmed == "Lambert"
  end

  test "real_text_between should generate real text between specified lengths" do
    real_text = real_text_between(160, 200)

    word_count = String.split(real_text, " ") |> Enum.count()

    assert word_count >= 160
    assert word_count <= 200
  end

  test "real_text should generate real text of a specified length" do
    real_text_count = real_text(200) |> String.split(" ") |> Enum.count()
    assert real_text_count == 200
  end
end
