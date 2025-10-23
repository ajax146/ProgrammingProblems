using System;

class Program
{
    static void Main()
    {

        string all_x = Console.ReadLine();
        string[] parts = all_x.Split(' ');

        int x1 = int.Parse(parts[0]);
        int x2 = int.Parse(parts[1]);
        int x3 = int.Parse(parts[2]);

        int minimum = 400;

        for (int i = 1; i <= 100; i++){
            int total_move = 0;
            total_move += Math.Abs(x1-i);
            total_move += Math.Abs(x2-i);
            total_move += Math.Abs(x3-i);
            if (total_move < minimum){
                minimum = total_move;
            }
        }

        Console.WriteLine(minimum);
    }
}
