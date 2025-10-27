<?php

// Problem 659C: Tanya and Toys
// https://codeforces.com/contest/659/problem/C
// Executed with: PHP 8.4.11 (cli) (built: Aug 13 2025 01:43:48) (NTS)
// Linux version: Linux kernel 6.17.0-5-generic
// Written on: October 27th, 2025
// Codeforces language used: Cannot be submitted

$arr = array_map('intval', explode(' ', trim(fgets(STDIN))));
$n = $arr[0];
$m = $arr[1];

$toys = array_map('intval', explode(' ', trim(fgets(STDIN))));
sort($toys);

$max_toy = 1000000000;

$indx = 0;
$toy_val = 1;
$ans_str = "";
$ans_int = 0;
$ans_toy_count = 0;

// Loop over array, and 1...m
while (true) {
    // We ran out of toys
    if ($toy_val > $max_toy) {
        break;
    }
    // We ran out of money
    if ($ans_int + $toy_val > $m) {
        break;
    }

    if ($indx >= $n) {
        // There are no toys more expensive than the toy we want to buy
        $ans_int += $toy_val;
        $ans_toy_count += 1;

        $ans_str = $ans_str . strval($toy_val);
        $ans_str = $ans_str . " ";
        
        $toy_val += 1;

    } else if ($toys[$indx] != $toy_val) {
        // We don't have the toy
        $ans_int += $toy_val;
        $ans_toy_count += 1;

        $ans_str .= strval($toy_val);
        $ans_str .=  " ";
        
        $toy_val += 1;
    } else {
        // We already have the toy
        $indx += 1;
        $toy_val += 1;
    }
}

echo $ans_toy_count . "\n";
echo $ans_str . "\n";

?>
