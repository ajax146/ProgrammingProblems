<?php
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
