use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input).unwrap();
    let nums: Vec<i64> = input
        .split_whitespace()
        .map(|x| x.parse::<i64>().unwrap())
        .collect();

    let mut n = nums[0];
    let k = nums[1];

    if n % 2 == 1 {
        n += 1;
    }

    if k-1 >= n/2 {
        println!("{}", (k-(n/2))*2 );
    } else {
        println!("{}", (k-(1))*2+1 );
    }
}
