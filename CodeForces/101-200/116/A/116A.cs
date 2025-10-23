using System;

class Program {
    static void Main() {
        int n = int.Parse(Console.ReadLine());
        int curr_tram = 0;
        int max_tram = 0;

        for (int i = 0; i < n; i++){
            string[] parts = Console.ReadLine().Split();
            int exit = int.Parse(parts[0]);
            int enter = int.Parse(parts[1]);

            curr_tram -= exit;
            curr_tram += enter;
            if (curr_tram > max_tram) {
                max_tram = curr_tram;
            }
        }
        Console.WriteLine(max_tram);
    }
}
