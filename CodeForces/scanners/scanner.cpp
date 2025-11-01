#include <iostream>
#include <bits/stdc++.h>
#include <string>
using namespace std;

class Scanner {
private:
    vector<string> buffer;

    void refill() {
        string line;
        do {
            if (!getline(cin, line)) return;
            size_t start = line.find_first_not_of(" \t\r\n");
            size_t end = line.find_last_not_of(" \t\r\n");
            if (start == string::npos) line.clear();
            else line = line.substr(start, end - start + 1);
        } while (line.empty());

        stringstream ss(line);
        string token;
        buffer.clear();
        while (ss >> token) buffer.push_back(token);
    }

public:
    int nextInt() {
        if (buffer.empty()) refill();
        int val = stoi(buffer.front());
        buffer.erase(buffer.begin());
        return val;
    }

    double nextDouble() {
        if (buffer.empty()) refill();
        double val = stod(buffer.front());
        buffer.erase(buffer.begin());
        return val;
    }

    long long nextLong() {
        if (buffer.empty()) refill();
        long long val = stoll(buffer.front());
        buffer.erase(buffer.begin());
        return val;
    }

    string nextWord() {
        if (buffer.empty()) refill();
        string val = buffer.front();
        buffer.erase(buffer.begin());
        return val;
    }

    string nextString() {
        if (buffer.empty()) refill();
        string val = buffer[0];
        for (size_t i = 1; i < buffer.size(); i++) {
            val += " " + buffer[i];
        }
        buffer.clear();
        return val;
    }

    vector<int> nextIntArray(bool sorted = false) {
        if (buffer.empty()) refill();
        vector<int> arr;
        arr.reserve(buffer.size());
        for (auto &s : buffer) arr.push_back(stoi(s));
        buffer.clear();
        if (sorted) sort(arr.begin(), arr.end());
        return arr;
    }

    vector<long long> nextLongArray(bool sorted = false) {
        if (buffer.empty()) refill();
        vector<long long> arr;
        arr.reserve(buffer.size());
        for (auto &s : buffer) arr.push_back(stoll(s));
        buffer.clear();
        if (sorted) sort(arr.begin(), arr.end());
        return arr;
    }
};
