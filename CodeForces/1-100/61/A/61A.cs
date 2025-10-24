using System;

class Program {
    static void Main() {
        string line1 = Console.ReadLine();
        string line2 = Console.ReadLine();

        for (int i = 0; i < line1.Length; i++) {
            if (line1[i] == line2[i]) {
                Console.Write(0);
            } else {
                Console.Write(1);
            }
        }
        Console.Write("\n");
    }
}
