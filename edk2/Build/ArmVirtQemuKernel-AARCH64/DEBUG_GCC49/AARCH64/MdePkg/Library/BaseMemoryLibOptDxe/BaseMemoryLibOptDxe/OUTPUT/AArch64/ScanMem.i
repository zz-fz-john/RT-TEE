# 1 "/home/zrz0517/study/TEE/RT-TEE/edk2/MdePkg/Library/BaseMemoryLibOptDxe/AArch64/ScanMem.S"
# 1 "<built-in>"
# 1 "<命令行>"
# 31 "<命令行>"
# 1 "/home/zrz0517/study/TEE/RT-TEE/toolchains/aarch64/aarch64-linux-gnu/libc/usr/include/stdc-predef.h" 1 3 4
# 32 "<命令行>" 2
# 1 "/home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/AARCH64/MdePkg/Library/BaseMemoryLibOptDxe/BaseMemoryLibOptDxe/DEBUG/AutoGen.h" 1
# 16 "/home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/AARCH64/MdePkg/Library/BaseMemoryLibOptDxe/BaseMemoryLibOptDxe/DEBUG/AutoGen.h"
# 1 "/home/zrz0517/study/TEE/RT-TEE/edk2/MdePkg/Include/Base.h" 1
# 28 "/home/zrz0517/study/TEE/RT-TEE/edk2/MdePkg/Include/Base.h"
# 1 "/home/zrz0517/study/TEE/RT-TEE/edk2/MdePkg/Include/AArch64/ProcessorBind.h" 1
# 100 "/home/zrz0517/study/TEE/RT-TEE/edk2/MdePkg/Include/AArch64/ProcessorBind.h"
  typedef unsigned long long UINT64;
  typedef long long INT64;
  typedef unsigned int UINT32;
  typedef int INT32;
  typedef unsigned short UINT16;
  typedef unsigned short CHAR16;
  typedef short INT16;
  typedef unsigned char BOOLEAN;
  typedef unsigned char UINT8;
  typedef char CHAR8;
  typedef signed char INT8;







typedef UINT64 UINTN;





typedef INT64 INTN;
# 29 "/home/zrz0517/study/TEE/RT-TEE/edk2/MdePkg/Include/Base.h" 2
# 54 "/home/zrz0517/study/TEE/RT-TEE/edk2/MdePkg/Include/Base.h"
extern UINT8 _VerifySizeofBOOLEAN[(sizeof(BOOLEAN) == (1)) / (sizeof(BOOLEAN) == (1))];
extern UINT8 _VerifySizeofINT8[(sizeof(INT8) == (1)) / (sizeof(INT8) == (1))];
extern UINT8 _VerifySizeofUINT8[(sizeof(UINT8) == (1)) / (sizeof(UINT8) == (1))];
extern UINT8 _VerifySizeofINT16[(sizeof(INT16) == (2)) / (sizeof(INT16) == (2))];
extern UINT8 _VerifySizeofUINT16[(sizeof(UINT16) == (2)) / (sizeof(UINT16) == (2))];
extern UINT8 _VerifySizeofINT32[(sizeof(INT32) == (4)) / (sizeof(INT32) == (4))];
extern UINT8 _VerifySizeofUINT32[(sizeof(UINT32) == (4)) / (sizeof(UINT32) == (4))];
extern UINT8 _VerifySizeofINT64[(sizeof(INT64) == (8)) / (sizeof(INT64) == (8))];
extern UINT8 _VerifySizeofUINT64[(sizeof(UINT64) == (8)) / (sizeof(UINT64) == (8))];
extern UINT8 _VerifySizeofCHAR8[(sizeof(CHAR8) == (1)) / (sizeof(CHAR8) == (1))];
extern UINT8 _VerifySizeofCHAR16[(sizeof(CHAR16) == (2)) / (sizeof(CHAR16) == (2))];
# 73 "/home/zrz0517/study/TEE/RT-TEE/edk2/MdePkg/Include/Base.h"
typedef enum {
  __VerifyUint8EnumValue = 0xff
} __VERIFY_UINT8_ENUM_SIZE;

typedef enum {
  __VerifyUint16EnumValue = 0xffff
} __VERIFY_UINT16_ENUM_SIZE;

typedef enum {
  __VerifyUint32EnumValue = 0xffffffff
} __VERIFY_UINT32_ENUM_SIZE;

extern UINT8 _VerifySizeof__VERIFY_UINT8_ENUM_SIZE[(sizeof(__VERIFY_UINT8_ENUM_SIZE) == (4)) / (sizeof(__VERIFY_UINT8_ENUM_SIZE) == (4))];
extern UINT8 _VerifySizeof__VERIFY_UINT16_ENUM_SIZE[(sizeof(__VERIFY_UINT16_ENUM_SIZE) == (4)) / (sizeof(__VERIFY_UINT16_ENUM_SIZE) == (4))];
extern UINT8 _VerifySizeof__VERIFY_UINT32_ENUM_SIZE[(sizeof(__VERIFY_UINT32_ENUM_SIZE) == (4)) / (sizeof(__VERIFY_UINT32_ENUM_SIZE) == (4))];
# 281 "/home/zrz0517/study/TEE/RT-TEE/edk2/MdePkg/Include/Base.h"
typedef struct {
  UINT32 Data1;
  UINT16 Data2;
  UINT16 Data3;
  UINT8 Data4[8];
} GUID;




typedef struct {
  UINT8 Addr[4];
} IPv4_ADDRESS;




typedef struct {
  UINT8 Addr[16];
} IPv6_ADDRESS;




typedef UINT64 PHYSICAL_ADDRESS;




typedef struct _LIST_ENTRY LIST_ENTRY;




struct _LIST_ENTRY {
  LIST_ENTRY *ForwardLink;
  LIST_ENTRY *BackLink;
};
# 716 "/home/zrz0517/study/TEE/RT-TEE/edk2/MdePkg/Include/Base.h"
typedef __builtin_va_list VA_LIST;
# 801 "/home/zrz0517/study/TEE/RT-TEE/edk2/MdePkg/Include/Base.h"
typedef UINTN *BASE_LIST;
# 965 "/home/zrz0517/study/TEE/RT-TEE/edk2/MdePkg/Include/Base.h"
typedef UINTN RETURN_STATUS;
# 1281 "/home/zrz0517/study/TEE/RT-TEE/edk2/MdePkg/Include/Base.h"
  void * __builtin_return_address (unsigned int level);
# 17 "/home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/AARCH64/MdePkg/Library/BaseMemoryLibOptDxe/BaseMemoryLibOptDxe/DEBUG/AutoGen.h" 2

extern GUID gEfiCallerIdGuid;
extern CHAR8 *gEfiCallerBaseName;



extern UINT64 _gPcd_SkuId_Array[];
# 32 "<命令行>" 2
# 1 "/home/zrz0517/study/TEE/RT-TEE/edk2/MdePkg/Library/BaseMemoryLibOptDxe/AArch64/ScanMem.S"
# 68 "/home/zrz0517/study/TEE/RT-TEE/edk2/MdePkg/Library/BaseMemoryLibOptDxe/AArch64/ScanMem.S"
.globl InternalMemScanMem8
InternalMemScanMem8:

    cbz x1, .Lzero_length




    mov w5, #0x0401
    movk w5, #0x4010, lsl #16
    dup v0.16b, w2

    bic x3, x0, #31
    dup v5.4s, w5
    ands x9, x0, #31
    and x10, x1, #31
    b.eq .Lloop







    ld1 {v1.16b, v2.16b}, [x3], #32
    sub x4, x9, #32
    adds x1, x1, x4
    cmeq v3.16b, v1.16b, v0.16b
    cmeq v4.16b, v2.16b, v0.16b
    and v3.16b, v3.16b, v5.16b
    and v4.16b, v4.16b, v5.16b
    addp v6.16b, v3.16b, v4.16b
    addp v6.16b, v6.16b, v6.16b
    mov x6, v6.d[0]

    lsl x4, x9, #1
    lsr x6, x6, x4
    lsl x6, x6, x4

    b.ls .Lmasklast

    cbnz x6, .Ltail

.Lloop:
    ld1 {v1.16b, v2.16b}, [x3], #32
    subs x1, x1, #32
    cmeq v3.16b, v1.16b, v0.16b
    cmeq v4.16b, v2.16b, v0.16b

    b.ls .Lend

    orr v6.16b, v3.16b, v4.16b
    addp v6.2d, v6.2d, v6.2d
    mov x6, v6.d[0]

    cbz x6, .Lloop

.Lend:

    and v3.16b, v3.16b, v5.16b
    and v4.16b, v4.16b, v5.16b
    addp v6.16b, v3.16b, v4.16b
    addp v6.16b, v6.16b, v6.16b
    mov x6, v6.d[0]

    b.hi .Ltail

.Lmasklast:

    add x4, x10, x9
    and x4, x4, #31
    sub x4, x4, #32
    neg x4, x4, lsl #1
    lsl x6, x6, x4
    lsr x6, x6, x4

.Ltail:

    rbit x6, x6

    sub x3, x3, #32

    cmp x6, #0

    clz x6, x6

    add x0, x3, x6, lsr #1

    csel x0, xzr, x0, eq
    ret

.Lzero_length:
    mov x0, #0
    ret
