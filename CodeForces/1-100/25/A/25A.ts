// Problem 25A: IQ Test
// https://codeforces.com/contest/25/problem/A
// Compiled with: npx 9.2.0, tsc Version 5.9.3
// Executed with: node v18.20.4
// Linux version: Linux kernel 6.1.0-10-amd64
// Written on: October 23rd, 2025
// Codeforces language used: Cannot be submitted

import * as readline from 'node:readline/promises';
import { stdin as input, stdout as output } from 'node:process';

async function main() {
    const rl = readline.createInterface({ input, output });

    const line1: string = await rl.question('');
    const n: number = parseInt(line1.trim(), 10);

    const line2: string = await rl.question('');
    const arr: number[] = line2
        .trim()
        .split(' ')
        .map(s => parseInt(s, 10));
    rl.close();
    
    if ((arr[0] % 2) != (arr[1] % 2)) {
        if (arr[0] % 2 != arr[2] % 2) {
            console.log(1);
            return;
        } else {
            console.log(2);
            return;
        }
    }

    const compare = arr[0] % 2;
    for (let i = 0; i < n; i++) {
        if (arr[i] % 2 != compare) {
            console.log(i+1);
            return;
        }
    }   
}

main();
