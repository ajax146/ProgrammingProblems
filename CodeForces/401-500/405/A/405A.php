<?php
// This isn't relevant here, but we have to take it in anyway
$w = intval(trim(fgets(STDIN)));

$line = trim(fgets(STDIN));
$arr = array_map('intval', explode(' ', $line));

sort($arr);

for ($x = 0; $x < count($arr); $x++) {
    echo $arr[$x];
    echo " ";
}
echo "\n";
?>
