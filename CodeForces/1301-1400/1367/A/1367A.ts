// Problem 1367A: George and Accommodation
// https://codeforces.com/contest/1367/problem/A
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
    for (let run = 0; run < runs; run++) {

        const line: string = await rl.question('');
        let answer: string = line[0];

        for (let i = 1; i < line.length; i++) {
            if (i % 2 == 1) {
                answer += line[i]
            }
        }
        console.log(answer);
    }
    rl.close();
}

main();
