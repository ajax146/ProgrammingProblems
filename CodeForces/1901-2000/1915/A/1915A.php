<?php

// Problem 1915A: Odd One Out
// https://codeforces.com/contest/1915/problem/A
// Executed with: PHP 8.4.11 (cli) (built: Aug 13 2025 01:43:48) (NTS)
// Linux version: Linux kernel 6.17.0-5-generic
// Written on: October 27th, 2025
// Codeforces language used: Cannot be submitted

$runs = intval(trim(fgets(STDIN)));

for ($run = 0; $run < $runs; $run++) {
    $nums = array_map('intval', explode(' ', trim(fgets(STDIN))));
    sort($nums);

    if ($nums[0] == $nums[1]) {
        echo $nums[2] . "\n";
    } else {
        echo $nums[0] . "\n";
    }
}

?>
