use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input).unwrap();
    let nums: Vec<i64> = input
        .split_whitespace()
        .map(|x| x.parse::<i64>().unwrap())
        .collect();

    let clone = nums[0];
    let original = nums[1];

    // We can never make more originals than clones
    if (original-1) > clone {
        println!("NO");
        return;
    }

    let originals_to_make = original-1;
    // In any case we have to make negative originals, stop
    if originals_to_make < 0 {
        println!("NO");
        return;
    }

    // If we are supposed to make a clone, but cannot make any more originals, we cannot make only clones
    if originals_to_make == 0 && clone != 0 {
        println!("NO");
        return;
    }

    // Every original makes a clone.
    let clones_to_make = clone-originals_to_make;
    // If we have to make negative clones, stop.
    if clones_to_make < 0 {
        println!("NO");
    } else if clones_to_make % 2 == 0 {
        println!("YES");
    } else {
        println!("NO");
    }

}
