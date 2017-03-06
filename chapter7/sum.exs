defmodule Sum do
  def accumulator([]) do
    nil
  end

  def accumulator([total | []]) do
    total
  end

  def accumulator ([total | [head | tail]]) do
    accumulator([total + head | tail])
  end
end

