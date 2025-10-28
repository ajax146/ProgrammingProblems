# Problem 4A: Watermelon
# https://codeforces.com/contest/4/problem/A
# Executed with: Rscript (R) version 4.5.1 (2025-06-13)
# Linux version: Linux kernel 6.17.0-6-generic
# Written on: October 28th, 2025
# Codeforces language used: Cannot be submitted

w <- as.integer(scan(file = "stdin", nmax = 1, quiet = TRUE))
if (length(w) == 1 && w > 2 && w %% 2 == 0) {
  cat("YES\n")
} else {
  cat("NO\n")
}
