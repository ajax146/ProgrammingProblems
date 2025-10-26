<?php

// Problem 1038A: Equality
// https://codeforces.com/contest/1038/problem/A
// Executed with: PHP 8.2.29 (cli) (built: Jul  3 2025 16:16:05) (NTS)
// Linux version: Linux kernel 6.1.0-10-amd64
// Written on: October 23rd, 2025
// Codeforces language used: Cannot be submitted

$line = trim(fgets(STDIN));
$arr = array_map('intval', explode(' ', $line));

$n = $arr[0];
$k = $arr[1];

$freqArray = array_fill(0, $k, false);

$string = trim(fgets(STDIN));

$min_val = $n;

for ($x = 0; $x < strlen($string); $x++) {
    $freqArray[ord($string[$x]) - ord('A')] += 1;
}

for ($x = 0; $x < $k; $x++) {
    if ($freqArray[$x] < $min_val) {
        $min_val = $freqArray[$x];
    }
}

echo $min_val*$k;
echo "\n";
?>
