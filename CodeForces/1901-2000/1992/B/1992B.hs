-- Problem 1992B: Angry Monk
-- https://codeforces.com/contest/1992/problem/B
-- Executed with: The Glorious Glasgow Haskell Compilation System, version 9.6.6
-- Linux version: Linux kernel 6.17.0-6-generic
-- Submitted on: October 29th, 2025
-- Codeforces language used: Haskell GHC 8.10.1

import Control.Monad (forM_)
import Data.List (sort)

main :: IO ()
main = do
    line <- getLine
    let runs = read line :: Int
    forM_ [0..runs-1] $ \run -> do
        line2 <- getLine
        let [a, b] = map read (words line2) :: [Int]
        line3 <- getLine
        let arr = sort $ map read $ words line3 :: [Int]
        let ans = sum $ map (\n -> if n == 0 then 1 else 2*n - 1) (init arr)
        print ans
