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
    let count_str: string = String(count);
    if (count_str.replace("4", "").replace("7", "").length == 0) {
        console.log("YES");
    } else {
        console.log("NO");
    }

    rl.close();
}

main();
