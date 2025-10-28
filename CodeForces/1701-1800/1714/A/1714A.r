# Problem 1714A: Everyone Loves to Sleep
# https://codeforces.com/contest/1714/problem/A
# Executed with: Rscript (R) version 4.5.1 (2025-06-13)
# Linux version: Linux kernel 6.17.0-6-generic
# Written on: October 28th, 2025
# Codeforces language used: Cannot be submitted

options(scipen=999)

runs <- as.integer(scan(file = "stdin", nmax = 1, quiet = TRUE))

for (run in 0:(runs - 1)) {
    nums <- scan(file = "stdin", nmax = 3, quiet = TRUE)
    # 1 - Shit to hour
    # 2 - Hour at sleep
    # 3 - Minute at sleep
    time_to_sleep <- nums[2] * 60 + nums[3]
    time_to_wake <- 9999
    for (time in 0:(nums[1]-1)) {
        time_data <- scan(file = "stdin", nmax = 2, quiet = TRUE)
        time_format <- time_data[1] * 60 + time_data[2]
        if (time_to_sleep > time_format) {
            time_format = time_format + (24*60)
        }
        if (time_to_wake > time_format) {
            time_to_wake <- time_format
        }
    }
    cat(floor((time_to_wake-time_to_sleep)/60), (time_to_wake-time_to_sleep)%%60, "\n")
}
