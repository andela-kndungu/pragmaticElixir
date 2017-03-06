defmodule Reduce do
  def mapsum(collection, func) do
    _map(collection, func) |> _sum
  end

  defp _sum([]), do: 0
  defp _sum([head | tail]), do: head + _sum(tail)
  defp _map([], _func), do: []
  defp _map([head | tail], func) do
    [func.(head) | _map(tail, func)]
  end
end

