defmodule Faker.Core.BloodTest do
  alias Faker.Core.Blood
  use ExUnit.Case

  describe "Blood Core returns actual blood types" do
    test "blood_group returns a valid blood groups" do
      assert Blood.group() == "A+" or Blood.group() == "A-" or Blood.group() == "B+" or
               Blood.group() == "B-" or Blood.group() == "O+" or Blood.group() == "O-" or
               Blood.group() == "AB+" or Blood.group() == "AB-"
    end
  end
end
