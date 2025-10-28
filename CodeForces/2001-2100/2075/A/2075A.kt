// Problem 2075A: To Zero
// https://codeforces.com/contest/2075/problem/A
// Compiled with: kotlinc-jvm 2.2.21 (JRE 25+36-Ubuntu-1)
// Executed with: openjdk 25 2025-09-16
// Linux version: Linux kernel 6.17.0-6-generic
// Submitted on: October 28th, 2025
// Codeforces language used: Kotlin 2.2.0

fun main() {
    val runs = readLine()!!.toInt()

    for (run in 0 until runs) {
        var (n, k) = readLine()!!.split(" ").map { it.toInt() }
        var ans = 0
        if (n % 2 == 1) {
            n -= k
            ans += 1
        }
        k -= 1
        ans += (n/k)
        if (n % k != 0) {
            ans += 1
        }
        println(ans)
    }
}
