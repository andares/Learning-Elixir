defmodule AmLearningTest do
  use ExUnit.Case
  doctest AmLearning

  test "intro" do
    assert {:ok, _} = AmLearning.intro()
  end
end
