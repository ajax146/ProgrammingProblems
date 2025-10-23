using System;

class Program {
    static void Main() {
        string all_input = Console.ReadLine();
        string[] parts = all_input.Split(' ');

        int m = int.Parse(parts[0]);
        int n = int.Parse(parts[1]);

        int answer = (m/2)*n;

        if (m % 2 == 1) {
            answer += (n/2);
        }

        Console.WriteLine(answer);
    }
}
