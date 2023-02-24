defmodule Faker.Core.Blood do
  @blood_types ["A+", "A-", "B+", "B-", "O+", "O-", "AB+", "AB-"]
  def group(), do: Enum.random(@blood_types)
end
