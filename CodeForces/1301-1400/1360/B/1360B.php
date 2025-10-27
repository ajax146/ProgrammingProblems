<?php

// Problem 1360B: Honest Coach
// https://codeforces.com/contest/1360/problem/B
// Executed with: PHP 8.4.11 (cli) (built: Aug 13 2025 01:43:48) (NTS)
// Linux version: Linux kernel 6.17.0-5-generic
// Written on: October 27th, 2025
// Codeforces language used: Cannot be submitted

$runs = intval(trim(fgets(STDIN)));

for ($run = 0; $run < $runs; $run++) {
    $total_team = intval(trim(fgets(STDIN)));
    $athletes = array_map('intval', explode(' ', trim(fgets(STDIN))));
    sort($athletes);

    $min = 999999;

    for ($i = 0; $i < $total_team-1; $i++) {
        if ($athletes[$i+1]-$athletes[$i] < $min) {
            $min = $athletes[$i+1]-$athletes[$i];
        }
    }
    echo $min . "\n";
}

?>
