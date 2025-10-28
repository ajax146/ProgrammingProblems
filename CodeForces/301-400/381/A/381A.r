# Problem 381A: Sereja and Dima
# https://codeforces.com/contest/381/problem/A
# Executed with: Rscript (R) version 4.5.1 (2025-06-13)
# Linux version: Linux kernel 6.17.0-6-generic
# Written on: October 28th, 2025
# Codeforces language used: Cannot be submitted

options(scipen=999)

w <- as.integer(scan(file = "stdin", nmax = 1, quiet = TRUE))
nums <- scan(file = "stdin", nmax = w, quiet = TRUE)

turn <- 0
sereja_score <- 0
dima_score <- 0

while (w > turn) {
    if (nums[1] > nums[length(nums)]) {
        if (turn %% 2 == 0) {
            sereja_score <- sereja_score + nums[1]
        } else {
            dima_score <- dima_score + nums[1]
        }
        nums <- nums[-1]
    } else {
        if (turn %% 2 == 0) {
            sereja_score <- sereja_score + nums[length(nums)]
        } else {
            dima_score <- dima_score + nums[length(nums)]
        }
        nums <- nums[-length(nums)]
    }

    turn <- turn + 1
}
cat(sereja_score, dima_score, "\n")
