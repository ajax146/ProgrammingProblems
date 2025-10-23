using System;
using System.Collections.Generic;

class Program {

    static bool IsAllUnique(string key) {
        string result = string.Empty;
        foreach (char value in key) {
            if (result.IndexOf(value) == -1) {
                result += value;
            }
        }
        if (result.Length == 4) {
            return true;
        }else {
            return false;
        }
    }

    static List<int> ComputeYears() {
        List<int> good_years = new List<int>();
        int year = 1000;
        while (year < 10000) {
            if (IsAllUnique(year.ToString())){
                good_years.Add(year);
            }
            year++;
        }
        return good_years;
        
    }

    static void Main() {
        int year = int.Parse(Console.ReadLine());
        List<int> computed_years = ComputeYears();
        year++;
        while (true) {
            if (computed_years.IndexOf(year) != -1){
                Console.WriteLine(year);
                return;
            }
            year++;
        }
    }
}
