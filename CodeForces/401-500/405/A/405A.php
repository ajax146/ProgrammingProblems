<?php

// Problem 405A: Gravity Flip
// https://codeforces.com/contest/405/problem/A
// Executed with: PHP 8.2.29 (cli) (built: Jul  3 2025 16:16:05) (NTS)
// Linux version: Linux kernel 6.1.0-10-amd64
// Written on: October 23rd, 2025
// Codeforces language used: Cannot be submitted

// This isn't relevant here, but we have to take it in anyway
$w = intval(trim(fgets(STDIN)));

$line = trim(fgets(STDIN));
$arr = array_map('intval', explode(' ', $line));

sort($arr);

for ($x = 0; $x < count($arr); $x++) {
    echo $arr[$x];
    echo " ";
}
echo "\n";
?>
