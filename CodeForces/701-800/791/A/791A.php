<?php

// Problem 659C: Tanya and Toys
// https://codeforces.com/contest/659/problem/C
// Executed with: PHP 8.4.11 (cli) (built: Aug 13 2025 01:43:48) (NTS)
// Linux version: Linux kernel 6.17.0-5-generic
// Written on: October 27th, 2025
// Codeforces language used: Cannot be submitted

$arr = array_map('intval', explode(' ', trim(fgets(STDIN))));
$limak = $arr[0];
$bob = $arr[1];

$year = 0;
while (true) {
    if ($limak > $bob) {
        break;
    }
    $limak *= 3;
    $bob *= 2;
    $year += 1;
}

echo $year . "\n";

?>
