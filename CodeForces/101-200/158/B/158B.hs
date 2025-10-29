-- Problem 158B: Taxi
-- https://codeforces.com/contest/158/problem/B
-- Executed with: The Glorious Glasgow Haskell Compilation System, version 9.6.6
-- Linux version: Linux kernel 6.17.0-6-generic
-- Submitted on: October 29th, 2025
-- Codeforces language used: Haskell GHC 8.10.1

main :: IO ()
main = do
    _ <- getLine
    line2 <- getLine
    let groups = map read (words line2) :: [Int]
    let threes = length (filter (==3) groups)
    let ones = max (length (filter (==1) groups) - threes) 0
    let twos = length (filter (==2) groups)
    let fours = length (filter (==4) groups)

    let extras = (ones + (twos*2) + 3) `div` 4

    let total = fours+threes+extras

    print total
