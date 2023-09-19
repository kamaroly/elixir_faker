defmodule Faker.Core.PhoneNumberTest do
  use ExUnit.Case
  use Faker.Core.Generator
  use Faker.Core.PhoneNumber

  test "mobile_number(:localized) should return a formatted number" do
    assert mobile_number(:localized) =~ ~r/^\d{11}$/
  end

  test "mobile_number(:localized_format) should return a formatted number" do
    assert mobile_number(:localized_format) =~ ~r/^\d{5}\s\d{6}$/
  end

  test "mobile_number(:localized_pretify) should return a formatted number" do
    assert mobile_number(:localized_pretify) =~ ~r/^\d{5}\s\d{3}\s\d{3}$/
  end

  test "mobile_number() should return a formatted number" do
    assert mobile_number() =~ ~r/\d{11}$/
  end

  test "e164_phone_number() should return a formatted E164 number" do
    assert e164_phone_number() =~ ~r/^\+\d{12}$/
  end

  test "imei() should return a valid IMEI number format" do
    assert imei() =~ ~r/^\d{14}$/
  end
end
