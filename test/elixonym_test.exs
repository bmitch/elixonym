defmodule ElixonymTest do
  use ExUnit.Case
  doctest Elixonym

  test "greets the world" do
    assert Elixonym.hello() == :world
  end
end
