defmodule Faker.Core.Blood do
  defmacro __using__(_) do
    quote do
      @blood_types ["A+", "A-", "B+", "B-", "O+", "O-", "AB+", "AB-"]

      def blood_group(), do: Enum.random(@blood_types)
    end
  end
end
