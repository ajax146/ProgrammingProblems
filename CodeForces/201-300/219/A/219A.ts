// Problem 219A: k-String
// https://codeforces.com/contest/219/problem/A
// Compiled with: npx 9.2.0, tsc Version 5.9.3
// Executed with: node v20.19.4
// Linux version: Linux kernel 6.17.0-6-generic
// Written on: October 28th, 2025
// Codeforces language used: Cannot be submitted

import * as readline from 'node:readline/promises';
import { stdin as input, stdout as output } from 'node:process';

const ord = (char) => {
    return Buffer.from(char)[0];
}

async function main() {
    const rl = readline.createInterface({ input, output });

    const frequency: number = parseInt((await rl.question('')).trim(), 10);
    const letters: string = await rl.question('');
    rl.close();

    var total_oj = 0;
    var total_volume = 0;

    var freqMap: number[] = [];

    for (let i = 0; i < letters.length; i++) {
        let indx = ord(letters.charAt(i)) - 97;
        if (!freqMap[indx]) {
            freqMap[indx] = 1
        } else {
            freqMap[indx] += 1;
        }
    }
    
    var ansStr = "";
    for (let i = 0; i < 26; i++) {
        if (!(freqMap[i] >= 1)) {
            continue;
        }
        if (freqMap[i] % frequency != 0) {
            return;
        } else {
            ansStr += String.fromCharCode(i+97);
        }
    }
    console.log(ansStr.repeat(letters.length/ansStr.length));
}

main();
