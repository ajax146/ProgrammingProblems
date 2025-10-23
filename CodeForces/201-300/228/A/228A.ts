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
