import java.io.BufferedReader
import java.io.InputStreamReader
import java.util.StringTokenizer

class Scanner {
    private val reader = BufferedReader(InputStreamReader(System.`in`))
    private var st: StringTokenizer? = null

    private fun refill() {
        while (st == null || !st!!.hasMoreTokens()) {
            val line = reader.readLine() ?: throw RuntimeException("EOF reached")
            st = StringTokenizer(line)
        }
    }

    fun nextInt(): Int {
        refill()
        return st!!.nextToken().toInt()
    }

    fun nextDouble(): Double {
        refill()
        return st!!.nextToken().toDouble()
    }

    fun nextLong(): Long {
        refill()
        return st!!.nextToken().toLong()
    }

    fun nextWord(): String {
        refill()
        return st!!.nextToken()
    }

    fun nextString(): String {
        refill()
        val sb = StringBuilder()
        while (st!!.hasMoreTokens()) {
            sb.append(st!!.nextToken())
            if (st!!.hasMoreTokens()) sb.append(" ")
        }
        st = null
        return sb.toString()
    }

    fun nextIntArray(sorted: Boolean = false): IntArray {
        refill()
        val arr = mutableListOf<Int>()
        while (st!!.hasMoreTokens()) {
            arr.add(st!!.nextToken().toInt())
        }
        st = null
        if (sorted) arr.sort()
        return arr.toIntArray()
    }

    fun nextLongArray(sorted: Boolean = false): LongArray {
        refill()
        val arr = mutableListOf<Long>()
        while (st!!.hasMoreTokens()) {
            arr.add(st!!.nextToken().toLong())
        }
        st = null
        if (sorted) arr.sort()
        return arr.toLongArray()
    }
}
