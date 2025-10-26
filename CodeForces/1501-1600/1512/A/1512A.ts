// Problem 1512A: Spy Detected!
// https://codeforces.com/contest/1512/problem/A
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
        const number_count: number = parseInt((await rl.question('')).trim(), 10);
        const input_nums: number[] = (await rl.question('')).trim().split(' ').map((s: string) => parseInt(s, 10));

        // A case where the spy is either 0 OR 1
        if (input_nums[0] != input_nums[1]) {
            if (input_nums[0] != input_nums[2]) {
                console.log(1);
                continue;
            } else {
                console.log(2);
                continue;
            }
        }
        // We know for a fact that index 0 is not the spy if it equals 1
        const safe_value = input_nums[0];
        for (let i = 1; i < number_count; i++) {
            if (input_nums[i] != safe_value) {
                console.log(i+1);
                break;
            }
        }
    }
    rl.close();
}

main();
