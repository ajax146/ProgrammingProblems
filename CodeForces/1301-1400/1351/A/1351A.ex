# Problem 1351A: A+B (Trial Problem)
# https://codeforces.com/contest/1351/problem/A
# Executed with: Elixir 1.18.3 (compiled with Erlang/OTP 27)
# Linux version: Linux kernel 6.17.0-6-generic
# Written on: October 28th, 2025
# Codeforces language used: Cannot be submitted

runs = IO.gets("") |> String.trim() |> String.to_integer()

for _run <- 0..(runs - 1) do
  [a, b] = IO.gets("") |> String.trim() |> String.split() |> Enum.map(&String.to_integer/1)
  IO.puts(a+b)
end
