<?php
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
