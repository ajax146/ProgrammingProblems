<?php
class Scanner {
    private $buffer = [];

    private function refill() {
        while (empty($this->buffer)) {
            $line = fgets(STDIN);
            if ($line === false) {
                throw new Exception("EOF reached");
            }
            $line = trim($line);
            if ($line === "") continue;
            $this->buffer = preg_split('/\s+/', $line);
        }
    }

    public function nextInt(): int {
        $this->refill();
        return (int) array_shift($this->buffer);
    }

    public function nextDouble(): float {
        $this->refill();
        return (float) array_shift($this->buffer);
    }

    public function nextLong(): int {
        return $this->nextInt();
    }

    public function nextWord(): string {
        $this->refill();
        $val = array_shift($this->buffer);
        return $val;
    }

    public function nextString(): string {
        $this->refill();
        $line = implode(" ", $this->buffer);
        $this->buffer = [];
        return $line;
    }

    public function nextIntArray(bool $sorted = false): array {
        $this->refill();
        $arr = array_map('intval', $this->buffer);
        $this->buffer = [];
        if ($sorted) sort($arr);
        return $arr;
    }

    public function nextLongArray(bool $sorted = false): array {
        return $this->nextIntArray($sorted);
    }
}
//Declare scanner
$scanner = new Scanner();

// One int
$i = $scanner->nextInt();
echo $i . "\n";

// One double
$a = $scanner->nextDouble();
echo $a . "\n";

// One 64 bit int (long)
$l = $scanner->nextLong();
echo $l . "\n";

// One word
$w = $scanner->nextWord();
echo $w . "\n";

// One string/line
$l2 = $scanner->nextString();
echo $l2 . "\n";

// Int array
$ia = $scanner->nextIntArray(true);
foreach ($ia as $x) {
    echo $x . " ";
}
echo "\n";

// 64 bit int array
$la = $scanner->nextLongArray();
foreach ($la as $x) {
    echo $x . " ";
}
echo "\n";
?>
