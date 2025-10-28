-- Problem 1526B: I Hate 1111
-- https://codeforces.com/contest/1526/problem/B
-- Executed with: Lua 5.4.8  Copyright (C) 1994-2025 Lua.org, PUC-Rio
-- Linux version: Linux kernel 6.17.0-6-generic
-- Written on: October 28th, 2025
-- Codeforces language used: Cannot be submitted

local runs = tonumber(io.read())

for run = 0, runs - 1 do
    local input = tonumber(io.read())
    -- step one, ensure strictly non-decreasing order
    local max = 10000000000
    local last_num = 0
    local next_num = 0
    local hit = false
    while max ~= 10 do
        next_num = math.floor((input % max) / (max/10))
        if last_num > next_num then
            print("NO")
            hit = true 
            break
        end
        last_num = next_num
        max = max / 10
    end
    next_num = math.floor((input % max) / (max/10))
    if hit then
        break
    end
    if last_num ~= next_num then
        print("NO")
    else 
        print("YES")
    end
end
