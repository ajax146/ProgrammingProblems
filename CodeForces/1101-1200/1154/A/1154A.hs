-- Problem 1154A: Restoring Three Numbers
-- https://codeforces.com/contest/1154/problem/A
-- Executed with: The Glorious Glasgow Haskell Compilation System, version 9.6.6
-- Linux version: Linux kernel 6.17.0-6-generic
-- Submitted on: October 29th, 2025
-- Codeforces language used: Haskell GHC 8.10.1

import Data.List (sort)

main :: IO ()
main = do
    line <- getLine
    let arr = sort $ map read $ words line :: [Int]

    let a = arr!!3-arr!!2
    let b = arr!!3-arr!!1
    let c = arr!!3-arr!!0

    putStrLn $ unwords $ map show [a, b, c]
