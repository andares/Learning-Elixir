defmodule LearningTest do
  use ExUnit.Case
  doctest Learning

  test "greets the world" do
    assert Learning.hello() == :world
  end
end
