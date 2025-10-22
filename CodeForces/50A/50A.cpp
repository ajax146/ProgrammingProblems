#include <iostream>
using namespace std;

int main() {
    int m, n;
    cin >> m;
    cin >> n;

    // Figure out the max number of boards in the m direction
    int max_m = m/2;
    // Stack that many tiles all the way up in the n direction
    int ans = max_m * n;

    // If m is odd, we can stack another row of tiles
    if (m % 2 == 1) {
        ans += (n/2);
    }
    cout << ans << "\n";
}
