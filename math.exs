defmodule Math do
  def sum(a, b) do
    a + b
  end

  def zero?(0), do: true
  def zero?(n) when is_integer(n), do: false

  def sum_list([head | tail], acc) do
    sum_list(tail, head + acc)
  end

  def sum_list([], acc), do: acc

  def double_each([head | tail]) do
    [head * 2 | double_each(tail)]
  end

  def double_each([]), do: []
end
