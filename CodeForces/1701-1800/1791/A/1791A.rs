use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input).unwrap();
    let w: i32 = input.trim().parse().unwrap();
    
    let ans_str = "cdefors";
    
    for _ in 0..w {
        let mut line = String::new();
        io::stdin().read_line(&mut line).unwrap();
        let ch = line.trim().chars().next().unwrap();

        if ans_str.contains(ch) {
            println!("YES");
        } else {
            println!("NO");
        }
    }
}
