/*
struct_stack_copy:
	pushq   %rbp
	movq    %rsp, %rbp
	movl    $10, -12(%rbp)
	movl    $50, -8(%rbp)
	movl    $40, -4(%rbp)
	movl    -4(%rbp), %eax
	movl    %eax, -24(%rbp)
	movq    -12(%rbp), %rax
	movq    %rax, -32(%rbp)
	movq    -32(%rbp), %rax
	movl    -24(%rbp), %edx
	popq    %rbp
	retq
*/

struct Me {
	int p, x, q;
};

struct Me struct_stack_copy() {
	struct Me m;
	m.p = 10, m.x = 50, m.q = 40;

	return m; /* stack copy*/
}