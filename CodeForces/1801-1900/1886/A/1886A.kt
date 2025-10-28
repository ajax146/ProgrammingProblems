// Problem 1886A: Sum of Three
// https://codeforces.com/contest/1886/problem/A
// Compiled with: kotlinc-jvm 2.2.21 (JRE 25+36-Ubuntu-1)
// Executed with: openjdk 25 2025-09-16
// Linux version: Linux kernel 6.17.0-6-generic
// Submitted on: October 28th, 2025
// Codeforces language used: Kotlin 2.2.0

fun main() {
    val runs = readLine()!!.toInt()

    for (run in 0 until runs) {
        // Options are either 1+2+(x-3) OR 1+4+(x-5)
        // If neither of those work, nothing ever will
        // X must be at least 7 to get 3 non-zero ints that aren't % 3 == 0
        // 7, 8 are valid (1+2+4 = 7, 1+2+5 = 8). 9 is INVALID (1+2+6, 1+4+4)
        // 10 and beyond we can calculate dynamically

        val x = readLine()!!.toInt()

        if (10 > x) {
            if (x == 7) {
                println("YES")
                println("1 2 4")
            } else if (x == 8) {
                println("YES")
                println("1 2 5")
            } else {
                println("NO")
            }
        } else {
            println("YES")
            if ((x-3) % 3 != 0) {
                println("1 2 ${x-3}")
            } else {
                println("1 4 ${x-5}")
            }
        }
    }
}
