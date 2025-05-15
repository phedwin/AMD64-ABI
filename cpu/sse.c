/*
• Arguments of
    types(signed and unsigned) _Bool,
    char,
    short,
    int,
    long,
    long long,
    and pointers are in the INTEGER class.

*/
void integer_register(_Bool, unsigned, signed, long, long long);
/*

• Arguments of types _Float16,
 float,
 double,
 _Decimal32,
 _Decimal64 and __m64 are in class SSE.

• Arguments of types __float128,
 _Decimal128 and __m128 are split into two halves.The least
 significant ones belong to class SSE,
 the most significant one to class SSEUP.


• Arguments of type __m256 are split into four eightbyte chunks
     .The least significant one belongs to class SSE and all the others
	 to class SSEUP
     .
• Arguments of type __m512 are split into eight eightbyte chunks
     .The least significant one belongs to class SSE and all the others
	 to class SSEUP.
• The 64 -
 bit mantissa of arguments of type long double belongs to class X87,
 the 16 - bit exponent plus 6 bytes of padding belongs to class X87UP.
• Arguments of type __int128 offer the same operations as INTEGERs,
 yet they do not fit into one general purpose register but require two
     registers.For classification purposes __int128 is treated as if it were
	 implemented as : typedef struct {
     long low, high;
} __int128;
with the exception that arguments of type __int128 that are stored in memory
	 must be aligned on a 16 -
     byte boundary.
• Arguments of type _BitInt(N) with N
 <= 64 are in the INTEGER class.
• Arguments of type _BitInt(N) with N >
 64 are classified as if they were imple
     - mented as struct of 64 - bit integer fields.
• Arguments of complex T where T is one of the types _Float16,
 float,
 double or __float128 are treated as if they are implemented as
*/
void add_sse_reg(float x,
		 double m,
		 long double q,
		 float mx,
		 int pad_t, /*integer register*/
		 long double *results /*memory?*/) {
	int _ = pad_t;
	*results = x + m + q + mx;
}

#define DEBUG
void __xmm0(float x,
	    double m,
	    long double q,
	    float mx,
	    long double *results,
	    float a,
	    double b,
	    long double c,
	    float d,
	    long double *e,
	    float f,
	    double g,
	    long double h,
	    float i,
	    long double *j,
	    float k,
	    double l,
	    long double n,
	    float o,
	    long double *pa,
	    float xa,
	    double ma,
	    long double z,
	    float xy,
	    long double *w,
	    float v,
	    double t,
	    long double s,
	    float r,
	    long double *qd);
