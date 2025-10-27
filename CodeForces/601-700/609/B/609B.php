<?php

// Problem 609B: The Best Gift
// https://codeforces.com/contest/609/problem/B
// Executed with: PHP 8.4.11 (cli) (built: Aug 13 2025 01:43:48) (NTS)
// Linux version: Linux kernel 6.17.0-5-generic
// Written on: October 27th, 2025
// Codeforces language used: Cannot be submitted

$arr = array_map('intval', explode(' ', trim(fgets(STDIN))));
$n = $arr[0];
$m = $arr[1];

$book = array_map('intval', explode(' ', trim(fgets(STDIN))));
sort($book);

$ans = 0;
$ahead_pointer = 0;
for ($i = 0; $i < $n; $i++) {
    // If i and ahead_pointer match, we need to move ahead_pointer to the next number in the array
    if ($i == $ahead_pointer) {
        while ($book[$ahead_pointer] == $book[$i]) {
            $ahead_pointer += 1;
            if ($ahead_pointer == $n) {
                echo $ans . "\n";
                return;
            }
        }
    }
    $ans += $n - $ahead_pointer;
}

?>
