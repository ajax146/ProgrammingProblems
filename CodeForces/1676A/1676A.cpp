#include <iostream>
#include <string>
using namespace std;

int main() {
    int t;
    cin >> t;

    for(int i = 0; i < t; i++) {
        string ticket;
        cin >> ticket;
        int total = 0;
        total += ticket[0];
        total += ticket[1];
        total += ticket[2];
        total -= ticket[3];
        total -= ticket[4];
        total -= ticket[5];

        if (total == 0) {
            cout << "YES\n";
        } else{
            cout << "NO\n";
        }
    }
}
