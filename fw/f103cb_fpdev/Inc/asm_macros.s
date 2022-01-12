    .syntax     unified
    .thumb


    .macro      FUNCTION name
    .global     \name
    .func       \name, \name
    .type       \name, %function
    .thumb_func
\name\():
    .endm


    .macro      ENDFUNC name
    .pool
    .size       \name, . - \name
    .endfunc
    .endm


    .macro      check_bits_t bits
    lsrs    r2, r1, #\bits      /* [1] test next N bits. This updates the Z flag */
    beq     skip\@              /* [1/3] if all the bits were zero, jump forward */
    subs    r0, r0, #\bits      /* [1] otherwise decrement our counter (the result) */
    mov     r1, r2              /* [1] and keep the new value */
skip\@:
    .endm                       /* (4) this macro will always use 4 clock cycles */


    .macro      check_bits_l bits
    lsls    r2, r1, #32-\bits   /* [1] test lowest 32-N bits. This updates the Z flag */
    beq     skip\@              /* [1/3] if all the bits were zero, jump forward */
    subs    r0, r0, #\bits      /* [1] otherwise decrement our counter (the result) */
    mov     r1, r2              /* [1] and keep the new value */
skip\@:
    .endm                       /* (4) this macro will always use 4 clock cycles */


    .macro      _clz rD, rS
    /* count leading zeroes in rS, result is in rD. Destroys r1 and r2 */
    movs    r1, \rS             /* [1] transfer word to count to r1 */
    movs    r0, #32             /* [1] we have 32 bits in a 32-bit word, remember ? */
    check_bits_t    16          /* [4] test first 16 bits */
    check_bits_t    8           /* [4] test bits 31..24 or 15..8 */
    check_bits_t    4           /* [4] test bits 31..28, 23..20, 15..12 or 7..4 */
    check_bits_t    2           /* [4] test bits 31..30, 27..26, 23..22, 19..18, 15..14, 11..10, 7..6 or 3..2 */
    check_bits_t    1           /* [4] test bits 31, 29, 27, 25, 23, 21, 19, 17, 15, 13, 11, 9, 7, 5, 3 or 1 */
    subs            \rD, r0, r1 /* [1] subtract the value of the last bit from the result */
    .endm                       /* (26) this macro always uses 26 clock cycles */


    .macro      _clo rD, rS
    /* count leading ones in rS, result is in rD. Destroys r1 and r2 */
    mvns    \rS, \rS            /* [1] flip all bits in r0 */
    _clz    \rD. \rS            /* [14] count the leading zero bits (which were actually ones) */
    .endm

/* TODO: Test these... */
    .macro      _ctz rD, rS
    /* count leading zeroes in rS, result is in rD. Destroys r1 and r2 */
    movs    r1, \rS             /* [1] transfer word to count to r1 */
    movs    r0, #32             /* [1] we have 32 bits in a 32-bit word, remember ? */
    check_bits_l    16          /* [4] test first 16 bits */
    check_bits_l    8           /* [4] test bits 31..24 or 15..8 */
    check_bits_l    4           /* [4] test bits 31..28, 23..20, 15..12 or 7..4 */
    check_bits_l    2           /* [4] test bits 31..30, 27..26, 23..22, 19..18, 15..14, 11..10, 7..6 or 3..2 */
    check_bits_l    1           /* [4] test bits 31, 29, 27, 25, 23, 21, 19, 17, 15, 13, 11, 9, 7, 5, 3 or 1 */
    subs            \rD, r0, r1 /* [1] subtract the value of the last bit from the result */
    .endm                       /* (26) this macro always uses 26 clock cycles */


/* TODO: Test these... */
    .macro      _cto rD, rS
    /* count trailing ones in rS, result is in rD. Destroys r1 and r2 */
    mvns    \rS, \rS            /* [1] flip all bits in r0 */
    _ctz    \rD. \rS            /* [14] count the leading zero bits (which were actually ones) */
    .endm


    .macro      _qclz           /* this macro will destroy r1 and r2 */
    movs    r1, #24             /* [1] we start with 24-topmost bits (8 lowest from LUT later) */
    lsrs    r2, r0, #16         /* [1] test high 16 bits */
    beq     skip16\@            /* [1/3] if zero, jump forward */
    subs    r1, r1, #16         /* [1] otherwise decrement our counter (result) */
    mov     r0, r2              /* [1] and keep new value */
skip16\@:
    lsrs    r2, r0, #8          /* [1] test bits 31..23 or 15..8 */
    beq     skip8\@             /* [1/3] if zero, jump forward */
    subs    r1, r1, #8          /* [1] otherwise decrement our counter (result) */
    mov     r0, r2              /* [1] and keep new value */
skip8\@:
    ldr     r2, =_qclz_table    /* [2] point to our look-up table */
    ldrb    r0, [r2, r0]        /* [2] convert byte to a bit-count between 0 and 8 */
    adds    r0, r0, r1          /* [1] add the number of bits we've already counted (8, 16 or 24) */
    .endm                       /* (14) this macro always uses 14 clock cycles */

    .macro      rep_byte byte,count
    .rept   \count
    .byte   \byte
    .endr
    .endm

    .macro      _qclz_table
_qclz_table:
    rep_byte    8, 1            /* table entry 0 */
    rep_byte    7, 1            /* table entry 1 */
    rep_byte    6, 2            /* table entry 2 */
    rep_byte    5, 4            /* table entry 3 */
    rep_byte    4, 8            /* table entry 4 */
    rep_byte    3, 16           /* table entry 5 */
    rep_byte    2, 32           /* table entry 6 */
    rep_byte    1, 64           /* table entry 7 */
    rep_byte    0, 128          /* table entry 8 */
    .endm


    .macro      _qclo           /* this macro will destroy r1 and r2 */
    mvns    r0,r0               /* [1] flip all bits in r0 */
    _qclz                       /* [14] count the leading zero bits (which were actually ones) */
    .endm

