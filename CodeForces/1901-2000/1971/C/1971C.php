<?php

// Problem 1971C: Clock and Strings
// https://codeforces.com/contest/1971/problem/C
// Executed with: PHP 8.4.11 (cli) (built: Aug 13 2025 01:43:48) (NTS)
// Linux version: Linux kernel 6.17.0-5-generic
// Written on: October 27th, 2025
// Codeforces language used: Cannot be submitted

$runs = intval(trim(fgets(STDIN)));

for ($run = 0; $run < $runs; $run++) {
    $nums = array_map('intval', explode(' ', trim(fgets(STDIN))));
    
    $hit = false;
    $last_color = -1;
    for ($i = 1; $i <= 12; $i++) {
        $indx = array_search($i, $nums);
        if ($indx === false) {
            continue;
        }
        // First color
        if ($indx == 0 || $indx == 1) {
            if ($last_color == 1) {
                echo "NO\n";
                $hit = true;
                break;
            }
            $last_color = 1;
        } else {
            if ($last_color == 2) {
                echo "NO\n";
                $hit = true;
                break;
            }
            $last_color = 2;
        }
    }
    if (!$hit) {
        echo "YES\n";
    }
}

?>
