<?php
$first = strtolower(trim(fgets(STDIN)));
$second = strtolower(trim(fgets(STDIN)));

if ($first > $second) {
    echo "1\n";
} elseif ($second > $first) {
    echo "-1\n";
} else {
    echo "0\n";
}
?>
