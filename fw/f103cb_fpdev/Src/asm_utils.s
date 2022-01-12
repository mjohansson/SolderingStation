    .text
    .syntax unified
    .thumb

    #include "asm_macros.s"


    .macro  _PACK_WORD_SAT  rD, rS, rT
    /*
        Packs lower nibbles in <rT>:<rS> to bytes in <rD>.
        Saturation used to truncate nibble values into range (0-15).
        Destroys : r2 and r3.
        NOTE : Only works on Cortex-M4 or greater!
    */
    // Nibbles 3-0
    mov     r2, #0xF0F0F0F0         // (force saturation if upper nibbles != 0)
    uqadd8  \rS, \rS, r2            // pad to possible saturation (rS: FB F2 FA F1, or 0xFF for bytes that saturate)
    uqsub8  \rS, \rS, r2            // clear upper nibbles of each byte (rS: 0B 02 0A 01, or 0x0F if byte saturated)
    orr     r2, \rS, \rS, LSR #4    // r2: 0B B2 2A A1
    uxtb    r3, r2, ROR #16         // r3: 00 00 00 B2
    uxtb    r2, r2                  // r2: 00 00 00 A1
    orr     r2, r2, r3, LSL #8      // r2: 00 00 B2 A1
    // Nibbles 4-7
    mov     r3, #0xF0F0F0F0
    uqadd8  \rT, \rT, r3            // (saturate bytes whos upper nibble not clean)
    uqsub8  \rT, \rT, r3            // remove upper nibble padding
    orr     r3, \rT, \rT, LSR #4    // r3: 0D D4 4C C3
    and     r3, r3, #0x00FF00FF     // r3: 00 D4 00 C3
    orr     r3, r3, r3, LSR #8      // r3: 00 D4 D4 C3

    orr     \rD, r2, r3, LSL #16    // r2: D4 C3 B2 A1
    .endm



    .macro  _PACK_WORD  rD, rS, rT
    /*
        Packs lower nibbles in <rT>:<rS> to bytes in <rD>.
        Destroys : r2 and r3.
        Should work on both C-M3 and C-M4.
    */
    // Nibbles 3-0
    and     \rS, \rS, #0x0F0F0F0F   // ensure clean nibbles
    orr     r2, \rS, \rS, LSR #4    // r2: 0B B2 2A A1
    uxtb    r3, r2, ROR #16         // r3: 00 00 00 B2
    uxtb    r2, r2                  // r2: 00 00 00 A1
    orr     r2, r2, r3, LSL #8      // r2: 00 00 B2 A1
    // Nibbles 4-7
    and     \rT, \rT, #0x0F0F0F0F   // ensure clean nibbles
    orr     r3, \rT, \rT, LSR #4    // r3: 0D D4 4C C3
    and     r3, r3, #0x00FF00FF     // r3: 00 D4 00 C3
    orr     r3, r3, r3, LSR #8      // r3: 00 D4 D4 C3

    orr     \rD, r2, r3, LSL #16    // r2: D4 C3 B2 A1
    .endm

    FUNCTION    pixels32_pack
    /*
        R0 = ptr to unpacked pixels; at least 32 bytes (32 sparse pixels, get packed into 16 bytes)
        R1 = ptr to packed dest.array (with space for at least 16 bytes)

        Return:  R0 = ptr past end of unpacked pixel buffer
                (R1 = ptr past end of packed pixel buffer)
    */
    push    {r4 - r7}
    //sub     sp, sp, #32

    // Load first 16 bytes
    ldmia   r0!, {r4 - r7}  // R4: 0B 02 0A 01;  R5: 0D 04 0C 03;  R6: 0F 06 0E 05;  R7: 0H 08 0G 07

    _PACK_WORD  r4, r4, r5
    _PACK_WORD  r5, r6, r7
    stmia       r1!, {r4 - r5}  // D4C3B2A1, H8G7F6E5

    // Load next 16 bytes
    ldmia   r0!, {r4 - r7}

    _PACK_WORD  r4, r4, r5
    _PACK_WORD  r5, r6, r7
    stmia       r1!, {r4 - r5}

    //add     sp, sp, #32
    pop     {r4 - r7}
    bx      lr
    ENDFUNC pixels32_pack


    .macro  _UNPACK_WORD rS
    /*
        Unpacks nibbles in <rS> to bytes in r3:r2.
        Destroys : r2, r3 and r4.
        Should work on both C-M3 and C-M4.
    */
    // Nibbles 0-3 -> r2
    lsl     r2, \rS, #16    // r2: B2 A1 00 00
    lsr     r2, r2, #8      // r2: 00 B2 A1 00
    rev16   r3, r2          // r3: B2 00 00 A1
    orr     r2, r3          // r2: B2 B2 A1 A1
    and     r3, r2, #0xF000F000 // r3: B0 00 A0 00
    and     r2, r2, #0x000F000F // r2: 00 02 00 01
    orr     r2, r2, r3, LSR #4  // r2: 0B 02 0A 01
    // Nibbles 4-7 -> r3
    lsr     r3, \rS, #16    // r3: 00 00 D4 C3
    lsl     r3, r3, #8      // r3: 00 D4 C3 00
    rev16   r4, r3          // r4: D4 00 00 C3
    orr     r3, r4          // r3: D4 D4 C3 C3
    and     r4, r3, #0xF000F000 // r4: D0 00 C0 00
    and     r3, r3, #0x000F000F // r3: 00 04 00 03
    orr     r3, r3, r4, LSR #4  // r3: 0D 04 0C 03
    .endm

    FUNCTION    pixels32_unpack
    /*
        R0 = ptr to packed pixels; at least 32 nibbles (16 bytes)
        R1 = ptr to unpacked dest.array (with space for at least 32 bytes)

        Return:  R0 = ptr past end of packed pixel buffer
                (R1 = ptr past end of unpacked pixel buffer)
    */
    push    {r4 - r7}

    // Load 16 bytes (32 nibbles)
    ldmia   r0!, {r4 - r7}  // R4: D4 C3 B2 A1;  R5: H8 G7 F6 E5; ... ...

    _UNPACK_WORD    r4
    stmia   r1!, {r2 - r3}  // -> 0B020A01, 0D040C03
    _UNPACK_WORD    r5
    stmia   r1!, {r2 - r3}
    _UNPACK_WORD    r6
    stmia   r1!, {r2 - r3}
    _UNPACK_WORD    r7
    stmia   r1!, {r2 - r3}

    pop     {r4 - r7}
    bx      lr
    ENDFUNC pixels32_unpack


/*  Send string through ITM debug port
Input:  R0 = addr of start-of-string, NUL-terminated
Return: void
*/
    FUNCTION    itm_Puts
    push    {r4, lr}
    movs    r4, r0
putsLoop:
    ldrb    r0, [r4],#1
/*    adds    r4, #1 */
    cbz     r0, putsLoopDone
    bl      itm_Putc
    b       putsLoop
putsLoopDone:
    pop     {r4, pc}
    ENDFUNC itm_Puts


    .equ    ITM_BASE,       0xE0000000
    .equ    ITM_PORT0,      (ITM_BASE + 0x000)
    .equ    ITM_TER,        (ITM_BASE + 0xE00)
    .equ    ITM_TCR,        (ITM_BASE + 0xE80)

/*  Send a character via ITM, if enabled
Input:  R0 = byte character to transmit
Return: void
*/
    FUNCTION    itm_Putc
    ldr     r1, =ITM_TCR
    ldr     r2, [r1]
    movs    r3, #1      /* ITMENA bit */
    tst     r2, r3
    beq     putcExit
    ldr     r1, =ITM_TER
    ldr     r2, [r1]    /* Port 0 enabled ? */
    tst     r2, r3
    beq     putcExit
    ldr     r1, =ITM_PORT0
putcWait:
    ldr     r2, [r1]
    cmp     r2, #0
    beq     putcWait
    strb    r0, [r1]    /* Write character */
putcExit:
    bx      lr
    ENDFUNC itm_Putc


/*  Output register value in hex
Input:  R0 = value to display
Return: void
*/
    FUNCTION    itm_PutHex
    push    {r4 - r6, lr}
    mov     r4, r0
    mov     r0, #'0'
    bl      itm_Putc
    mov     r0, #'x'
    bl      itm_Putc
    mov     r5, #8              /* nibbles cnt */
    mov     r6, #28             /* shift amount */
putHexLoop:
    ror     r4, r6              /* ROL(4) = ROR(28) - move MSB nibble to LSBs */
    and     r0, r4, #0xF
    cmp     r0, #0x0A
    ite     ge
    addge   r0, #55             /* 'A' - 'F' */
    addlt   r0, #48             /* '0' - '9' */
    bl      itm_Putc
    subs    r5, #1
    bne     putHexLoop
    pop     {r4 - r6, pc}
    ENDFUNC itm_PutHex


/*  Display decimal value
Input:  R0 = value to display
Return: void
    32-bits value -> max 11 chars incl. terminating zero.
    Working registers:
    R0 - input value
    R1 - dividend (10)
    R2 - divide result
    R3 - reminder
    R12 - text buffer pointer
*/
    FUNCTION    itm_PutDec
    push    {r4, lr}
    mov     r12, sp
    sub     sp, sp, #12     /* 12 byte temp. text-buffer on stack */
    movs    r1, #0
    strb    r1, [r12, #-1]!     /* NULL-terminator at end of buffer, pre-indexed */
    movs    r1, #10
putDecLoop:
    udiv    r2, r0, r1          // r2 = r0 / 10 = result
    mul     r4, r2, r1          // r4 = r2 * 10 = value - remainder
    sub     r3, r0, r4          // r3 = r0 - (r0/10 * 10) = remainder
    adds    r3, #48             // ASCII digit, '0' - '9'
    strb    r3, [r12, #-1]!     // pre-decrement & store byte
    movs    r0, r2              // r0 = divide result
    bne     putDecLoop          // (breaks early if R0 = 0 - no more digits!)

    mov     r0, r12
    bl      itm_Puts
    add     sp, sp, #12
    pop     {r4, pc}
    ENDFUNC itm_PutDec


    FUNCTION    asm_delay
    ldr     r0, =0x01000000
delayLoop:
    subs    r0, r0, #1
    bne     delayLoop
    bx      lr
    ENDFUNC asm_delay

    .end
