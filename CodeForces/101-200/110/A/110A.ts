import * as readline from 'node:readline/promises';
import { stdin as input, stdout as output } from 'node:process';

async function main() {
    const rl = readline.createInterface({ input, output });

    const line: string = await rl.question('');
    let n: string = line.trim();

    let count: number = 0;

    for (let i = 0; i < n.length; i++) {
        if (n.charAt(i) == '4' || n.charAt(i) == '7') {
            count += 1;
        }
    }
    if (count == 4 || count == 7) {
        console.log("YES");
    } else {
        console.log("NO");
    }

    rl.close();
}

main();
