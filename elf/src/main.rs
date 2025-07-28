use minimal_elf::write_elf;

fn main() -> std::io::Result<()> {
    let path: &str = "out";
    write_elf(path)?;
    Ok(())
}
