//  https://github.com/OpenChannelSSD/linux/blob/master/arch/x86/entry/syscalls/syscall_64.tbl

/* x86-64 Linux System Call Numbers (ABI: rax) */
#ifndef SYSCALLS_64_H
#define SYSCALLS_64_H

/* File I/O */
#define SYS_READ         0x00
#define SYS_WRITE        0x01
#define SYS_OPEN         0x02
#define SYS_CLOSE        0x03
#define SYS_STAT         0x04
#define SYS_FSTAT        0x05
#define SYS_LSEEK        0x08
#define SYS_MMAP         0x09
#define SYS_MPROTECT     0x0a
#define SYS_MUNMAP       0x0b

/* Process Management */
#define SYS_FORK         0x39
#define SYS_EXECVE       0x3b
#define SYS_EXIT         0x3c
#define SYS_WAIT4        0x3d
#define SYS_KILL         0x3e
#define SYS_GETPID       0x27

/* Memory Management */
#define SYS_BRK          0x0c
#define SYS_MADVISE      0x1c

/* Networking */
#define SYS_SOCKET       0x29
#define SYS_CONNECT      0x2a
#define SYS_ACCEPT       0x2b
#define SYS_SENDTO       0x2c
#define SYS_RECVFROM     0x2d
#define SYS_BIND         0x31

/* Filesystem */
#define SYS_GETDENTS     0x4e
#define SYS_CHDIR        0x50
#define SYS_RENAME       0x52
#define SYS_MKDIR        0x53
#define SYS_RMDIR        0x54
#define SYS_CREAT        0x55
#define SYS_LINK         0x56
#define SYS_UNLINK       0x57
#define SYS_CHMOD        0x5a

/* Special */
#define SYS_ARCH_PRCTL   0x9e
#define SYS_CLONE        0x38
#define SYS_FSYNC        0x4a
#define SYS_IOCTL        0x10
#define SYS_GETTIMEOFDAY 0x60
#define SYS_GETRLIMIT    0x61
#define SYS_NANOSLEEP    0x23

/* Modern Extensions */
#define SYS_GETRANDOM    0x13e
#define SYS_MEMFD_CREATE 0x13f
#define SYS_EXECVEAT     0x142
#define SYS_COPY_FILE_RANGE 0x143


/* Essential syscalls for ASM text editor (x86-64 Linux) */
#define SYS_READ      0x00    // fd, buf, count
#define SYS_WRITE     0x01    // fd, buf, count
#define SYS_OPEN      0x02    // filename, flags, mode
#define SYS_CLOSE     0x03    // fd
#define SYS_LSEEK     0x08    // fd, offset, whence
#define SYS_MMAP      0x09    // addr, length, prot, flags, fd, offset
#define SYS_MUNMAP    0x0b    // addr, length
#define SYS_MPROTECT  0x0a    // addr, len, prot
#define SYS_BRK       0x0c    // addr
#define SYS_IOCTL     0x10    // fd, request, arg
#define SYS_GETDENTS  0x4e    // fd, dirp, count (for dir listing)
#define SYS_FSTAT     0x05    // fd, statbuf
#define SYS_EXIT      0x3c    // status
#define SYS_FTRUNCATE 0x4d    // fd, length
#define SYS_GETTERM   0x36    // get terminal attributes (TIOCGETA)
#define SYS_SETTERM   0x37    // set terminal attributes (TIOCSETA)

/* Terminal IOCTLs (for raw mode) */
#define TCGETS     0x5401
#define TCSETS     0x5402
#define TIOCGWINSZ 0x5413   // Get window size

/* File Open Flags (for SYS_OPEN) */
#define O_RDONLY    00
#define O_WRONLY    01
#define O_RDWR      02
#define O_CREAT     0100
#define O_TRUNC     01000
#define O_APPEND    02000

/* mmap Protection Flags (prot) */
#define PROT_NONE      0x0
#define PROT_READ      0x1
#define PROT_WRITE     0x2
#define PROT_EXEC      0x4

/* mmap Flags (flags) */
#define MAP_SHARED     0x01
#define MAP_PRIVATE    0x02
#define MAP_FIXED      0x10
#define MAP_ANONYMOUS  0x20    // For anonymous mappings

/* lseek Whence Values */
#define SEEK_SET      0      // Absolute offset
#define SEEK_CUR      1      // Relative to current
#define SEEK_END      2      // Relative to end

/* Terminal IOCTLs */
#define TCGETS     0x5401     // Get terminal attributes
#define TCSETS     0x5402     // Set terminal attributes
#define TIOCGWINSZ 0x5413     // Get window size

/* File Mode Flags (when O_CREAT used) */
#define S_IRWXU     0700      // User read/write/execute
#define S_IRUSR     0400      // User read
#define S_IWUSR     0200      // User write
#define S_IXUSR     0100      // User execute

#endif /* SYSCALLS_64_H */