using System;

class Program {
    static void Main() {
        int n = int.Parse(Console.ReadLine());
        string all_input = Console.ReadLine();
        string[] parts = all_input.Split(' ');
        int total = 0;

        for (int i = 0; i < n; i++){
            total += Math.Abs(int.Parse(parts[i]));
        }
        Console.WriteLine(total);
    }
}
