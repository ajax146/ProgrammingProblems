// Problem 1399A: Remove Smallest
// https://codeforces.com/contest/1399/problem/A
// Compiled with: npx 9.2.0, tsc Version 5.9.3
// Executed with: node v20.19.4
// Linux version: Linux kernel 6.17.0-6-generic
// Written on: October 28th, 2025
// Codeforces language used: Cannot be submitted

import * as readline from 'node:readline/promises';
import { stdin as input, stdout as output } from 'node:process';

async function main() {
    const rl = readline.createInterface({ input, output });

    const runs: number = parseInt((await rl.question('')).trim(), 10);
    for (let run = 0; run < runs; run++) {
        let hit = false;
        const size: number = parseInt((await rl.question('')).trim(), 10);
        const input_nums: number[] = (await rl.question('')).trim().split(' ').map((s: string) => parseInt(s, 10)).sort((a: number, b: number) => b - a);
        for (let i = 0; i < size-1; i++) {
            if (input_nums[i]-input_nums[i+1] > 1) {
                console.log("NO");
                hit = true;
            }
        }
        if (!hit) {
            console.log("YES");
        }
    }
    rl.close();
}

main();
