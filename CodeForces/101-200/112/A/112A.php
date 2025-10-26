<?php

// Problem 112A: Petya and Strings
// https://codeforces.com/contest/112/problem/A
// Executed with: PHP 8.2.29 (cli) (built: Jul  3 2025 16:16:05) (NTS)
// Linux version: Linux kernel 6.1.0-10-amd64
// Written on: October 24th, 2025
// Codeforces language used: Cannot be submitted

$first = strtolower(trim(fgets(STDIN)));
$second = strtolower(trim(fgets(STDIN)));

if ($first > $second) {
    echo "1\n";
} elseif ($second > $first) {
    echo "-1\n";
} else {
    echo "0\n";
}
?>
