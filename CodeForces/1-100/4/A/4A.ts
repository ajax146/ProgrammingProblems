// Problem 4A: Watermelon
// https://codeforces.com/contest/4/problem/A
// Compiled with: npx 9.2.0, tsc Version 5.9.3
// Executed with: node v18.20.4
// Linux version: Linux kernel 6.1.0-10-amd64
// Written on: October 22nd, 2025
// Codeforces language used: Cannot be submitted

import * as readline from 'node:readline/promises';
import { stdin as input, stdout as output } from 'node:process';

async function main() {
    const rl = readline.createInterface({ input, output });

    const line: string = await rl.question('');
    const w: number = parseInt(line.trim(), 10);

    if (w > 2 && w % 2 === 0) {
        console.log("YES");
    } else {
        console.log("NO");
    }

    rl.close();
}

main();
