Scanner <- setRefClass(
  "Scanner",
  fields = list(
    buffer = "character"
  ),
  methods = list(
    initialize = function() {
      buffer <<- character(0)
    },
    refill = function() {
      if (length(buffer) == 0) {
        line <- readLines(con = "stdin", n = 1)   # wait for input
        buffer <<- strsplit(line, "\\s+")[[1]]    # split by spaces
      }
    },
    nextInt = function() {
      refill()
      val <- as.integer(buffer[1])
      buffer <<- buffer[-1]
      val
    },
    nextDouble = function() {
      refill()
      val <- as.numeric(buffer[1])
      buffer <<- buffer[-1]
      val
    },
    nextLong = function() {
      refill()
      val <- as.numeric(buffer[1])  # R numeric is 64-bit double
      buffer <<- buffer[-1]
      val
    },
    nextWord = function() {
      refill()
      val <- buffer[1]
      buffer <<- buffer[-1]
      val
    },
    nextString = function() {
      refill()
      val <- paste(buffer, collapse = " ")  # combine all remaining tokens with spaces
      buffer <<- character(0)               # clear buffer
      val
    },
    nextIntArray = function(sorted = FALSE) {
      refill()
      arr <- as.integer(buffer)
      buffer <<- character(0)  # consume entire buffer
      if (sorted) arr <- sort(arr)
      arr
    },
    nextLongArray = function(sorted = FALSE) {
      refill()
      arr <- as.numeric(buffer)
      buffer <<- character(0)
      if (sorted) arr <- sort(arr)
      arr
    }
  )
)

# Init scanner
scanner <- Scanner$new()

# One int
i <- scanner$nextInt()
cat(i, "\n")

# One double
a <- scanner$nextDouble()
cat(a, "\n")

# One 64 bit int (long)
l <- scanner$nextLong()
cat(l, "\n")

# One word
w <- scanner$nextWord()
cat(w, "\n")

# One string/line
l2 <- scanner$nextString()
cat(l2, "\n")

# Int array
ia <- scanner$nextIntArray(TRUE)
cat(paste(ia, collapse=" "), "\n")

# 64 bit int array
la <- scanner$nextLongArray()
cat(paste(la, collapse=" "), "\n")
