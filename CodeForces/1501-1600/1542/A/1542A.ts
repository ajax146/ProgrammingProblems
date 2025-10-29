// Problem 1542: Odd Set
// https://codeforces.com/contest/1542/problem/A
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
        
        let bias = 0;
        
        for (let i = 0; i < 2*size; i++) {
            if (input_nums[i] % 2 == 0) {
                bias += 1;
            } else {
                bias -= 1;
            }
        }
        if (bias == 0) {
            console.log("YES");
        } else {
            console.log("NO");
        }
    }
    rl.close();
}

main();
