// Problem 118A: String Task
// https://codeforces.com/contest/118/problem/A
// Compiled with: npx 9.2.0, tsc Version 5.9.3
// Executed with: node v20.19.4
// Linux version: Linux kernel 6.17.0-5-generic
// Written on: October 26th, 2025
// Codeforces language used: Cannot be submitted

import * as readline from 'node:readline/promises';
import { stdin as input, stdout as output } from 'node:process';

async function main() {
    const rl = readline.createInterface({ input, output });

    let input_string: string = await rl.question('');
    rl.close();

    input_string = input_string.toLowerCase();
    let answer: string = "";
    const vowels = "aeiouy";

    for (let i = 0; i < input_string.length; i++) {
        if (vowels.indexOf(input_string[i]) == -1) {
            answer += ".";
            answer += input_string[i];
        }
    }
    console.log(answer)
    
}

main();
