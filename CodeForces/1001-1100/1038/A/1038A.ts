// Problem 1038A: Equality
// https://codeforces.com/contest/1038/problem/A
// Compiled with: npx 9.2.0, tsc Version 5.9.3
// Executed with: node v20.19.4
// Linux version: Linux kernel 6.17.0-5-generic
// Written on: October 26th, 2025
// Codeforces language used: Cannot be submitted

import * as readline from 'node:readline/promises';
import { stdin as input, stdout as output } from 'node:process';

async function main() {
    const rl = readline.createInterface({ input, output });

    const input_nums: string = await rl.question('');
    const arr: number[] = input_nums
        .trim()
        .split(' ')
        .map(s => parseInt(s, 10));

    const line: string = await rl.question('');
    rl.close();
    const offset: number = 'A'.charCodeAt(0);
    let freqArray: number[] = new Array(arr[1]).fill(0);

    for (let i = 0; i < line.length; i++) {
        freqArray[line[i].charCodeAt(0) - offset] += 1;
    }

    let min_val: number = 9999999999;
    for (let i = 0; i < arr[1]; i++) {
        if (freqArray[i] < min_val) {
            min_val = freqArray[i]
        }
    }

    console.log(min_val*arr[1]);
    
}

main();
