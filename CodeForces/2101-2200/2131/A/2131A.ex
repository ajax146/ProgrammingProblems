# Problem 2131A: Lever
# https://codeforces.com/contest/2131/problem/A
# Executed with: Elixir 1.18.3 (compiled with Erlang/OTP 27)
# Linux version: Linux kernel 6.17.0-6-generic
# Written on: November 5th, 2025
# Codeforces language used: Cannot be submitted

defmodule Scanner do
  # Start a new scanner process
  def start_link(_) do
    Agent.start_link(fn -> [] end, name: __MODULE__)
  end

  # Refill buffer if empty
  defp refill do
    Agent.get_and_update(__MODULE__, fn
      [] ->
        line =
          IO.read(:line)
          |> case do
            :eof -> ""
            nil -> ""
            l -> String.trim(l)
          end

        if line == "" do
          {[], []} # keep empty, will try again next call
        else
          tokens = String.split(line)
          {tokens, tokens}
        end

      buffer ->
        {buffer, buffer} # return buffer unchanged
    end)
  end

  # Get next token from buffer
  defp next_token do
    refill()

    Agent.get_and_update(__MODULE__, fn
      [token | rest] -> {token, rest}
      [] -> next_token() # try again if buffer empty
    end)
  end

  # Public API
  def nextInt, do: next_token() |> String.to_integer()
  def nextDouble, do: next_token() |> String.to_float()
  def nextLong, do: next_token() |> String.to_integer()
  def nextWord, do: next_token()

  def nextString do
    buf = Agent.get(__MODULE__, & &1)
    if buf == [] do
      refill()
      nextString()
    else
      str = Enum.join(buf, " ")
      Agent.update(__MODULE__, fn _ -> [] end)
      str
    end
  end

  def nextIntArray(sorted \\ false) do
    buf = Agent.get(__MODULE__, & &1)
    if buf == [], do: refill()

    arr = Agent.get_and_update(__MODULE__, fn buf -> {Enum.map(buf, &String.to_integer/1), []} end)
    if sorted, do: Enum.sort(arr), else: arr
  end

  def nextLongArray(sorted \\ false) do
    arr = nextIntArray(sorted)
    arr
  end
end

{:ok, _} = Scanner.start_link(nil)

runs = Scanner.nextInt()
for _run <- 0..(runs - 1) do

    n = Scanner.nextInt()
    arr_a = Scanner.nextIntArray()
    arr_b = Scanner.nextIntArray()
    count =
    Enum.reduce(0..(n-1), 1, fn i, acc ->
        first = Enum.at(arr_a, i)
        second = Enum.at(arr_b, i)
        if first > second do 
          acc + (first-second)
        else
          acc
        end
    end)

    IO.puts(count)
end
