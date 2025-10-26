// Problem 1433A: Boring Apartments
// https://codeforces.com/contest/1433/problem/A
// Compiled with: npx 9.2.0, tsc Version 5.9.3
// Executed with: node v20.19.4
// Linux version: Linux kernel 6.17.0-5-generic
// Written on: October 26th, 2025
// Codeforces language used: Cannot be submitted

import * as readline from 'node:readline/promises';
import { stdin as input, stdout as output } from 'node:process';

async function main() {
    const rl = readline.createInterface({ input, output });

    const runs: number = parseInt((await rl.question('')).trim(), 10);
    const len_map: number[] = [0, 1, 3, 6, 10];

    for (let run = 0; run < runs; run++) {
        const line: string = await rl.question('');
        //ans = line[0]-1*10 + len_map[line[0]]
        console.log((parseInt(line[0])-1) * 10 + len_map[line.length]);
    }
    rl.close();
}

main();
