<?php

// Problem 4A: Watermelon
// https://codeforces.com/contest/4/problem/A
// Executed with: PHP 8.2.29 (cli) (built: Jul  3 2025 16:16:05) (NTS)
// Linux version: Linux kernel 6.1.0-10-amd64
// Written on: October 22nd, 2025
// Codeforces language used: Cannot be submitted

$w = intval(trim(fgets(STDIN)));

if ($w > 2 && $w % 2 == 0) {
    echo "YES\n";
} else {
    echo "NO\n";
}
?>
