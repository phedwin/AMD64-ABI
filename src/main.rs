pub trait Maths {
    type Output;
    fn area(&self) -> Self::Output;
    fn perimeter(&self) -> Self::Output;
}
pub struct Rectangle {
    w: u32,
    h: u32,
}

pub fn area(c: Rectangle) -> u32 {
    c.h * c.w
}

impl Maths for Rectangle {
    type Output = u32;

    fn area(&self) -> Self::Output {
        self.h * self.w
    }

    fn perimeter(&self) -> Self::Output {
        self.h * self.w
    }
}
pub fn read<'am, P: AsRef<std::path::Path>>(path: P) -> std::io::Result<Vec<u8>> {
    pub fn inner(path: &std::path::Path) -> std::io::Result<Vec<u8>> {
        let mut file = std::fs::File::open(path)?;
        let mut bytes = Vec::new();
        std::io::Read::read_to_end(&mut file, &mut bytes)?;
        Ok(bytes)
    }
    inner(path.as_ref())
}

fn main() {
    let path: &str = "me.rs";
    _ = read(path).unwrap();
    let values = Rectangle { h: 10, w: 80 };
    println!("value a = {} value b = {}", values.area(), area(values));
}
