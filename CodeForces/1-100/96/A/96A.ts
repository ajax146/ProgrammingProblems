// Problem 96A: Football
// https://codeforces.com/contest/96/problem/A
// Compiled with: npx 9.2.0, tsc Version 5.9.3
// Executed with: node v18.20.4
// Linux version: Linux kernel 6.1.0-10-amd64
// Written on: October 23rd, 2025
// Codeforces language used: Cannot be submitted

import * as readline from 'node:readline/promises';
import { stdin as input, stdout as output } from 'node:process';

async function main() {
    const rl = readline.createInterface({ input, output });

    const football: string = await rl.question('');
    rl.close();

    if (football.includes("0000000") || football.includes("1111111")) {
        console.log("YES");
    } else {
        console.log("NO");
    }
}

main();
