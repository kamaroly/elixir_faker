defmodule ElixirFakerTest do
  use ExUnit.Case
  doctest ElixirFaker

  test "greets the world" do
    assert ElixirFaker.hello() == :world
  end
end
