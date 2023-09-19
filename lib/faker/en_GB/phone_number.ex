defmodule Faker.EnGB.PhoneNumber do

  use Faker.Core.Generator, only: [:numerify, :random_element]

  @formats [
    "+44(0)##########",
    "+44(0)#### ######",
    "+44(0)#########",
    "+44(0)#### #####",
    "0##########",
    "0#########",
    "0#### ######",
    "0#### #####",
    "0### ### ####",
    "0### #######",
    "(0####) ######",
    "(0####) #####",
    "(0###) ### ####",
    "(0###) #######"
  ]

  #  An array of en_GB mobile (cell) phone number formats
  @mobile_formats [
    #  Local
    "07#########",
    "07### ######",
    "07### ### ###"
  ]

  @e164_formats [
    "+44##########"
  ]

  @doc """
  Returns random phone_number

  Example: "555-123-546"
  """
  def mobile_number(:localized) do
    @mobile_formats
    |> Enum.at(0)
    |> numerify()
  end

  def mobile_number(:localized_format) do
    @mobile_formats
    |> Enum.at(1)
    |> numerify()
  end

  def mobile_number(:localized_pretify) do
    @mobile_formats
    |> Enum.at(2)
    |> numerify()
  end

  def mobile_number() do
    @formats
    |> random_element()
    |> numerify()
  end

  @doc """
  Returns random phone_number

  Example: +11134567890
  """
  def e164_phone_number() do
    @e164_formats
    |> random_element()
    |> numerify()
  end

  @doc """
    * International Mobile Equipment Identity (IMEI)
     *
     * @see http://en.wikipedia.org/wiki/International_Mobile_Station_Equipment_Identity
     * @see http://imei-number.com/imei-validation-check/
     *
     * @example "720084494799532"
     *
     * @return int imei
  """
  def imei() do
    numerify("##############")
  end
end
