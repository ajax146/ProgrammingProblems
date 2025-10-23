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
