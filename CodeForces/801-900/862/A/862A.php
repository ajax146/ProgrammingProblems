<?php

// Problem 862A: Mahmoud and Ehab and the MEX
// https://codeforces.com/contest/862/problem/A
// Executed with: PHP 8.4.11 (cli) (built: Aug 13 2025 01:43:48) (NTS)
// Linux version: Linux kernel 6.17.0-5-generic
// Written on: October 27th, 2025
// Codeforces language used: Cannot be submitted

$arr = array_map('intval', explode(' ', trim(fgets(STDIN))));
$set_size = $arr[0];
$MEX = $arr[1];

$set = array_map('intval', explode(' ', trim(fgets(STDIN))));
sort($set);


$array_pointer = 0;
$value_pointer = 0;

$ans = 0;

while (true) {
    // If we exceed the array size, we have guaranteed to finish puzzle
    if ($array_pointer == $set_size) {
        break;
    }

    $check_val = $set[$array_pointer];

    // We are at the last time
    if ($value_pointer == $MEX) {
        // If MEX is in array, remove it
        if ($check_val == $MEX) {
            $ans += 1;
        }
        break;
    }

    if ($check_val == $value_pointer) {
        // The next number is already in the array
        $value_pointer += 1;
        $array_pointer += 1;
    } else {
        // The next number is NOT in the array
        $value_pointer += 1;
        $ans += 1;
    }

}
echo $ans . "\n";

?>
