#include <iostream>
#include <string>
using namespace std;

int main() {
    int t;
    cin >> t;

    for(int i = 0; i < (t*3); i++) {
        string input;
        cin >> input;

        if (input.find('?') != string::npos) {
            if (input.find('A') != string::npos) {
                if (input.find('B') != string::npos) {
                    cout << "C";
                } else {
                    cout << "B";
                }
            } else {
                cout << "A";
            }
            cout << "\n";
        }
    }
}
