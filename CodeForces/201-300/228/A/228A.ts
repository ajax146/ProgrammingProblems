// Problem 228A: Is your horseshoe on the other hoof?
// https://codeforces.com/contest/228/problem/A
// Compiled with: npx 9.2.0, tsc Version 5.9.3
// Executed with: node v18.20.4
// Linux version: Linux kernel 6.1.0-10-amd64
// Written on: October 23rd, 2025
// Codeforces language used: Cannot be submitted

import * as readline from 'node:readline/promises';
import { stdin as input, stdout as output } from 'node:process';

async function main() {
    const rl = readline.createInterface({ input, output });

    const line: string = await rl.question('');
    const arr: number[] = line
        .trim()
        .split(' ')
        .map(s => parseInt(s, 10));
    rl.close();

    let shoeSet = new Set<number>(arr);
    console.log(4-shoeSet.size);
}

main();
