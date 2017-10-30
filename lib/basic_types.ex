defmodule AmLearning.BasicTypes do
  @moduledoc """
  Documentation for AmLearning.BasicTypes.

  ## 列表和元组的区别

  列表是链表形式存储，访问其长度及末尾元素效率较低。往其头部添加数据效率将高于往尾部添加单元。
  元组中的单元存储是连续的，因此其访问是快速的，适用于确定单元的数据。变更元组单元将会在内存中新开一整块存储区域，成本较高。
  """

  @doc """
  整型

  ## Examples

      iex> AmLearning.BasicTypes.integer
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

  @doc """
  浮点，Elixir 中均为64位精度

  ## Examples

      iex> AmLearning.BasicTypes.float
      {1.0, 1.2345e-10, 1.2345e+10}

  ## 要点

      iex> round(3.58) # 四舍五入
      4
      iex> round(3.48) # 四舍五入
      3
      iex> trunc(3.58) # 取整数部分
      3

  """
  def float do
    {
      1.0,
      1.2345e-10,
      1.2345e+10
    }
  end

  @doc """
  布尔型

  ## Examples

      iex> AmLearning.BasicTypes.boolean
      {true, false}

  """
  def boolean do
    {
      true,
      false,
    }
  end

  @doc """
  原子/符号

  ## Examples

      iex> AmLearning.BasicTypes.atom
      {:hello, :true}

  ## 要点

      iex> {true, false} = {:true, :false} # true & false 是atom别名
      {true, false}
      iex> is_atom Yes # 默认未定义的首字大写为 Alias ，其也是一个atom
      true

  """
  def atom do
    {
      :hello,
      :true,
    }
  end

  @doc """
  字串

  ## Examples

      iex> AmLearning.BasicTypes.string
      {"早上好, triss"}

  ## 要点

      iex> "hello, #{:triss}" # atom 可以平滑转换为同名字串
      "hello, triss"
      iex> is_binary "你好" # 字串是二进制数据
      true
      iex> byte_size "你好" # 使用utf8存储
      6
      iex> String.length "你好" # 使用 String 模块可取得字符长度
      2

  """
  def string do
    name = :triss;
    {
      "早上好, #{name}",
    }
  end

  @doc """
  匿名函数

  ## Examples

      iex> AmLearning.BasicTypes.anonymous_function 3
      6

  ## 要点

      iex> add = fn a, b -> a + b end
      iex> add.(1, 2) # 调用时要用<var name>.()，以和具名函数区分
      3

  """
  def anonymous_function val do
    add = fn a, b -> a + b end
    double = fn a -> add.(a, a) end
    double.(val)
  end

  @doc """
  列表

  ## Examples

      iex> AmLearning.BasicTypes.list
      {[1, 2, true, 3, 9, true], [4, 5, 6]}

  ## 要点

      iex> AmLearning.BasicTypes.list() |> elem(1) |> length() # 使用 length 取长度
      3
      iex> {a, b} = AmLearning.BasicTypes.list
      iex> a ++ b # 使用 ++ 连接
      [1, 2, true, 3, 9, true, 4, 5, 6]
      iex> a -- [3, true] # 使用 -- 移除
      [1, 2, 9, true]
      iex> hd b # 头
      4
      iex> tl b # 尾
      [5, 6]
      iex> [77, 89, 46] # list 内值均为7~126的整型时会解释为 ascii 码，这是一个 字符列表 charlists
      'MY.'
      iex> 'hello' == "hello" # 字符列表与字串不等价
      false
  """
  def list do
    {
      [1, 2, true, 3, 9, true],
      [4, 5, 6],
    }
  end

  @doc """
  元组

  ## Examples

      iex> AmLearning.BasicTypes.tuple
      {:ok, "triss"}

  ## 要点

      iex> elem AmLearning.BasicTypes.tuple, 1 # 取某个单元，起始位 0
      "triss"
      iex> tuple_size AmLearning.BasicTypes.tuple # 单元个数
      2
      iex> put_elem AmLearning.BasicTypes.tuple, 1, "andares" # 可替换
      {:ok, "andares"}

  """
  def tuple do
    {
      :ok,
      "triss",
    }
  end
end
