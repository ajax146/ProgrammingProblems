<?php
$w = intval(trim(fgets(STDIN)));

if ($w > 2 && $w % 2 == 0) {
    echo "YES\n";
} else {
    echo "NO\n";
}
?>
