defmodule Caesar do
  def caesar([], _n), do: []
  def caesar([head | tail], n) do
    [do_add(head, n) | caesar(tail, n)]
  end

  def do_add(char, n) do
    cond do
      char + n > List.first 'z' ->
        char + n - ((List.first 'z') - (List.first 'a')) - 1
      char + n <= List.first 'z' ->  char + n
    end
  end
end

