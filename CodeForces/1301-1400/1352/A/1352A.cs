using System;
using System.Text;
using System.Collections.Generic;

class Program {
    static void Main() {
        int t = int.Parse(Console.ReadLine());

        for (int i = 0; i < t; i++) {
            String num = Console.ReadLine();
            StringBuilder someString = new StringBuilder(Reverse(num));
            List<String> nums = new List<String>();
            
            for (int j = 0; j < someString.Length; j++){
                if (someString[j] != '0'){
                    nums.Add(Reverse(someString.ToString(0, j+1)));
                    someString[j] = '0';
                }
            }
            Console.WriteLine(nums.Count);
            Console.WriteLine(string.Join(" ", nums));
        }

    }

    public static string Reverse( string s ) {
        char[] charArray = s.ToCharArray();
        Array.Reverse(charArray);
        return new string(charArray);
    }
}
