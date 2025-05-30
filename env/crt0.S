#
#	NMH's Simple C Compiler, 2011,2012,2014,2022
#	C runtime module
#	Stand-alone version
#

#	FreeBSD voodoo magic

	.section .note.ABI-tag,"a",@note
	.align	4
abitag: .long	8, 4, 1
	.string	"FreeBSD"
	.long	802000
	.data
	.p2align 2

	.data
	.globl	Cenviron
Cenviron:
	.long	0

	.text
	.globl	_start
_start: 
    leal	4(%esp),%esi	# argv
	movl	0(%esp),%ecx	# argc
	movl	%ecx,%eax	# environ = &argv[argc+1]
	incl	%eax
	shll	$2,%eax
	addl	%esi,%eax
	movl	%eax,Cenviron
	pushl	%ecx
	pushl	%esi
	pushl	$2		# __argc
	call	C_init
	call	Cmain
	addl	$12,%esp
	pushl	%eax
	pushl	$1
x:	call	Cexit
	xorl	%ebx,%ebx
	divl	%ebx
	jmp	x

# internal switch(expr) routine
# %esi = switch table, %eax = expr

	.globl	switch
switch:	pushl	%esi
	movl	%edx,%esi
	movl	%eax,%ebx
	cld
	lodsl
	movl	%eax,%ecx
next:	lodsl
	movl	%eax,%edx
	lodsl
	cmpl	%edx,%ebx
	jnz	no
	popl	%esi
	jmp	*%eax
no:	loop	next
	lodsl
	popl	%esi
	jmp	*%eax

# int setjmp(jmp_buf env);

	.globl	Csetjmp
Csetjmp:
	movl	8(%esp),%edx
	movl	%esp,(%edx)
	addl	$4,(%edx)
	movl	%ebp,4(%edx)
	movl	(%esp),%eax
	movl	%eax,8(%edx)
	xorl	%eax,%eax
	ret

# void longjmp(jmp_buf env, int v);

	.globl	Clongjmp
Clongjmp:
	movl	8(%esp),%eax	# v
	orl	%eax,%eax
	jne	vok
	incl	%eax
vok:	movl	12(%esp),%edx	# env
	movl	(%edx),%esp
	movl	4(%edx),%ebp
	movl	8(%edx),%edx
	jmp	*%edx

# int _exit(int rc);

	.globl	C_exit
C_exit:	pushl	8(%esp)		# rc
	pushl	$0
	movl	$1,%eax		# SYS__exit
	int	$0x80
	addl	$8,%esp
	ret

# int sbrk(int size);

	.data
	.extern	end
curbrk:	.long	end

	.text
	.globl	Csbrk
Csbrk:	movl	curbrk,%eax
	addl	8(%esp),%eax	# size
	pushl	%eax
	pushl	%eax
	movl	$17,%eax	# SYS_break
	int	$0x80
	jnc	brkok
	addl	$8,%esp
	movl	$-1,%eax
	ret
brkok:	addl	$8,%esp
	movl	curbrk,%eax
	movl	8(%esp),%ebx	# size
	addl	%ebx,curbrk
	ret

# int write(int fd, char *buf, int len);

	.globl	Cwrite
Cwrite:
	pushl	8(%esp)		# len
	pushl	16(%esp)	# buf
	pushl	24(%esp)	# fd
	pushl	$0
	movl	$4,%eax		# SYS_write
	int	$0x80
	jnc	wrtok 
	negl	%eax 
wrtok:	addl	$16,%esp
	ret

# int read(int fd, char *buf, int len);

	.globl	Cread
Cread:
	pushl	8(%esp)		# len
	pushl	16(%esp)	# buf
	pushl	24(%esp)	# fd
	pushl	$0
	movl	$3,%eax		# SYS_read
	int	$0x80
	jnc	rdtok 
	negl	%eax 
rdtok:	addl	$16,%esp
	ret

# int lseek(int fd, int pos, int how);

	.globl	Clseek
Clseek:
	pushl	8(%esp)		# how
	movl	16(%esp),%eax	# pos
	cdq
	pushl	%edx		# off_t, high word
	pushl	%eax		# off_t, low word
	pushl	28(%esp)	# fd
	pushl	$0
	movl	$478,%eax	# SYS_lseek
	int	$0x80
	jnc	lsok
	negl	%eax
lsok:	addl	$20,%esp
	ret

# int creat(char *path, int perm);

	.globl	Ccreat
Ccreat:
	pushl	8(%esp)		# perm
	pushl	$0x601		# O_CREAT | O_TRUNC | O_WRONLY
	pushl	20(%esp)	# path
	pushl	$0
	movl	$5,%eax		# SYS_open
	int	$0x80
	jnc	crtok
	negl	%eax
crtok:	addl	$16,%esp
	ret

# int open(char *path, int flags);

	.globl	Copen
Copen:	pushl	8(%esp)		# flags
	pushl	16(%esp)	# path
	pushl	$0
	movl	$5,%eax		# SYS_open
	int	$0x80
	jnc	opnok
	negl	%eax
opnok:	addl	$12,%esp
	ret

# int close(int fd);

	.globl	Cclose
Cclose:
	pushl	8(%esp)		# fd
	pushl	$0
	movl	$6,%eax		# SYS_close
	int	$0x80
	jnc	clsok
	negl	%eax
clsok:	addl	$8,%esp
	ret

# int unlink(char *path);

	.globl	Cunlink
Cunlink:
	pushl	8(%esp)		# path
	pushl	$0
	movl	$10,%eax	# SYS_unlink
	int	$0x80
	jnc	unlok
	negl	%eax
unlok:	addl	$8,%esp
	ret

# int rename(char *old, char *new);

	.globl	Crename
Crename:
	pushl	8(%esp)		# new
	pushl	16(%esp)	# old
	pushl	$0
	movl	$128,%eax	# SYS_rename
	int	$0x80
	jnc	renok
	negl	%eax
renok:	addl	$12,%esp
	ret

# int fork(void);

	.globl	Cfork
Cfork:	pushl	$0
	movl	$2,%eax		# SYS_fork
	int	$0x80
	jnc	frkok
	negl	%eax
frkok:	addl	$4,%esp
	ret

# int wait(int *rc);

	.globl	Cwait
Cwait:	pushl	$0		# rusage
	pushl	$0		# options
	pushl	16(%esp)	# rc
	pushl	$-1		# wpid
	pushl	$0
	movl	$7,%eax		# SYS_wait4
	int	$0x80
	jnc	watok
	negl	%eax
watok:	addl	$20,%esp
	ret

# int execve(char *path, char *argv[], char *envp[]);

	.globl	Cexecve
Cexecve:
	pushl	8(%esp)		# envp
	pushl	16(%esp)	# argv
	pushl	24(%esp)	# path
	pushl	$0
	movl	$59,%eax	# SYS_execve
	int	$0x80
	jnc	excok
	negl	%eax
excok:	addl	$16,%esp
	ret

# int _time(void);

	.globl	C_time
C_time:	subl	$16,%esp
	pushl	%esp		# struct timespec
	pushl	$0		# CLOCK_REALTIME
	pushl	$0
	movl	$232,%eax	# SYS_clock_gettime
	int	$0x80
	jnc	timok
	negl	%eax
	addl	$28,%esp
	ret
timok:	movl	12(%esp),%eax
	addl	$28,%esp
	ret

# int raise(int sig);

	.globl	Craise
Craise:
	pushl	$0
	movl	$20,%eax	# SYS_getpid
	int	$0x80
	addl	$4,%esp
	pushl	8(%esp)		# sig
	pushl	%eax
	pushl	%eax
	movl	$37,%eax	# SYS_kill
	int	$0x80
	jnc	rasok
	negl	%eax
rasok:	addl	$12,%esp
	ret

# int signal(int sig, int (*fn)());
#
#	.globl	Csignal
# Csignal:
#	pushl	8(%esp)
#	pushl	16(%esp)
#	call	signal
#	addl	$8,%esp
#	ret
