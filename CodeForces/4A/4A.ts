import * as readline from 'readline';

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

rl.question('', (answer: string) => {
    const w: number = parseInt(answer.trim(), 10);

    if (w > 2 && w % 2 === 0) {
        console.log("YES");
    } else {
        console.log("NO");
    }

    rl.close();
});
