# Problem 1800A: Is It a Cat?
# https://codeforces.com/contest/1800/problem/A
# Executed with: Rscript (R) version 4.5.1 (2025-06-13)
# Linux version: Linux kernel 6.17.0-6-generic
# Written on: November 2nd, 2025
# Codeforces language used: Cannot be submitted

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

scanner <- Scanner$new()
runs <- scanner$nextInt()
for (run in 0:(runs - 1)) {
    useless <- scanner$nextInt()
    word <- scanner$nextWord()
    word <- tolower(word)
    char_array <- strsplit(word, "")[[1]]
    source <- strsplit("meow", "")[[1]]
    indx <- 1
    hit <- 0

    for (char in char_array) {
        # Move on
        if (indx < 5 && char == source[indx]) {
            indx <- indx+1
        } else if ((indx > 1 && char == source[indx-1])) {
            next
        } else {
            hit <- 1
            break
        }
    }
    if (hit == 0 && indx == 5) {
        cat("YES\n")
    } else {
        cat("NO\n")
    }
}
