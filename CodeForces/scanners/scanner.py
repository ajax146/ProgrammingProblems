import sys

class Scanner:
    def __init__(self):
        self.buffer = []
        self.eof = False

    def _ensure_buffer(self):
        """Ensure we have tokens in the buffer or mark EOF."""
        while not self.buffer and not self.eof:
            line = sys.stdin.readline()
            if not line:
                self.eof = True
                return
            self.buffer = line.strip().split()

    def nextInt(self) -> int:
        self._ensure_buffer()
        return int(self.buffer.pop(0))

    def nextDouble(self) -> float:
        self._ensure_buffer()
        return float(self.buffer.pop(0))

    def nextLong(self) -> int:
        self._ensure_buffer()
        # Use Python's int as 64-bit (Python ints are unbounded)
        return int(self.buffer.pop(0))
    
    def nextWord(self) -> str:
        self._ensure_buffer()
        return self.buffer.pop(0)

    def nextString(self) -> str:
        self._ensure_buffer()
        line = " ".join(self.buffer)
        self.buffer = []
        return line

    def nextIntArray(self, sorted: bool=False) -> list[int]:
        """Return a list of ints from the rest of the line (or next line)."""
        if not self.buffer:
            line = sys.stdin.readline()
            if not line:
                return []
            self.buffer = line.strip().split()
        arr = [int(x) for x in self.buffer]
        self.buffer = []
        if sorted:
            arr.sort()
        return arr

    def nextLongArray(self, sorted: bool=False) -> list[int]:
        """Return a list of 64-bit ints from the rest of the line (or next line)."""
        if not self.buffer:
            line = sys.stdin.readline()
            if not line:
                return []
            self.buffer = line.strip().split()
        arr = [int(x) for x in self.buffer]
        self.buffer = []
        if sorted:
            arr.sort()
        return arr
