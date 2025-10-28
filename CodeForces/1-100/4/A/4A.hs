-- Problem 4A: Watermelon
-- https://codeforces.com/contest/4/problem/A
-- Executed with: The Glorious Glasgow Haskell Compilation System, version 9.6.6
-- Linux version: Linux kernel 6.17.0-6-generic
-- Submitted on: October 28th, 2025
-- Codeforces language used: Haskell GHC 8.10.1

main :: IO ()
main = do
    line <- getLine
    let w = read line :: Int
    if w > 2 && w `mod` 2 == 0
        then putStrLn "YES"
        else putStrLn "NO"
