// Problem 271A: Beautiful Year
// https://codeforces.com/contest/271/problem/A
// Compiled with: npx 9.2.0, tsc Version 5.9.3
// Executed with: node v20.19.4
// Linux version: Linux kernel 6.17.0-5-generic
// Written on: October 26th, 2025
// Codeforces language used: Cannot be submitted

import * as readline from 'node:readline/promises';
import { stdin as input, stdout as output } from 'node:process';

async function main() {
    const rl = readline.createInterface({ input, output });

    const line: string = await rl.question('');
    let year: number = parseInt(line.trim(), 10);
    rl.close();

    while (true) {
        year += 1;
        let arr: string[] = year.toString().split('');
        let numSet = new Set<string>(arr);
        if (numSet.size == 4) {
            console.log(year);
            return;
        }
    }

}

main();
