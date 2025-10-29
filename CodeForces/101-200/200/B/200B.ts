// Problem 200B: Drinks
// https://codeforces.com/contest/200/problem/B
// Compiled with: npx 9.2.0, tsc Version 5.9.3
// Executed with: node v20.19.4
// Linux version: Linux kernel 6.17.0-6-generic
// Written on: October 28th, 2025
// Codeforces language used: Cannot be submitted

import * as readline from 'node:readline/promises';
import { stdin as input, stdout as output } from 'node:process';

async function main() {
    const rl = readline.createInterface({ input, output });

    const drink_count: number = parseInt((await rl.question('')).trim(), 10);

    const line2: string = await rl.question('');
    const drinks: number[] = line2
        .trim()
        .split(' ')
        .map(s => parseInt(s, 10));
    rl.close();

    var total_oj = 0;
    var total_volume = 0;

    for (let i = 0; i < drink_count; i++) {
        total_oj += drinks[i];
        total_volume += 100;
    }
    console.log((total_oj/total_volume)*100);
}

main();
