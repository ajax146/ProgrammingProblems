using System;

class Program {
    static void Main() {
        string all_input = Console.ReadLine();
        string[] parts = all_input.Split(' ');

        int n = int.Parse(parts[0]);
        string t = parts[1];
        n-=1;
        if (t == "10") {
            n-=1;
        }
        if (n < 0) {
            Console.WriteLine(-1);
            return;
        }

        string zeros = new string('0', n);

        Console.WriteLine(t + zeros);
    }
}
