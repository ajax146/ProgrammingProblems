import * as readline from 'node:readline/promises';
import { stdin as input, stdout as output } from 'node:process';

class Scanner {
    private rl = readline.createInterface({ input, output });
    private buffer: string[] = [];

    private async refill() {
        const line = (await this.rl.question('')).trim();
        this.buffer = line.split(/\s+/);
    }

    async nextInt(): Promise<number> {
        if (this.buffer.length === 0) await this.refill();
        return parseInt(this.buffer.shift()!, 10);
    }

    async nextDouble(): Promise<number> {
        if (this.buffer.length === 0) await this.refill();
        return parseFloat(this.buffer.shift()!);
    }

    async nextLong(): Promise<bigint> {
        if (this.buffer.length === 0) await this.refill();
        return BigInt(this.buffer.shift()!);
    }

    async nextWord(): Promise<string> {
        if (this.buffer.length === 0) await this.refill();
        return this.buffer.shift()!;
    }

    async nextString(): Promise<string> {
        if (this.buffer.length === 0) await this.refill();
        const val = this.buffer.join(' ');
        this.buffer = [];
        return val;
    }

    async nextIntArray(sorted = false): Promise<number[]> {
        if (this.buffer.length === 0) await this.refill();
        const arr = this.buffer.map(x => parseInt(x, 10));
        this.buffer = [];
        return sorted ? arr.sort((a, b) => a - b) : arr;
    }

    async nextLongArray(sorted = false): Promise<bigint[]> {
        if (this.buffer.length === 0) await this.refill();
        const arr = this.buffer.map(x => BigInt(x));
        this.buffer = [];
        if (sorted) arr.sort((a, b) => (a < b ? -1 : a > b ? 1 : 0));
        return arr;
    }

    close() {
        this.rl.close();
    }
}

async function main() {
    // Init scanner
    const scanner = new Scanner();

    // One int
    const i = await scanner.nextInt();
    console.log(i);

    // One double
    const a = await scanner.nextDouble();
    console.log(a);

    // One 64 bit int (long)
    const l = await scanner.nextLong();
    console.log(l);

    // One word
    const w = await scanner.nextWord();
    console.log(w);

    // One string/line
    const l2 = await scanner.nextString();
    console.log(l2);

    // Int array
    const ia = await scanner.nextIntArray(true);
    console.log(ia.join(" "));

    // 64 bit int array
    const la = await scanner.nextLongArray();
    console.log(la.join(" "));

    scanner.close();
}

main();
