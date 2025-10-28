# Problem 1118A: Water Buying
# https://codeforces.com/contest/1118/problem/A
# Executed with: Rscript (R) version 4.5.1 (2025-06-13)
# Linux version: Linux kernel 6.17.0-6-generic
# Written on: October 28th, 2025
# Codeforces language used: Cannot be submitted

options(scipen=999)

runs <- as.integer(scan(file = "stdin", nmax = 1, quiet = TRUE))

for (run in 0:(runs - 1)) {
    nums <- scan(file = "stdin", nmax = 3, quiet = TRUE)
    # This case where buying 1L bottles is either cheaper or the same price than 2.
    # So we just buy all 1L bottles
    if (floor(nums[3]/2) >= nums[2]){
        cat(nums[2]*nums[1], "\n")
    } else {
        # We buy as many as possible 2 liter bottles
        cost <- floor(nums[1]/2)*nums[3]
        if (nums[1] %% 2 == 1) {
            cost <- cost + nums[2]
        }
        cat(cost, "\n")
    }
}
