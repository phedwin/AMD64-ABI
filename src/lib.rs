use std::future::Future;
use std::pin::Pin;

pub struct Pinned<Ptrx> {
    __ptr: Ptrx,
}
pub type TheadSafePin = Pin<Box<dyn Future<Output = String> + Send>>;
pub trait Animal {
    fn speak(&self) -> TheadSafePin;
}

pub struct Cat;
pub struct Dog;

impl Animal for Cat {
    fn speak(&self) -> TheadSafePin {
        Box::pin(async move {
            let response = "Meow".to_string();
            println!("{}", response);
            response
        })
    }
}

impl Animal for Dog {
    fn speak(&self) -> TheadSafePin {
        Box::pin(async move {
            let response = "Woof".to_string();
            println!("{}", response);
            response
        })
    }
}
