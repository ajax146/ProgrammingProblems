<?php

// Problem 318A: Even Odds
// https://codeforces.com/contest/318/problem/A
// Executed with: PHP 8.2.29 (cli) (built: Jul  3 2025 16:16:05) (NTS)
// Linux version: Linux kernel 6.1.0-10-amd64
// Written on: October 24th, 2025
// Codeforces language used: Cannot be submitted

$line = trim(fgets(STDIN));
$arr = array_map('intval', explode(' ', $line));

$n = $arr[0];
$k = $arr[1];

if ($n % 2 == 1) {
    $n += 1;
}

if ($k-1 >= $n/2) {
    $ans = ($k-($n/2))*2;
    echo "$ans\n";
} else {
    $ans = ($k-(1))*2+1;
    echo "$ans\n";
}

?>
