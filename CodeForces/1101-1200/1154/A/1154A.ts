// Problem 1154A: Restoring Three Numbers
// https://codeforces.com/contest/1154/problem/A
// Compiled with: npx 9.2.0, tsc Version 5.9.3
// Executed with: node v20.19.4
// Linux version: Linux kernel 6.17.0-5-generic
// Written on: October 26th, 2025
// Codeforces language used: Cannot be submitted

import * as readline from 'node:readline/promises';
import { stdin as input, stdout as output } from 'node:process';

async function main() {
    const rl = readline.createInterface({ input, output });

    const all_nums: string = await rl.question('');
    const pass_info: number[] = all_nums
        .trim()
        .split(' ')
        .map(s => parseInt(s, 10));
    rl.close();

    var sortedArray: number[] = pass_info.sort((n1,n2) => n1 - n2);
    var ans = "";
    ans += sortedArray[3] - sortedArray[2];
    ans += " ";
    ans += sortedArray[3] - sortedArray[1];
    ans += " ";
    ans += sortedArray[3] - sortedArray[0];

    console.log(ans);
}

main();
