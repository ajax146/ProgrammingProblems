// Problem 4A: Watermelon
// https://codeforces.com/contest/4/problem/A
// Compiled with: kotlinc-jvm 2.2.21 (JRE 25+36-Ubuntu-1)
// Executed with: openjdk 25 2025-09-16
// Linux version: Linux kernel 6.17.0-6-generic
// Submitted on: October 28th, 2025
// Codeforces language used: Kotlin 2.2.0

fun main() {
    val w = readLine()!!.toInt()
    if (w > 2 && w % 2 == 0) {
        println("YES")
    } else {
        println("NO")
    }
}
