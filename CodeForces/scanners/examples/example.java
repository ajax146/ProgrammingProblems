import java.io.*;
import java.util.*;

class Scanner {
    private BufferedReader br;
    private StringTokenizer st;

    public Scanner() {
        br = new BufferedReader(new InputStreamReader(System.in));
        st = null;
    }

    private void refill() {
        try {
            while (st == null || !st.hasMoreTokens()) {
                String line = br.readLine();
                if (line == null) throw new RuntimeException("End of input");
                st = new StringTokenizer(line);
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public int nextInt() {
        refill();
        return Integer.parseInt(st.nextToken());
    }

    public double nextDouble() {
        refill();
        return Double.parseDouble(st.nextToken());
    }

    public long nextLong() {
        refill();
        return Long.parseLong(st.nextToken());
    }

    public String nextWord() {
        refill();
        return st.nextToken();
    }

    public String nextString() {
        refill();
        StringBuilder sb = new StringBuilder();
        while (st.hasMoreTokens()) {
            sb.append(st.nextToken());
            if (st.hasMoreTokens()) sb.append(" ");
        }
        st = null;
        return sb.toString();
    }

    public int[] nextIntArray(boolean sorted) {
        refill();
        List<Integer> arrList = new ArrayList<>();
        while (st.hasMoreTokens()) {
            arrList.add(Integer.parseInt(st.nextToken()));
        }
        st = null;
        int[] arr = arrList.stream().mapToInt(Integer::intValue).toArray();
        if (sorted) Arrays.sort(arr);
        return arr;
    }

    public long[] nextLongArray(boolean sorted) {
        refill();
        List<Long> arrList = new ArrayList<>();
        while (st.hasMoreTokens()) {
            arrList.add(Long.parseLong(st.nextToken()));
        }
        st = null;
        long[] arr = arrList.stream().mapToLong(Long::longValue).toArray();
        if (sorted) Arrays.sort(arr);
        return arr;
    }
}

public class example {
    public static void main(String[] args) {
        // Declare the scanner
        Scanner scanner = new Scanner();

        // One int
        int i = scanner.nextInt();
        System.out.println(i);

        // One double
        double a = scanner.nextDouble();
        System.out.println(a);

        // One 64 bit int (long)
        long l = scanner.nextLong();
        System.out.println(l);

        // One word
        String w = scanner.nextWord();
        System.out.println(w);

        // One string/line
        String l2 = scanner.nextString();
        System.out.println(l2);

        // Int array
        int[] ia = scanner.nextIntArray(true);
        for (int x : ia) {
            System.out.print(x + " ");
        }
        System.out.println();

        // 64 bit int array
        long[] la = scanner.nextLongArray(false);
        for (long x : la) {
            System.out.print(x + " ");
        }
        System.out.println();
    }
}
