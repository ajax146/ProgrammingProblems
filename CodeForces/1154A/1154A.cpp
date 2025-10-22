#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

int main() {
    vector<int> arr(4);
    for(int i = 0; i < 4; i++)
        cin >> arr[i];  

    // a+b+c must be the largest value, since a,b,c are all positive
    // And since a+b+c - b+c = a, we can just subtract the other 3 in any order
    sort(arr.begin(), arr.end()); 
    cout << arr[3] - arr[2];
    cout << " ";
    cout << arr[3] - arr[1];
    cout << " ";
    cout << arr[3] - arr[0];
    cout << " ";
    cout << "\n";
}
