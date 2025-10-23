using System;

class Program {
    static void Main() {
        int n = int.Parse(Console.ReadLine());
        for (int i = 0; i < n; i++) {
            string all_input = Console.ReadLine();
            string[] parts = all_input.Split(' ');
            int a = int.Parse(parts[0]);
            int b = int.Parse(parts[1]);
            int c = int.Parse(parts[2]);
            
            if (a < b){
                // Possible cases:
                // 1-2-3, 1-3-2, 2-3-1
                if (a < c){
                    //Possible cases:
                    // 1-2-3, 1-3-2
                    Console.WriteLine(Math.Min(b, c));
                } else {
                    //Possible cases:
                    // 2-3-1
                    Console.WriteLine(a);
                }
            } else {
                // Possible cases:
                // 2-1-3, 3-1-2, 3-2-1
                if (a > c) {
                    // Possible cases:
                    // 3-1-2, 3-2-1
                    Console.WriteLine(Math.Max(b,c));
                } else {
                    // Possible cases:
                    // 2-1-3
                    Console.WriteLine(a);
                }
            }

        }
    }
}
