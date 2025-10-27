<?php

// Problem 1915B: Not Quite Latin Square
// https://codeforces.com/contest/1915/problem/B
// Executed with: PHP 8.4.11 (cli) (built: Aug 13 2025 01:43:48) (NTS)
// Linux version: Linux kernel 6.17.0-5-generic
// Written on: October 27th, 2025
// Codeforces language used: Cannot be submitted

$runs = intval(trim(fgets(STDIN)));
$runs *= 3;

for ($run = 0; $run < $runs; $run++) {
    $string_input = trim(fgets(STDIN));
    if (str_contains($string_input, "?")) {
        if (!str_contains($string_input, "A")) {
            echo "A" . "\n";
        } else if (!str_contains($string_input, "B")) {
            echo "B" . "\n";
        } else {
            echo "C" . "\n";
        }
    }
}

?>
