#ifndef __ASM_UTILS_H
#define __ASM_UTILS_H

#ifdef __cplusplus
extern "C" {
#endif


//    FUNCTION    pixels32_unpack
    /*
        R0 = ptr to packed pixels; at least 32 nibbles (16 bytes)
        R1 = ptr to unpacked dest.array (with space for at least 32 bytes)
    */

//    FUNCTION    pixels32_pack
    /*
        R0 = ptr to unpacked pixels; at least 32 bytes (32 sparse pixels, get packed into 16 bytes)
        R1 = ptr to packed dest.array (with space for at least 16 bytes)
    */


    extern const uint32_t* pixels32_pack(const uint32_t* unpacked_src, uint32_t* packed_dest);

    extern const uint32_t* pixels32_unpack(const uint32_t* packed_src, uint32_t* unpacked_dest);

#ifdef __cplusplus
}
#endif

#endif /* __ASM_UTILS_H */
