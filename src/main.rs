use std::{arch::asm, cell::Cell, thread};

thread_local! {
    static THREAD_COUNTER: Cell<i32> = Cell::new(0);
}

pub unsafe fn write(fd: u32, buf: *const u8, count: usize) {
    let syscall_number: u32 = 1;
    unsafe {
        asm!(
            "syscall",
            inout("eax") syscall_number => _,
            in("edi") fd,
            in("esi") buf,
            in("edx") count,
            lateout("ecx")  _,
            options(nostack)
        );
    }
}

fn thread_increment() {
    thread::spawn(|| {
        THREAD_COUNTER.with(|c| {
            // Access the thread-local instance
            let current_val = c.get();
            c.set(current_val + 1);
            println!(
                "Thread {:?} incremented to {}",
                thread::current().id(),
                c.get()
            );
        });
    })
    .join()
    .unwrap(); // Add .join() for main thread to wait
}

fn thread_decrement() {
    thread::spawn(|| {
        THREAD_COUNTER.with(|c| {
            let current_val = c.get();
            c.set(current_val - 1); // Or whatever operation you want
            println!(
                "Thread {:?} decremented to {}",
                thread::current().id(),
                c.get()
            );
        });
    })
    .join()
    .unwrap();
}

fn main() {
    println!("Main thread starting...");

    thread_increment(); // This will create a thread and increment its THREAD_COUNTER
    thread_decrement(); // This will create another thread and decrement its THREAD_COUNTER

    // Access the main thread's THREAD_COUNTER to see its value (it's separate)
    THREAD_COUNTER.with(|c| {
        println!("Main thread's final THREAD_COUNTER: {}", c.get());
    });

    println!("Main thread finished.");
}
