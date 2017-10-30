defmodule BasicOperators do
  @moduledoc """
  Documentation for BasicOperators.
  """

  @doc """
  整型

  ## Examples

      iex> BasicTypes.integer
      {1, 0x11, 0b11, 0o11}

  ## 要点

      iex> 10 / 2 # 除法返回float
      5.0
      iex> div 10, 2 # 使用函数可获取整型
      5
      iex> rem 10, 3 # 取余
      1
  """
  def integer do
    {
      1,
      0x11,
      0b11,
      0o11
    }
  end

end
