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


# Needed setup
{:ok, _} = Scanner.start_link(nil)

# One int
i = Scanner.nextInt()
IO.puts(i)

# One double
a = Scanner.nextDouble()
IO.puts(a)

# One 64 bit int (long)
l = Scanner.nextLong()
IO.puts(l)

# One word
w = Scanner.nextWord()
IO.puts(w)

# One string/line
l2 = Scanner.nextString()
IO.puts(l2)

# Int array
ia = Scanner.nextIntArray(true)
Enum.each(ia, fn x -> IO.write("#{x} ") end)
IO.puts("")

# 64 bit int array
la = Scanner.nextLongArray()
Enum.each(la, fn x -> IO.write("#{x} ") end)
IO.puts("")