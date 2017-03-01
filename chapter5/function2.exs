function2 = fn 
  (0, 0, _) -> "FizzBuzz"
  (0, b, _) -> "Fizz"
  (a, 0, _) -> "Buzz"
  (a, b, c) -> c
end

function3 = fn (n) ->
  function2.(rem(n, 3), rem(n, 5), n)
end

