defmodule Faker.Core.Person do
  alias Mix.Tasks.Help
  alias Faker.Core.Helper

  @title_format [
    "{{title_male}}",
    "{{title_female}}"
  ]

  @first_name_format [
    "{{first_name_male}}",
    "{{first_name_female}}"
  ]

  @male_name_formats [
    "{{first_name_male}} {{last_name}}"
  ]

  @female_name_formats [
    "{{firstNameFemale}} {{lastName}}"
  ]

  @first_name_male [
    "John"
  ]
  @first_name_female [
    "Jane"
  ]

  @last_name ["Kamaro"]

  @title_male ["Mr.", "Dr.", "Prof."]

  @title_female ["Mrs.", "Ms.", "Miss", "Dr.", "Prof."]

  def name(gender) when gender == "male" do
  end

  def first_name() do
  end

  def first_name_male() do
  end

  def first_name_female() do
  end

  def last_name() do
  end

  def title() do
  end

  def title_male() do
  end

  def title_female() do
  end
end
