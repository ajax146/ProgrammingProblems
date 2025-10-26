<?php

// Problem 118A: String Task
// https://codeforces.com/contest/118/problem/A
// Executed with: PHP 8.2.29 (cli) (built: Jul  3 2025 16:16:05) (NTS)
// Linux version: Linux kernel 6.1.0-10-amd64
// Written on: October 24th, 2025
// Codeforces language used: Cannot be submitted

$string = strtolower(trim(fgets(STDIN)));
$vowels = "aeiouy";
$output = "";

for ($x = 0; $x < strlen($string); $x++) {
    if (str_contains($vowels, substr($string, $x, 1))) {
        continue;
    } else {
        $output .= ".";
        $output .= substr($string, $x, 1);
    }
}
echo "$output\n";
?>
