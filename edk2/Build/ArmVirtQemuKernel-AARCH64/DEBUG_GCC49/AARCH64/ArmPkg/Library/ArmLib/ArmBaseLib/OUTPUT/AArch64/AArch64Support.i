# 1 "/home/zrz0517/study/TEE/RT-TEE/edk2/ArmPkg/Library/ArmLib/AArch64/AArch64Support.S"
# 1 "<built-in>"
# 1 "<命令行>"
# 31 "<命令行>"
# 1 "/home/zrz0517/study/TEE/RT-TEE/toolchains/aarch64/aarch64-linux-gnu/libc/usr/include/stdc-predef.h" 1 3 4
# 32 "<命令行>" 2
# 1 "/home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/AARCH64/ArmPkg/Library/ArmLib/ArmBaseLib/DEBUG/AutoGen.h" 1
# 16 "/home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/AARCH64/ArmPkg/Library/ArmLib/ArmBaseLib/DEBUG/AutoGen.h"
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
# 17 "/home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/AARCH64/ArmPkg/Library/ArmLib/ArmBaseLib/DEBUG/AutoGen.h" 2

extern GUID gEfiCallerIdGuid;
extern CHAR8 *gEfiCallerBaseName;



extern GUID gEfiCpuArchProtocolGuid;


extern UINT64 _gPcd_SkuId_Array[];
# 32 "<命令行>" 2
# 1 "/home/zrz0517/study/TEE/RT-TEE/edk2/ArmPkg/Library/ArmLib/AArch64/AArch64Support.S"
#------------------------------------------------------------------------------

# Copyright (c) 2008 - 2010, Apple Inc. All rights reserved.<BR>
# Copyright (c) 2011 - 2017, ARM Limited. All rights reserved.
# Copyright (c) 2016, Linaro Limited. All rights reserved.

# This program and the accompanying materials
# are licensed and made available under the terms and conditions of the BSD License
# which accompanies this distribution. The full text of the license may be found at
# http:

# THE PROGRAM IS DISTRIBUTED UNDER THE BSD LICENSE ON AN "AS IS" BASIS,
# WITHOUT WARRANTIES OR REPRESENTATIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED.

#------------------------------------------------------------------------------

# 1 "/home/zrz0517/study/TEE/RT-TEE/edk2/ArmPkg/Include/Chipset/AArch64.h" 1
# 19 "/home/zrz0517/study/TEE/RT-TEE/edk2/ArmPkg/Include/Chipset/AArch64.h"
# 1 "/home/zrz0517/study/TEE/RT-TEE/edk2/ArmPkg/Include/Chipset/AArch64Mmu.h" 1
# 20 "/home/zrz0517/study/TEE/RT-TEE/edk2/ArmPkg/Include/Chipset/AArch64.h" 2
# 135 "/home/zrz0517/study/TEE/RT-TEE/edk2/ArmPkg/Include/Chipset/AArch64.h"
void

ArmEnableSWPInstruction (
  void
  );

UINTN

ArmReadCbar (
  void
  );

UINTN

ArmReadTpidrurw (
  void
  );

void

ArmWriteTpidrurw (
  UINTN Value
  );

UINTN

ArmGetTCR (
  void
  );

void

ArmSetTCR (
  UINTN Value
  );

UINTN

ArmGetMAIR (
  void
  );

void

ArmSetMAIR (
  UINTN Value
  );

void

ArmDisableAlignmentCheck (
  void
  );

void

ArmEnableAlignmentCheck (
  void
  );

void

ArmDisableStackAlignmentCheck (
  void
  );

void

ArmEnableStackAlignmentCheck (
  void
  );

void

ArmDisableAllExceptions (
  void
  );

void
ArmWriteHcr (
  UINTN Hcr
  );

UINTN
ArmReadHcr (
  void
  );

UINTN
ArmReadCurrentEL (
  void
  );

UINT64
PageAttributeToGcdAttribute (
  UINT64 PageAttributes
  );

UINTN
ArmWriteCptr (
  UINT64 Cptr
  );

UINT32
ArmReadCntHctl (
  void
  );

void
ArmWriteCntHctl (
  UINT32 CntHctl
  );
# 18 "/home/zrz0517/study/TEE/RT-TEE/edk2/ArmPkg/Library/ArmLib/AArch64/AArch64Support.S" 2
# 1 "/home/zrz0517/study/TEE/RT-TEE/edk2/ArmPkg/Include/AsmMacroIoLibV8.h" 1
# 19 "/home/zrz0517/study/TEE/RT-TEE/edk2/ArmPkg/Library/ArmLib/AArch64/AArch64Support.S" 2

.set CTRL_M_BIT, (1 << 0)
.set CTRL_A_BIT, (1 << 1)
.set CTRL_C_BIT, (1 << 2)
.set CTRL_SA_BIT, (1 << 3)
.set CTRL_I_BIT, (1 << 12)
.set CTRL_V_BIT, (1 << 12)
.set CPACR_VFP_BITS, (3 << 20)

.global ArmInvalidateDataCacheEntryByMVA ; .section ".text.ArmInvalidateDataCacheEntryByMVA", "ax" ; .type ArmInvalidateDataCacheEntryByMVA, %function ; ArmInvalidateDataCacheEntryByMVA:
  dc ivac, x0
  ret


.global ArmCleanDataCacheEntryByMVA ; .section ".text.ArmCleanDataCacheEntryByMVA", "ax" ; .type ArmCleanDataCacheEntryByMVA, %function ; ArmCleanDataCacheEntryByMVA:
  dc cvac, x0
  ret


.global ArmCleanDataCacheEntryToPoUByMVA ; .section ".text.ArmCleanDataCacheEntryToPoUByMVA", "ax" ; .type ArmCleanDataCacheEntryToPoUByMVA, %function ; ArmCleanDataCacheEntryToPoUByMVA:
  dc cvau, x0
  ret

.global ArmInvalidateInstructionCacheEntryToPoUByMVA ; .section ".text.ArmInvalidateInstructionCacheEntryToPoUByMVA", "ax" ; .type ArmInvalidateInstructionCacheEntryToPoUByMVA, %function ; ArmInvalidateInstructionCacheEntryToPoUByMVA:
  ic ivau, x0
  ret


.global ArmCleanInvalidateDataCacheEntryByMVA ; .section ".text.ArmCleanInvalidateDataCacheEntryByMVA", "ax" ; .type ArmCleanInvalidateDataCacheEntryByMVA, %function ; ArmCleanInvalidateDataCacheEntryByMVA:
  dc civac, x0
  ret


.global ArmInvalidateDataCacheEntryBySetWay ; .section ".text.ArmInvalidateDataCacheEntryBySetWay", "ax" ; .type ArmInvalidateDataCacheEntryBySetWay, %function ; ArmInvalidateDataCacheEntryBySetWay:
  dc isw, x0
  ret


.global ArmCleanInvalidateDataCacheEntryBySetWay ; .section ".text.ArmCleanInvalidateDataCacheEntryBySetWay", "ax" ; .type ArmCleanInvalidateDataCacheEntryBySetWay, %function ; ArmCleanInvalidateDataCacheEntryBySetWay:
  dc cisw, x0
  ret


.global ArmCleanDataCacheEntryBySetWay ; .section ".text.ArmCleanDataCacheEntryBySetWay", "ax" ; .type ArmCleanDataCacheEntryBySetWay, %function ; ArmCleanDataCacheEntryBySetWay:
  dc csw, x0
  ret


.global ArmInvalidateInstructionCache ; .section ".text.ArmInvalidateInstructionCache", "ax" ; .type ArmInvalidateInstructionCache, %function ; ArmInvalidateInstructionCache:
  ic iallu
  dsb sy
  isb
  ret


.global ArmEnableMmu ; .section ".text.ArmEnableMmu", "ax" ; .type ArmEnableMmu, %function ; ArmEnableMmu:
   mrs x1, CurrentEL ; cmp x1, #0x8 ; b.gt 3f ; b.eq 2f ; cbnz x1, 1f ; b . ;
1: mrs x0, sctlr_el1
   b 4f
2: mrs x0, sctlr_el2
   b 4f
3: mrs x0, sctlr_el3
4: orr x0, x0, #CTRL_M_BIT
   mrs x1, CurrentEL ; cmp x1, #0x8 ; b.gt 3f ; b.eq 2f ; cbnz x1, 1f ; b . ;
1: tlbi vmalle1
   dsb nsh
   isb
   msr sctlr_el1, x0
   b 4f
2: tlbi alle2
   dsb nsh
   isb
   msr sctlr_el2, x0
   b 4f
3: tlbi alle3
   dsb nsh
   isb
   msr sctlr_el3, x0
4: isb
   ret


.global ArmDisableMmu ; .section ".text.ArmDisableMmu", "ax" ; .type ArmDisableMmu, %function ; ArmDisableMmu:
   mrs x1, CurrentEL ; cmp x1, #0x8 ; b.gt 3f ; b.eq 2f ; cbnz x1, 1f ; b . ;
1: mrs x0, sctlr_el1
   b 4f
2: mrs x0, sctlr_el2
   b 4f
3: mrs x0, sctlr_el3
4: and x0, x0, #~CTRL_M_BIT
   mrs x1, CurrentEL ; cmp x1, #0x8 ; b.gt 3f ; b.eq 2f ; cbnz x1, 1f ; b . ;
1: msr sctlr_el1, x0
   tlbi vmalle1
   b 4f
2: msr sctlr_el2, x0
   tlbi alle2
   b 4f
3: msr sctlr_el3, x0
   tlbi alle3
4: dsb sy
   isb
   ret


.global ArmDisableCachesAndMmu ; .section ".text.ArmDisableCachesAndMmu", "ax" ; .type ArmDisableCachesAndMmu, %function ; ArmDisableCachesAndMmu:
   mrs x1, CurrentEL ; cmp x1, #0x8 ; b.gt 3f ; b.eq 2f ; cbnz x1, 1f ; b . ;
1: mrs x0, sctlr_el1
   b 4f
2: mrs x0, sctlr_el2
   b 4f
3: mrs x0, sctlr_el3
4: mov x1, #~(CTRL_M_BIT | CTRL_C_BIT | CTRL_I_BIT)
   and x0, x0, x1
   mrs x1, CurrentEL ; cmp x1, #0x8 ; b.gt 3f ; b.eq 2f ; cbnz x1, 1f ; b . ;
1: msr sctlr_el1, x0
   b 4f
2: msr sctlr_el2, x0
   b 4f
3: msr sctlr_el3, x0
4: dsb sy
   isb
   ret


.global ArmMmuEnabled ; .section ".text.ArmMmuEnabled", "ax" ; .type ArmMmuEnabled, %function ; ArmMmuEnabled:
   mrs x1, CurrentEL ; cmp x1, #0x8 ; b.gt 3f ; b.eq 2f ; cbnz x1, 1f ; b . ;
1: mrs x0, sctlr_el1
   b 4f
2: mrs x0, sctlr_el2
   b 4f
3: mrs x0, sctlr_el3
4: and x0, x0, #CTRL_M_BIT
   ret


.global ArmEnableDataCache ; .section ".text.ArmEnableDataCache", "ax" ; .type ArmEnableDataCache, %function ; ArmEnableDataCache:
   mrs x1, CurrentEL ; cmp x1, #0x8 ; b.gt 3f ; b.eq 2f ; cbnz x1, 1f ; b . ;
1: mrs x0, sctlr_el1
   b 4f
2: mrs x0, sctlr_el2
   b 4f
3: mrs x0, sctlr_el3
4: orr x0, x0, #CTRL_C_BIT
   mrs x1, CurrentEL ; cmp x1, #0x8 ; b.gt 3f ; b.eq 2f ; cbnz x1, 1f ; b . ;
1: msr sctlr_el1, x0
   b 4f
2: msr sctlr_el2, x0
   b 4f
3: msr sctlr_el3, x0
4: dsb sy
   isb
   ret


.global ArmDisableDataCache ; .section ".text.ArmDisableDataCache", "ax" ; .type ArmDisableDataCache, %function ; ArmDisableDataCache:
   mrs x1, CurrentEL ; cmp x1, #0x8 ; b.gt 3f ; b.eq 2f ; cbnz x1, 1f ; b . ;
1: mrs x0, sctlr_el1
   b 4f
2: mrs x0, sctlr_el2
   b 4f
3: mrs x0, sctlr_el3
4: and x0, x0, #~CTRL_C_BIT
   mrs x1, CurrentEL ; cmp x1, #0x8 ; b.gt 3f ; b.eq 2f ; cbnz x1, 1f ; b . ;
1: msr sctlr_el1, x0
   b 4f
2: msr sctlr_el2, x0
   b 4f
3: msr sctlr_el3, x0
4: dsb sy
   isb
   ret


.global ArmEnableInstructionCache ; .section ".text.ArmEnableInstructionCache", "ax" ; .type ArmEnableInstructionCache, %function ; ArmEnableInstructionCache:
   mrs x1, CurrentEL ; cmp x1, #0x8 ; b.gt 3f ; b.eq 2f ; cbnz x1, 1f ; b . ;
1: mrs x0, sctlr_el1
   b 4f
2: mrs x0, sctlr_el2
   b 4f
3: mrs x0, sctlr_el3
4: orr x0, x0, #CTRL_I_BIT
   mrs x1, CurrentEL ; cmp x1, #0x8 ; b.gt 3f ; b.eq 2f ; cbnz x1, 1f ; b . ;
1: msr sctlr_el1, x0
   b 4f
2: msr sctlr_el2, x0
   b 4f
3: msr sctlr_el3, x0
4: dsb sy
   isb
   ret


.global ArmDisableInstructionCache ; .section ".text.ArmDisableInstructionCache", "ax" ; .type ArmDisableInstructionCache, %function ; ArmDisableInstructionCache:
   mrs x1, CurrentEL ; cmp x1, #0x8 ; b.gt 3f ; b.eq 2f ; cbnz x1, 1f ; b . ;
1: mrs x0, sctlr_el1
   b 4f
2: mrs x0, sctlr_el2
   b 4f
3: mrs x0, sctlr_el3
4: and x0, x0, #~CTRL_I_BIT
   mrs x1, CurrentEL ; cmp x1, #0x8 ; b.gt 3f ; b.eq 2f ; cbnz x1, 1f ; b . ;
1: msr sctlr_el1, x0
   b 4f
2: msr sctlr_el2, x0
   b 4f
3: msr sctlr_el3, x0
4: dsb sy
   isb
   ret


.global ArmEnableAlignmentCheck ; .section ".text.ArmEnableAlignmentCheck", "ax" ; .type ArmEnableAlignmentCheck, %function ; ArmEnableAlignmentCheck:
   mrs x1, CurrentEL ; cmp x1, #0x8 ; b.gt . ; b.eq 2f ; cbnz x1, 1f ; b . ;
1: mrs x0, sctlr_el1
   b 3f
2: mrs x0, sctlr_el2
3: orr x0, x0, #CTRL_A_BIT
   mrs x1, CurrentEL ; cmp x1, #0x8 ; b.gt . ; b.eq 2f ; cbnz x1, 1f ; b . ;
1: msr sctlr_el1, x0
   b 3f
2: msr sctlr_el2, x0
3: dsb sy
   isb
   ret


.global ArmDisableAlignmentCheck ; .section ".text.ArmDisableAlignmentCheck", "ax" ; .type ArmDisableAlignmentCheck, %function ; ArmDisableAlignmentCheck:
   mrs x1, CurrentEL ; cmp x1, #0x8 ; b.gt 3f ; b.eq 2f ; cbnz x1, 1f ; b . ;
1: mrs x0, sctlr_el1
   b 4f
2: mrs x0, sctlr_el2
   b 4f
3: mrs x0, sctlr_el3
4: and x0, x0, #~CTRL_A_BIT
   mrs x1, CurrentEL ; cmp x1, #0x8 ; b.gt 3f ; b.eq 2f ; cbnz x1, 1f ; b . ;
1: msr sctlr_el1, x0
   b 4f
2: msr sctlr_el2, x0
   b 4f
3: msr sctlr_el3, x0
4: dsb sy
   isb
   ret

.global ArmEnableStackAlignmentCheck ; .section ".text.ArmEnableStackAlignmentCheck", "ax" ; .type ArmEnableStackAlignmentCheck, %function ; ArmEnableStackAlignmentCheck:
   mrs x1, CurrentEL ; cmp x1, #0x8 ; b.gt . ; b.eq 2f ; cbnz x1, 1f ; b . ;
1: mrs x0, sctlr_el1
   b 3f
2: mrs x0, sctlr_el2
3: orr x0, x0, #CTRL_SA_BIT
   mrs x1, CurrentEL ; cmp x1, #0x8 ; b.gt . ; b.eq 2f ; cbnz x1, 1f ; b . ;
1: msr sctlr_el1, x0
   b 3f
2: msr sctlr_el2, x0
3: dsb sy
   isb
   ret


.global ArmDisableStackAlignmentCheck ; .section ".text.ArmDisableStackAlignmentCheck", "ax" ; .type ArmDisableStackAlignmentCheck, %function ; ArmDisableStackAlignmentCheck:
   mrs x1, CurrentEL ; cmp x1, #0x8 ; b.gt 3f ; b.eq 2f ; cbnz x1, 1f ; b . ;
1: mrs x0, sctlr_el1
   b 4f
2: mrs x0, sctlr_el2
   b 4f
3: mrs x0, sctlr_el3
4: bic x0, x0, #CTRL_SA_BIT
   mrs x1, CurrentEL ; cmp x1, #0x8 ; b.gt 3f ; b.eq 2f ; cbnz x1, 1f ; b . ;
1: msr sctlr_el1, x0
   b 4f
2: msr sctlr_el2, x0
   b 4f
3: msr sctlr_el3, x0
4: dsb sy
   isb
   ret



.global ArmEnableBranchPrediction ; .section ".text.ArmEnableBranchPrediction", "ax" ; .type ArmEnableBranchPrediction, %function ; ArmEnableBranchPrediction:
  ret



.global ArmDisableBranchPrediction ; .section ".text.ArmDisableBranchPrediction", "ax" ; .type ArmDisableBranchPrediction, %function ; ArmDisableBranchPrediction:
  ret


.global AArch64AllDataCachesOperation ; .section ".text.AArch64AllDataCachesOperation", "ax" ; .type AArch64AllDataCachesOperation, %function ; AArch64AllDataCachesOperation:


  stp x29, x30, [sp, #-16]!
  mov x29, sp
  mov x1, x0
  mrs x6, clidr_el1
  and x3, x6, #0x7000000
  lsr x3, x3, #23

  cbz x3, L_Finished
  mov x10, #0

Loop1:
  add x2, x10, x10, lsr #1
  lsr x12, x6, x2
  and x12, x12, #7
  cmp x12, #2
  b.lt L_Skip
  msr csselr_el1, x10
  isb
  mrs x12, ccsidr_el1
  and x2, x12, #0x7
  add x2, x2, #4
  mov x4, #0x400
  sub x4, x4, #1
  and x4, x4, x12, lsr #3
  clz w5, w4
  mov x7, #0x00008000
  sub x7, x7, #1
  and x7, x7, x12, lsr #13

Loop2:
  mov x9, x4

Loop3:
  lsl x11, x9, x5
  orr x0, x10, x11
  lsl x11, x7, x2
  orr x0, x0, x11

  blr x1

  subs x9, x9, #1
  b.ge Loop3
  subs x7, x7, #1
  b.ge Loop2
L_Skip:
  add x10, x10, #2
  cmp x3, x10
  b.gt Loop1

L_Finished:
  dsb sy
  isb
  ldp x29, x30, [sp], #0x10
  ret


.global ArmDataMemoryBarrier ; .section ".text.ArmDataMemoryBarrier", "ax" ; .type ArmDataMemoryBarrier, %function ; ArmDataMemoryBarrier:
  dmb sy
  ret


.global ArmDataSynchronizationBarrier ; .section ".text.ArmDataSynchronizationBarrier", "ax" ; .type ArmDataSynchronizationBarrier, %function ; ArmDataSynchronizationBarrier:
  dsb sy
  ret


.global ArmInstructionSynchronizationBarrier ; .section ".text.ArmInstructionSynchronizationBarrier", "ax" ; .type ArmInstructionSynchronizationBarrier, %function ; ArmInstructionSynchronizationBarrier:
  isb
  ret


.global ArmWriteVBar ; .section ".text.ArmWriteVBar", "ax" ; .type ArmWriteVBar, %function ; ArmWriteVBar:
   mrs x1, CurrentEL ; cmp x1, #0x8 ; b.gt 3f ; b.eq 2f ; cbnz x1, 1f ; b . ;
1: msr vbar_el1, x0
   b 4f
2: msr vbar_el2, x0
   b 4f
3: msr vbar_el3, x0
4: isb
   ret

.global ArmReadVBar ; .section ".text.ArmReadVBar", "ax" ; .type ArmReadVBar, %function ; ArmReadVBar:
   mrs x1, CurrentEL ; cmp x1, #0x8 ; b.gt 3f ; b.eq 2f ; cbnz x1, 1f ; b . ;
1: mrs x0, vbar_el1
   ret
2: mrs x0, vbar_el2
   ret
3: mrs x0, vbar_el3
   ret


.global ArmEnableVFP ; .section ".text.ArmEnableVFP", "ax" ; .type ArmEnableVFP, %function ; ArmEnableVFP:

  mov x1, x30
  bl ArmReadIdPfr0
  mov x30, x1
  ubfx x0, x0, #16, #4
  cmp x0, #0xF

  b.eq 4f



  mrs x0, cpacr_el1
  orr x0, x0, #CPACR_VFP_BITS
  msr cpacr_el1, x0
  mov x1, #(1 << 10)
  mrs x2, CurrentEL ; cmp x2, #0x8 ; b.gt 3f ; b.eq 2f ; cbnz x2, 1f ; b . ;
1:ret
2:mrs x0, cptr_el2
  bic x0, x0, x1
  msr cptr_el2, x0
  ret
3:mrs x0, cptr_el3
  bic x0, x0, x1
  msr cptr_el3, x0
4:ret


.global ArmCallWFI ; .section ".text.ArmCallWFI", "ax" ; .type ArmCallWFI, %function ; ArmCallWFI:
  wfi
  ret


.global ArmReadMpidr ; .section ".text.ArmReadMpidr", "ax" ; .type ArmReadMpidr, %function ; ArmReadMpidr:
  mrs x0, mpidr_el1
  ret



.global ArmReadTpidrurw ; .section ".text.ArmReadTpidrurw", "ax" ; .type ArmReadTpidrurw, %function ; ArmReadTpidrurw:
  mrs x0, tpidr_el0
  ret



.global ArmWriteTpidrurw ; .section ".text.ArmWriteTpidrurw", "ax" ; .type ArmWriteTpidrurw, %function ; ArmWriteTpidrurw:
  msr tpidr_el0, x0
  ret



.global ArmIsArchTimerImplemented ; .section ".text.ArmIsArchTimerImplemented", "ax" ; .type ArmIsArchTimerImplemented, %function ; ArmIsArchTimerImplemented:
  mov x0, #1
  ret


.global ArmReadIdPfr0 ; .section ".text.ArmReadIdPfr0", "ax" ; .type ArmReadIdPfr0, %function ; ArmReadIdPfr0:
  mrs x0, id_aa64pfr0_el1
  ret






.global ArmReadIdPfr1 ; .section ".text.ArmReadIdPfr1", "ax" ; .type ArmReadIdPfr1, %function ; ArmReadIdPfr1:
  mrs x0, id_aa64pfr1_el1
  ret


.global ArmWriteHcr ; .section ".text.ArmWriteHcr", "ax" ; .type ArmWriteHcr, %function ; ArmWriteHcr:
  msr hcr_el2, x0
  ret


.global ArmReadHcr ; .section ".text.ArmReadHcr", "ax" ; .type ArmReadHcr, %function ; ArmReadHcr:
  mrs x0, hcr_el2
  ret


.global ArmReadCurrentEL ; .section ".text.ArmReadCurrentEL", "ax" ; .type ArmReadCurrentEL, %function ; ArmReadCurrentEL:
  mrs x0, CurrentEL
  ret


.global ArmReadCntHctl ; .section ".text.ArmReadCntHctl", "ax" ; .type ArmReadCntHctl, %function ; ArmReadCntHctl:
  mrs x0, cnthctl_el2
  ret


.global ArmWriteCntHctl ; .section ".text.ArmWriteCntHctl", "ax" ; .type ArmWriteCntHctl, %function ; ArmWriteCntHctl:
  msr cnthctl_el2, x0
  ret


