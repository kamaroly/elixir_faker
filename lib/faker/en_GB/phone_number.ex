defmodule Faker.EnGB.PhoneNumber do
  alias Faker.Core.Helper

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
  @mobileFormats [
    #  Local
    "07#########",
    "07### ######",
    "07### ### ###"
  ]

  @e164Formats [
    "+44##########"
  ]

  @doc """
  Returns random phone_number
  
  Example: "555-123-546"
  """
  def mobile_number() do
    @formats
    |> Helper.random_element()
    |> Helper.numerify()
  end

  @doc """
  Returns random phone_number
  
  Example: +11134567890
  """
  def e164PhoneNumber() do
    @e164Formats
    |> Helper.random_element()
    |> Helper.numerify()
  end

  @doc """
    * International Mobile Equipment Identity (IMEI)
     *
     * @see http://en.wikipedia.org/wiki/International_Mobile_Station_Equipment_Identity
     * @see http://imei-number.com/imei-validation-check/
     *
     * @example "720084494799532"
     *
     * @return int $imei
  """
  def imei() do
    Helper.numerify("##############")
  end
end
