<?php
$string = strtolower(trim(fgets(STDIN)));
$vowels = "aeiouy";
$output = "";

for ($x = 0; $x < strlen($string); $x++) {
    if (str_contains($vowels, substr($string, $x, 1))) {
        continue;
    } else {
        $output .= ".";
        $output .= substr($string, $x, 1);
    }
}
echo "$output\n";
?>
