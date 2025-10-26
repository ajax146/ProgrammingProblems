// Problem 1950A: Stair, Peak, or Neither?
// https://codeforces.com/contest/1950/problem/A
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
    for (let run = 0; run < runs; run ++) {
        const test_case: number[] = (await rl.question('')).trim().split(' ').map((s: string) => parseInt(s, 10));
        if (test_case[0] < test_case[1]) {
            if (test_case[1] < test_case[2]) {
                console.log("STAIR");
            } else {
                console.log("PEAK");
            }
        } else {
            console.log("NONE");
        }
    }
    rl.close();
}

main();
