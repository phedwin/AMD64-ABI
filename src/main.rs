use rustx86::{Animal, Cat, Dog};

#[tokio::main]
pub async fn init() {
    let cat = Cat;
    let dog = Dog;

    let cat_says = cat.speak().await;
    let dog_says = dog.speak().await;

    println!("The cat says: {}", cat_says);
    println!("The dog says: {}", dog_says);
}

fn return_read_value() -> Result<u32, std::num::ParseIntError> {
    let buf = &mut String::new();

    std::io::stdin().read_line(buf).unwrap();

    let value = buf.trim().parse::<u32>();

    value
}

fn main() {
    let value = return_read_value();
    // let value: usize = buf.trim().parse::<usize>().unwrap();
    println!("{:?}", value);
}
