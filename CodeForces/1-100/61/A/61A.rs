use std::io;

fn main() {
    let mut line = String::new();
    io::stdin().read_line(&mut line).unwrap();
    let line1 = line.trim();

    let mut line = String::new();
    io::stdin().read_line(&mut line).unwrap();
    let line2 = line.trim();

    for (_, (c1, c2)) in line1.chars().zip(line2.chars()).enumerate() {

        if c1 == c2 {
            print!("0");
        } else {
            print!("1");
        }
    }
    print!("\n");
}
