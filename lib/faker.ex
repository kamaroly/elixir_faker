defmodule Faker do
  alias Faker.PhoneNumber
  alias Faker.Core.Blood

  def mobile_number(flag) when is_atom(flag), do: PhoneNumber.mobile_number(flag)
  def mobile_number(), do: PhoneNumber.mobile_number()

  def e164_phone_number() do
    PhoneNumber.e164_phone_number()
  end

  def imie() do
    PhoneNumber.imei()
  end

  def blood_group(), do: Blood.group()
end
