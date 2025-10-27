<?php

// Problem 2137A: Collatz Conjecture
// https://codeforces.com/contest/2137/problem/A
// Executed with: PHP 8.4.11 (cli) (built: Aug 13 2025 01:43:48) (NTS)
// Linux version: Linux kernel 6.17.0-5-generic
// Written on: October 27th, 2025
// Codeforces language used: Cannot be submitted

$runs = intval(trim(fgets(STDIN)));

for ($run = 0; $run < $runs; $run++) {
    $nums = array_map('intval', explode(' ', trim(fgets(STDIN))));

    echo $nums[0] * pow($nums[1], 2) . "\n";
}

?>
