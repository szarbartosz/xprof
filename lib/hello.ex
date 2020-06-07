defmodule Hello do
  def hello do
    IO.puts "Hello, world!"
    Process.sleep(100)
  end

  def say_hello do
    Enum.each(
      1..100,
      fn(_) ->
        hello()
      end)
  end

  def version1(0), do: 1
  def version1(n) when n > 0, do: n * version1(n - 1)

  def version2(0), do: 1
  def version2(n) when n > 0 do
    Enum.reduce(1..n, &*/2)
  end
end
