<?php
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
