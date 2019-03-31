defmodule Math do
  @moduledoc """
  Предоставляет математические функции.

  ## Примеры

      iex> Math.sum(1, 2)
      3

      iex> Math.zero?(1)
      false
  """

  @doc """
  Вычисляет сумму двух чисел
  """
  def sum(a, b) do
    a + b
  end

  @doc """
  Проверка является ли число нулём
  """
  def zero?(0), do: true
  def zero?(n) when is_integer(n), do: false

  @doc """
  Высисляет сумму всех чисел в списке
  """
  def sum_list([head | tail], acc) do
    sum_list(tail, head + acc)
  end
  def sum_list([], acc), do: acc

  @doc """
  Увеличивает вдвое каждое число в списке
  """
  def double_each([head | tail]) do
    [head * 2 | double_each(tail)]
  end
  def double_each([]), do: []
end
