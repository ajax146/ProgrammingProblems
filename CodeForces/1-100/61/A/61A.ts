// Problem 61A: Ultra-Fast Mathematician
// https://codeforces.com/contest/61/problem/A
// Compiled with: npx 9.2.0, tsc Version 5.9.3
// Executed with: node v18.20.4
// Linux version: Linux kernel 6.1.0-10-amd64
// Written on: October 23rd, 2025
// Codeforces language used: Cannot be submitted

import * as readline from 'node:readline/promises';
import { stdin as input, stdout as output } from 'node:process';

async function main() {
    const rl = readline.createInterface({ input, output });

    const topstr: string = await rl.question('');
    const bottomstr: string = await rl.question('');
    rl.close();

    let ansstr: string = "";

    for (let i = 0; i < topstr.length; i++) {
        if (topstr[i] == bottomstr[i]) {
            ansstr += "0";
        } else {
            ansstr += "1";
        }
    }
    console.log(ansstr);
}

main();
