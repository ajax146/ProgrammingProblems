<?php
// Create an array of length 100, all false
$boolArray = array_fill(0, 101, false);

// This isn't relevant here, but we have to take it in anyway
$w = intval(trim(fgets(STDIN)));

// Player 1
$line = trim(fgets(STDIN));
$arr = array_map('intval', explode(' ', $line));

// Player 2
$line2 = trim(fgets(STDIN));
$arr_2 = array_map('intval', explode(' ', $line2));

$arr = array_merge($arr, $arr_2);

for ($x = 0; $x < count($arr); $x++) {
    $boolArray[$arr[$x]] = true;
}

for ($x = 1; $x <= $w; $x++) {
    if ($boolArray[$x] != true) {
        echo "Oh, my keyboard!\n";
        return;
    }
}
echo "I become the guy.\n";
?>
