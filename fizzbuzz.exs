func = fn 
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, a) -> a
end

IO.puts func.(0,0,:a)
IO.puts func.(0,1,:a)
IO.puts func.(1,0,:a)
IO.puts func.(1,1,:a)
IO.puts "---------------------"

f = fn (n) -> func.(rem(n,3),rem(n,5),n) end

IO.puts f.(10)
IO.puts f.(11)
IO.puts f.(12)
IO.puts f.(13)
IO.puts f.(14)
IO.puts f.(15)
IO.puts f.(16)
