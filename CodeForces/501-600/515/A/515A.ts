// Problem 515A: Drazil and Date
// https://codeforces.com/contest/515/problem/A
// Compiled with: npx 9.2.0, tsc Version 5.9.3
// Executed with: node v20.19.4
// Linux version: Linux kernel 6.17.0-6-generic
// Written on: October 28th, 2025
// Codeforces language used: Cannot be submitted

import * as readline from 'node:readline/promises';
import { stdin as input, stdout as output } from 'node:process';

async function main() {
    const rl = readline.createInterface({ input, output });
    const line: string = await rl.question('');
    const data: number[] = line
        .trim()
        .split(' ')
        .map(s => parseInt(s, 10));

    
    rl.close();

    const extra_steps = data[2] - data[1] - data[0];
    if (extra_steps >= 0 && extra_steps % 2 == 0) {
        console.log("Yes");
    } else {
        console.log("No");
    }
}

main();
