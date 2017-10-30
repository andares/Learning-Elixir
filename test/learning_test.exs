defmodule LearningTest do
  use ExUnit.Case
  doctest Learning

  test "intro" do
    assert {:ok, _} = Learning.intro()
  end
end
