defmodule Search do
  def guess(range) do
    start..finish = range
    div(start + finish, 2)
  end

  def binary(actual, range, attempt \\ 9) do
    attempt = guess(range)
    a..b = range
    cond do
      attempt == actual ->
        IO.puts "Yes  it's #{attempt}"
        attempt
      attempt > actual ->
        IO.puts "Is it #{attempt}?"
        binary(actual, a..attempt, guess(a..attempt))
      attempt < actual ->
        IO.puts "Is it #{attempt}?"
        binary(actual, attempt..b, guess(attempt..b))
    end
  end
end

