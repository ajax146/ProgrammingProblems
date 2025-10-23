use std::io;

fn main() {
    let mut n = String::new();
    io::stdin().read_line(&mut n).unwrap();
    let w: i32 = n.trim().parse().unwrap();

    let mut input = String::new();
    io::stdin().read_line(&mut input).unwrap();
    let nums: Vec<i32> = input
        .split_whitespace()
        .map(|x| x.parse::<i32>().unwrap())
        .collect();
    
    let mut free_officers = 0;
    let mut crimes_done = 0;

    for i in 0..w {
        let idx = i as usize;
        if nums[idx] == -1 {
            if free_officers > 0 {
                free_officers-=1;
            } else {
                crimes_done+=1;
            }
        } else {
            free_officers += nums[idx];
        }
    }
    println!("{}", crimes_done);
}
