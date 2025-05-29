#include <stdint.h>  // For uint64_t
#include <stdio.h>

// Let's assume a mythical TLS variable 'my_thread_data_offset' exists at FS +
// 0x10 In a real scenario, this offset would be determined by the linker for
// __thread variables.
#define MY_TLS_OFFSET 0x10

// This will likely panic if FS base is not set up correctly for userland
// as it's not a standard way to access TLS from userland C without __thread.
// This is for demonstration of the ASM syntax only.

// This is the proper way to define TLS in C

__thread int my_thread_specific_int = 123;

int main() {
	int value_from_fs;
	int direct_tls_value;

	// Direct access to a TLS variable defined with __thread (compiler
	// handles FS offset)
	direct_tls_value = my_thread_specific_int;
	printf("Initial direct TLS value: %d\n", direct_tls_value);

	// --- Using inline assembly with FS segment override ---
	// This is for demonstration of the FS: offset syntax.
	// In real code, you'd use __thread variables and let the compiler
	// handle it.

	// On x86-64 Linux, __thread variables usually use FS
	// The offset for `my_thread_specific_int` would be assigned by the
	// linker. For demonstration, let's pretend it's at a fixed offset for
	// `my_thread_specific_int` (In reality, `__thread` variables are
	// accessed via special relocations and sometimes a thread pointer).

	// Let's manually increment a value at a known FS offset
	// This is often used for things like kernel per-CPU data on Linux,
	// or specific structures in Windows user-mode TIB/TEB.
	// For simple userland code, the compiler typically generates more
	// complex TLS access.

	// A more realistic example for FS/GS in userland often involves reading
	// the TCB/TEB pointer itself. On x86-64 Linux, %fs:0 is often the
	// address of the TLS block itself. Let's read from %fs:0 and assume it
	// points to some useful per-thread data.
	uint64_t fs_base_ptr_val;

	__asm__ volatile("movq %%fs:0x0, %0"  // Move 64-bit value from FS:0x0
					      // into fs_base_ptr_val
			 : "=r"(fs_base_ptr_val)  // Output operand, any general
						  // purpose register
			 :                        // No inputs
			 :  // No clobbered registers (movq doesn't affect flags
			    // or other common GPRs)
	);

	printf(
	    "Value at FS:0x0 (likely TLS block base or thread self-pointer): "
	    "0x%llX\n",
	    (unsigned long long)fs_base_ptr_val);

	// Let's try to update the __thread variable *directly* using its likely
	// TLS offset WARNING: This is highly fragile. The actual offset for
	// __thread variables is not guaranteed to be MY_TLS_OFFSET, and TLS
	// access can be more complex than a simple offset. The compiler knows
	// the actual offset and uses complex relocation types. This is just to
	// show the *syntax* of FS:offset.
	// printf(
	//     "Attempting to increment __thread variable via direct FS:offset "
	//     "(fragile!)\n");
	// __asm__ volatile(
	//     "addl $1, %fs:my_thread_specific_int@tpoff"  // Increment the TLS
	// 						 // variable
	//     :  // No explicit outputs (modifying in place)
	//     :  // No explicit inputs
	//     : "memory",
	//       "cc"  // Clobber memory (since we write to it) and condition
	//       codes
	// );

	// printf("After increment via asm: direct TLS value = %d\n",
	//        my_thread_specific_int);  // Should be 124

	return 0;
}