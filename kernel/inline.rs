use std::arch::asm;

pub unsafe fn write(fd: u32, buf: *const u8, count: usize) -> u64 {
    let syscall_number: u64 = 1;
    asm!(
        "syscall",
        inout("rax") syscall_number => _,
        in("rdi") fd,
        in("rsi") buf,
        in("rdx") count,
        lateout("rcx") _, lateout("r11") _,
        options(nostack)
    );

    syscall_number
}

fn main() {
    let buf = "hello world";

    unsafe {
        let x = write(1, buf.as_ptr() as *const u8, buf.len());
        println!(x)
    }
}
