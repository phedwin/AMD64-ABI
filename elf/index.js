import "fs";
import { closeSync, openSync, readSync } from "fs";
import { exit } from "process";

const SEEK_SET = 0; /* Seek from beginning of file.  */
const SEEK_CUR = 1; /* Seek from current position.  */
const SEEK_END = 2; /* Seek from end of file.  */

const EI_MAG0 = 0; /* File identification byte 0 index */
const ELFMAG0 = 0x7f; /* Magic number byte 0 */

const EI_MAG1 = 1; /* File identification byte 1 index */
const ELFMAG1 = "E"; /* Magic number byte 1 */

const EI_MAG2 = 2; /* File identification byte 2 index */
const ELFMAG2 = "L"; /* Magic number byte 2 */

const EI_MAG3 = 3; /* File identification byte 3 index */
const ELFMAG3 = "F"; /* Magic number byte 3 */

const elf_check_file = () => {
    const buffer = read_magic();
    const mag_str = buffer.toString();
    console.log(mag_str);

    if (
        buffer[EI_MAG0] == ELFMAG0 &&
        buffer[EI_MAG1] == ELFMAG1 &&
        buffer[EI_MAG2] == ELFMAG2 &&
        buffer[EI_MAG3] == ELFMAG3
    ) {
        return true;
    }
    return false;
};

const read_magic = (filename) /*: Buffer<ArrayBuffer> */ => {
    if (filename == null) filename = "images.bin";
    const buffer = Buffer.alloc(8, 0); /* read the first 8 bytes  */
    let fd = openSync(filename, "w+");
    if (fd < 0) exit(1);
    readSync(fd, buffer, 0, 8, SEEK_SET);
    closeSync(fd);
    return buffer;
};

elf_check_file("image.bin");
