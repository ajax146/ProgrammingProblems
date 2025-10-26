<?php

// Problem 96A: Football
// https://codeforces.com/contest/96/problem/A
// Executed with: PHP 8.2.29 (cli) (built: Jul  3 2025 16:16:05) (NTS)
// Linux version: Linux kernel 6.1.0-10-amd64
// Written on: October 23rd, 2025
// Codeforces language used: Cannot be submitted

$input = trim(fgets(STDIN));

$n = 0;
$last = '2';

for ($x = 0; $x < strlen($input); $x++) {
    if (substr($input, $x, 1) == $last) {
        $n += 1;
    } else {
        $n = 1;
        $last = substr($input, $x, 1);
    }

    if ($n == 7) {
        print("YES\n");
        return;
    }
}
print("NO\n");
?>
