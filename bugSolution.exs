```elixir
list = [1, 2, 3, 4, 5]

found = Enum.find(list, fn x ->
  IO.puts(x)
  x == 3
end)

IO.puts(if found do "Element found" else "Element not found" end)
IO.puts("List processed")
```