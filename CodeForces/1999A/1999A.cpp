#include <iostream>
#include <string>
using namespace std;

int main() {
    int t;
    cin >> t;

    for(int i = 0; i < t; i++) {
        string number;
        cin >> number;
        cout << (number[0]-'0') + (number[1]-'0') << "\n";
    }
}
