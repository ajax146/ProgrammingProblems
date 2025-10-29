-- Problem 1692C: Where's the Bishop?
-- https://codeforces.com/contest/1692/problem/C
-- Executed with: The Glorious Glasgow Haskell Compilation System, version 9.6.6
-- Linux version: Linux kernel 6.17.0-6-generic
-- Submitted on: October 29th, 2025
-- Codeforces language used: Haskell GHC 8.10.1

import Control.Monad (forM_)

main :: IO ()
main = do
    line <- getLine
    let runs = read line :: Int
    forM_ [0..runs-1] $ \run -> do
        linesList <- sequence $ replicate 9 getLine
        let combined = concat linesList
        forM_ ([2..7] :: [Int]) $ \i -> do
            forM_ ([2..7] :: [Int]) $ \j -> do
                -- We need -9, -7, 0, +7, and +9 to all be #
                let combined_coords = ((i-1) * 8) + (j-1)

                let first = (combined!!(combined_coords-9))
                let second = (combined!!(combined_coords-7))
                let third = (combined!!(combined_coords))
                let fourth = (combined!!(combined_coords+7))
                let fifth = (combined!!(combined_coords+9))

                if first == '#' && second == '#' && third == '#' && fourth == '#' && fifth == '#'
                    then putStrLn $ show i ++ " " ++ show j
                    else return ()
