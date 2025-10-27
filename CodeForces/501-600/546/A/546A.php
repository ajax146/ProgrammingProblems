<?php

// Problem 546A: Soldier and Bananas
// https://codeforces.com/contest/546/problem/A
// Executed with: PHP 8.4.11 (cli) (built: Aug 13 2025 01:43:48) (NTS)
// Linux version: Linux kernel 6.17.0-5-generic
// Written on: October 27th, 2025
// Codeforces language used: Cannot be submitted

$arr = array_map('intval', explode(' ', trim(fgets(STDIN))));
$k = $arr[0];
$n = $arr[1];
$w = $arr[2];

$total_cost_multi = (($w * ($w + 1)) / 2);
$total_cost = $k * $total_cost_multi;
$amount_to_borrow = $total_cost - $n;

echo max(0, $amount_to_borrow);
echo "\n";

?>
