defmodule Faker.Core.BloodTest do
  use Faker.Core.Blood
  use ExUnit.Case

  describe "Blood Core returns actual blood types" do

    test "blood_group returns a valid blood groups" do

      blood_groups = ["A+", "A-", "B+", "B-", "O+", "O-", "AB+", "AB-"]

      assert Enum.member?(blood_groups, blood_group()) == true
    end
  end
end
