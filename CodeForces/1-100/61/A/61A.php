<?php

// Problem 61A: Ultra-Fast Mathematician
// https://codeforces.com/contest/61/problem/A
// Executed with: PHP 8.2.29 (cli) (built: Jul  3 2025 16:16:05) (NTS)
// Linux version: Linux kernel 6.1.0-10-amd64
// Written on: October 23rd, 2025
// Codeforces language used: Cannot be submitted

$n1 = trim(fgets(STDIN));
$n2 = trim(fgets(STDIN));

for ($x = 0; $x < strlen($n1); $x++) {
    if (substr($n1, $x, 1) == substr($n2, $x, 1)) {
        echo "0";
    } else {
        echo "1";
    }
}
echo "\n";

?>
