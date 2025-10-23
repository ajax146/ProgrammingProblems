import * as readline from 'node:readline/promises';
import { stdin as input, stdout as output } from 'node:process';

async function main() {
    const rl = readline.createInterface({ input, output });

    const line1: string = await rl.question('');
    const tram_stops: number = parseInt(line1.trim(), 10);

    let on_board_now: number = 0;
    let max_on_board: number = 0;

    for (let i = 0; i < tram_stops; i++) {
        const str_input: string = await rl.question('');
        const pass_info: number[] = str_input
            .trim()
            .split(' ')
            .map(s => parseInt(s, 10));
        
        on_board_now -= pass_info[0];
        on_board_now += pass_info[1];

        if (on_board_now > max_on_board) {
            max_on_board = on_board_now;
        }
    }
    rl.close();

    console.log(max_on_board);
}

main();
