#!/usr/bin/env elixir

handle_open = fn
  {:ok, file} -> "Read data: #{IO.read(file, :line)}" 
  {_, error} -> "Error: #{:file.format_error(error)}"
end

IO.puts handle_open.(File.open("hello.exs"))
IO.puts handle_open.(File.open("handle_open.exs"))
IO.puts handle_open.(File.open("junk"))
