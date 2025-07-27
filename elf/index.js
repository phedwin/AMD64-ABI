import "fs";
import { closeSync, openSync, readSync, stat } from "fs";
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

/* Conglomeration of the identification bytes, for easy testing as a word.  */
const ELFMAG = "\x7fELF";

const elf_check_file = (filename) => {
    /* is this how js compares strings? doesnt make sense ➜ stringa == stringb; */
    let status = false;
    let buffer = read_magic(filename).toString();
    let index;
    if (buffer.length == ELFMAG.length) {
        for (index = 0; buffer.length > index; index++)
            if (buffer.charAt(index) != ELFMAG.charAt(index)) break;
        --index;
        /* haha lmao */
        if (buffer.charAt(index) == ELFMAG3) status = true;
    }
    return status;
};

const read_magic = (filename) /*: Buffer<ArrayBuffer> */ => {
    // xxd -g2 -l4 filename
    let buffer = Buffer.alloc(4, 0); /* read the first 4 bytes  */
    let fd = openSync(filename);
    if (fd < 0) exit(1);
    readSync(fd, buffer, 0, 4, SEEK_SET);
    closeSync(fd);
    return buffer;
};

console.log(elf_check_file("exit.bin"));
