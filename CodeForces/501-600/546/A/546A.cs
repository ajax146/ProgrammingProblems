using System;

class Program {
    static void Main() {
        string all_input = Console.ReadLine();
        string[] parts = all_input.Split(' ');

        int k = int.Parse(parts[0]);
        int n = int.Parse(parts[1]);
        int w = int.Parse(parts[2]);

        int total_cost_multi = ((w*(w+1))/2);
        int total_cost = k * total_cost_multi;

        Console.WriteLine(Math.Max(total_cost-n, 0));
    }
}
