using System;

class Program {
    static void Main() {
        int runs = int.Parse(Console.ReadLine());
        for (int run = 0; run < runs; run++){
            int n = int.Parse(Console.ReadLine());
            string all_input = Console.ReadLine();
            string[] parts = all_input.Split(' ');

            // A case where the spy is at the start of the array
            if (parts[0] != parts[1]) {
                // If zero and two match, but zero and one don't one must be the spy
                // Otherwise, zero must be the spy if it doesn't match 0 or 1
                if (parts[0] == parts[2]) {
                    // Print 2 here because the problem expects 1-indexed answers
                    Console.WriteLine(2);
                } else {
                    Console.WriteLine(1);
                }
                continue;
            }
            // If the above case is false, we know parts[0] cannot be the spy, so we just need to reference everything to parts[0]
            for (int i = 0; i < n; i++){
                if (parts[0] != parts[i]) {
                    Console.WriteLine(i+1);
                    break;
                }
            }
        }
    }
}
