using System;

class Program {
    static void Main() {
        string line1 = Console.ReadLine();

        if (line1.Contains("0000000") || line1.Contains("1111111") ) {
            Console.WriteLine("YES");
        } else {
            Console.WriteLine("NO");
        }
    }
}
