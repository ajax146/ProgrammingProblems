# Problem 1176A: Divide it!
# https://codeforces.com/contest/1176/problem/A
# Executed with: Elixir 1.18.3 (compiled with Erlang/OTP 27)
# Linux version: Linux kernel 6.17.0-6-generic
# Written on: October 28th, 2025
# Codeforces language used: Cannot be submitted

runs = IO.gets("") |> String.trim() |> String.to_integer()

defmodule DiveDeep do
  def divide(1, steps) do
    IO.puts("#{steps}")
    :ok
  end

  def divide(n, steps) do
    cond do
      rem(n, 5) == 0 ->
        divide(div((4*n), 5), steps + 1)

      rem(n, 3) == 0 ->
        divide(div((2*n), 3), steps + 1)

      rem(n, 2) == 0 ->
        divide(div(n, 2), steps + 1)

      true ->
        IO.puts("-1")
        :error
    end
  end
end

for _run <- 0..(runs - 1) do
  n = IO.gets("") |> String.trim() |> String.to_integer()
  DiveDeep.divide(n, 0)
end
