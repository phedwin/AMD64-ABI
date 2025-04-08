## APUE chapter 7: process environment

1.  On an Intel x86 system under Linux, if we execute the program that prints ‘‘hello, world’’
    and do not call exit or return, the termination status of the program — which we can
    examine with the shell—is 13. Why?
2.  Some UNIX system implementations purposely arrange that, when a program is executed,
    location 0 in the data segment is not accessible. Why?
3.  If we allocate an array of longs using calloc, is the array initialized to 0? If we allocate an
    array of pointers using calloc, is the array initialized to null pointers

question #3

OK this is beautiful considering (void \*)0 or just 0 means hey this is NULL/nil.

what calloc does is it tries to zero out the block size u requested so the idea is that in ptr terms 0 is NULL but again in long zero is is something it can be 4 or 8 depending on machine width but the idea is there, if u had char *p = calloc(11, sizeof(char)); that means if u have *p = 'c' then printf(p) is c & it stops also if u had long \*p = calloc(4, sizeof(long)) it prints 0 when dereference the ptr.

```
            char *p = calloc(11, sizeof(char));
            *p = 'c';
            *(p + 1) = 'd'; /* compiler does the arithmetic for us*/
            long *pLong = calloc(4, sizeof(long));
            for (int q = 0; q < 4; q++) {
            	printf("char %c [index]:%d long %ld\n",
            	       p[q] == '\0' ? 'W' : p[q], q, pLong[q]);
            }
            free(p);
            free(pLong);

        terminal

        [211ms][1.x][~/code/AT/xv60]$ make
        char c [index]:0 long 0
        char d [index]:1 long 0
        char W [index]:2 long 0
        char W [index]:3 long 0
        [189ms][1.x][~/code/AT/xv60]$

```

4. Modern implementations don’t perform a complete copy of the parent’s data, stack,
   and heap, since a fork is often followed by an exec. Instead, a technique called
   copy-on-write (COW) is used. These regions are shared by the parent and the child and
   have their protection changed by the kernel to read-only. If either process tries to
   modify these regions, the kernel then makes a copy of that piece of memory only,
   typically a `page` in a virtual memory system. Section 9.2 of Bach [1986] and Sections
   5.6 and 5.7 of McKusick et al. [1996] provide more detail on this feature.
