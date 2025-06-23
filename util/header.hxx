#define LOCAL(m) m


    /* sys */
    .equ SYS_OPEN, 2
    .equ SYS_READ, 0
    .equ SYS_WRITE, 1
    .equ SYS_CLOSE, 3
    .equ SYS_EXIT, 60

    /* file access mode flags */
    .equ O_RDONLY, 0     
    .equ O_WRONLY, 1    
    .equ O_RDWR, 2

    /* file creation/status flags (often ORed with access modes) */
    .equ O_CREAT, 64
    .equ O_TRUNC, 512
    .equ O_APPEND, 1024   
    .equ O_EXCL, 128
    .equ O_CLOEXEC, 0x80000

    /* ---- */
    .equ STDIN_FILENO, 0  
    .equ STDOUT_FILENO, 1 
    .equ STDERR_FILENO, 2 

    /* Error */
    .equ EPERM, 1          
    .equ ENOENT, 2         
    .equ EIO, 5            
    .equ EBADF, 9
    .equ EACCES, 13       
    .equ EEXIST, 17       
    .equ EINVAL, 22       