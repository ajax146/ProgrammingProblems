<?php
$line = trim(fgets(STDIN));
$arr = array_map('intval', explode(' ', $line));

$n = $arr[0];
$k = $arr[1];

if ($n % 2 == 1) {
    $n += 1;
}

if ($k-1 >= $n/2) {
    $ans = ($k-($n/2))*2;
    echo "$ans\n";
} else {
    $ans = ($k-(1))*2+1;
    echo "$ans\n";
}

?>
