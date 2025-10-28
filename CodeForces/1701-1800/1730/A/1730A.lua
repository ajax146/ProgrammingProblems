-- Problem 1730A: Planets
-- https://codeforces.com/contest/1730/problem/A
-- Executed with: Lua 5.4.8  Copyright (C) 1994-2025 Lua.org, PUC-Rio
-- Linux version: Linux kernel 6.17.0-6-generic
-- Written on: October 28th, 2025
-- Codeforces language used: Cannot be submitted

local runs = tonumber(io.read())

for run = 0, runs - 1 do
    local line = io.read()
    local n, c = line:match("(%d+)%s+(%d+)")

    line = io.read()
    local planets = {}
    for num in line:gmatch("%S+") do
        table.insert(planets, tonumber(num))
    end

    local planet_counts = {}

    for i = 1, n do
        local planet = planets[i]
        planet_counts[planet] = planet_counts[planet] or 0

        if planet_counts[planet] ~= tonumber(c) then
            planet_counts[planet] = planet_counts[planet] + 1
        end
    end
    local ans = 0
    for k, v in pairs(planet_counts) do
        ans = ans + v
    end
    print(ans)
end
