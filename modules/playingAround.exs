defmodule PlayingAround do
  def factorial(0), do: 1
  def factorial(n) when n > 0 do
    n * factorial(n-1)
  end

  def sum(0), do: 0
  def sum(n), do: n + sum(n-1)

  def len([]), do: 0
  def len(n), do: 1 + len(tl(n))

  def gcd(x, 0) when is_number(x) do
    x
  end
  def gcd(x, y) when is_number(x) and is_number(y) do
    gcd(y, rem(x,y))
  end
  def gcd(x, y), do: "Only defined for numbers '#{x}' and '#{y}' are not numbers"

  def what_is(x) when is_number(x), do: IO.puts "#{x} is number"
  def what_is(x) when is_list(x), do: IO.puts "#{inspect(x)} is list"
  def what_is(x) when is_atom(x), do: IO.puts "#{x} is atom"
  def what_is(x) when is_bitstring(x), do: IO.puts "#{x} is bitstring"
  def what_is(x) when is_tuple(x), do: IO.puts "Is tuple"
  def what_is(x) when is_binary(x), do: IO.puts "#{x} is binary"
  def what_is(x) when is_boolean(x), do: IO.puts "#{x} is boolean"
#  def what_is(x) when is_exception(x), do: IO.puts "Is exception"
  def what_is(x) when is_float(x), do: IO.puts "#{x} is float"
  def what_is(x) when is_function(x), do: IO.puts "#{x} is funcation"
  def what_is(x) when is_integer(x), do: IO.puts "#{x} is integer"
  def what_is(x) when is_map(x), do: IO.puts "#{x} is map"
  def what_is(x) when is_pid(x), do: IO.puts "#{x} is pid"
  def what_is(x) when is_port(x), do: IO.puts "#{x} is port"
#  def what_is(x) when is_record(x), do: IO.puts "#{x} is record"
  def what_is(x) when is_reference(x), do: IO.puts "#{x} is reference"
end
