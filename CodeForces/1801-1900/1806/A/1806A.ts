// Problem 1806A: Walking Master
// https://codeforces.com/contest/1806/problem/A
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
        const input_nums: number[] = (await rl.question('')).trim().split(' ').map((s: string) => parseInt(s, 10));

        const start_x = input_nums[0];
        const start_y = input_nums[1];
        const end_x = input_nums[2];
        const end_y = input_nums[3];

        const move_diag = end_y - start_y;
        const move_back = (start_x + move_diag) - end_x;
        if (move_back < 0 || move_diag < 0) {
            console.log("-1");
        } else {
            console.log(move_diag+move_back);
        }
    }
    rl.close();
}

main();
