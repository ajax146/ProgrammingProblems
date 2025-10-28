# Problem 4A: Watermelon
# https://codeforces.com/contest/4/problem/A
# Executed with: Elixir 1.18.3 (compiled with Erlang/OTP 27)
# Linux version: Linux kernel 6.17.0-6-generic
# Written on: October 28th, 2025
# Codeforces language used: Cannot be submitted

w = IO.gets("") |> String.trim() |> String.to_integer()

if w > 2 and rem(w, 2) == 0 do
  IO.puts("YES")
else
  IO.puts("NO")
end
