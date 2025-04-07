
// #include <algorithm>
// #include <cstdarg>
// #include <cstdio>

// using namespace std;

// #define Nil  0


// #include <fcntl.h>
// #include <sys/mman.h>
// void* print_values(int fd) {

//     #define page_size 4096
// char buf[page_size];
//     void *ptr = aligned_alloc(page_size, sizeof(buf));

//     madvise(ptr, page_size, MADV_HUGEPAGE);
// }


// int main() {
    

//     // open a file containing 1024 random integers for reading and writing
//     int fd = open("input.bin", O_RDWR);

//     int *values = (int *)print_values(fd);

//     return 0;
// }