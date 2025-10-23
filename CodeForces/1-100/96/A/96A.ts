import * as readline from 'node:readline/promises';
import { stdin as input, stdout as output } from 'node:process';

async function main() {
    const rl = readline.createInterface({ input, output });

    const football: string = await rl.question('');
    rl.close();

    if (football.includes("0000000") || football.includes("1111111")) {
        console.log("YES");
    } else {
        console.log("NO");
    }
}

main();
