-- Problem 4A: Watermelon
-- https://codeforces.com/contest/4/problem/A
-- Executed with: Lua 5.4.8  Copyright (C) 1994-2025 Lua.org, PUC-Rio
-- Linux version: Linux kernel 6.17.0-6-generic
-- Written on: October 28th, 2025
-- Codeforces language used: Cannot be submitted

local w = tonumber(io.read())
if w > 2 and w % 2 == 0 then
    print("YES")
else
    print("NO")
end
