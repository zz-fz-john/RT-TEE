# 1 "/home/zrz0517/study/TEE/RT-TEE/edk2/MdePkg/Library/BaseIoLibIntrinsic/AArch64/ArmVirtMmio.S"
# 1 "<built-in>"
# 1 "<命令行>"
# 31 "<命令行>"
# 1 "/home/zrz0517/study/TEE/RT-TEE/toolchains/aarch64/aarch64-linux-gnu/libc/usr/include/stdc-predef.h" 1 3 4
# 32 "<命令行>" 2
# 1 "/home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/AARCH64/MdePkg/Library/BaseIoLibIntrinsic/BaseIoLibIntrinsicArmVirt/DEBUG/AutoGen.h" 1
# 16 "/home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/AARCH64/MdePkg/Library/BaseIoLibIntrinsic/BaseIoLibIntrinsicArmVirt/DEBUG/AutoGen.h"
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
# 17 "/home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/AARCH64/MdePkg/Library/BaseIoLibIntrinsic/BaseIoLibIntrinsicArmVirt/DEBUG/AutoGen.h" 2

extern GUID gEfiCallerIdGuid;
extern CHAR8 *gEfiCallerBaseName;



extern UINT64 _gPcd_SkuId_Array[];
# 32 "<命令行>" 2
# 1 "/home/zrz0517/study/TEE/RT-TEE/edk2/MdePkg/Library/BaseIoLibIntrinsic/AArch64/ArmVirtMmio.S"

# Copyright (c) 2014-2018, Linaro Limited. All rights reserved.

# This program and the accompanying materials are licensed and made available
# under the terms and conditions of the BSD License which accompanies this
# distribution. The full text of the license may be found at
# http:

# THE PROGRAM IS DISTRIBUTED UNDER THE BSD LICENSE ON AN "AS IS" BASIS,
# WITHOUT WARRANTIES OR REPRESENTATIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED.



.text
.align 3

.global MmioRead8Internal ; .type MmioRead8Internal, %function
.global MmioWrite8Internal ; .type MmioWrite8Internal, %function
.global MmioRead16Internal ; .type MmioRead16Internal, %function
.global MmioWrite16Internal ; .type MmioWrite16Internal, %function
.global MmioRead32Internal ; .type MmioRead32Internal, %function
.global MmioWrite32Internal ; .type MmioWrite32Internal, %function
.global MmioRead64Internal ; .type MmioRead64Internal, %function
.global MmioWrite64Internal ; .type MmioWrite64Internal, %function
# 37 "/home/zrz0517/study/TEE/RT-TEE/edk2/MdePkg/Library/BaseIoLibIntrinsic/AArch64/ArmVirtMmio.S"
MmioRead8Internal:
  ldrb w0, [x0]
  dmb ld
  ret
# 52 "/home/zrz0517/study/TEE/RT-TEE/edk2/MdePkg/Library/BaseIoLibIntrinsic/AArch64/ArmVirtMmio.S"
MmioWrite8Internal:
  dmb st
  strb w1, [x0]
  ret
# 68 "/home/zrz0517/study/TEE/RT-TEE/edk2/MdePkg/Library/BaseIoLibIntrinsic/AArch64/ArmVirtMmio.S"
MmioRead16Internal:
  ldrh w0, [x0]
  dmb ld
  ret
# 83 "/home/zrz0517/study/TEE/RT-TEE/edk2/MdePkg/Library/BaseIoLibIntrinsic/AArch64/ArmVirtMmio.S"
MmioWrite16Internal:
  dmb st
  strh w1, [x0]
  ret
# 99 "/home/zrz0517/study/TEE/RT-TEE/edk2/MdePkg/Library/BaseIoLibIntrinsic/AArch64/ArmVirtMmio.S"
MmioRead32Internal:
  ldr w0, [x0]
  dmb ld
  ret
# 114 "/home/zrz0517/study/TEE/RT-TEE/edk2/MdePkg/Library/BaseIoLibIntrinsic/AArch64/ArmVirtMmio.S"
MmioWrite32Internal:
  dmb st
  str w1, [x0]
  ret
# 130 "/home/zrz0517/study/TEE/RT-TEE/edk2/MdePkg/Library/BaseIoLibIntrinsic/AArch64/ArmVirtMmio.S"
MmioRead64Internal:
  ldr x0, [x0]
  dmb ld
  ret
# 145 "/home/zrz0517/study/TEE/RT-TEE/edk2/MdePkg/Library/BaseIoLibIntrinsic/AArch64/ArmVirtMmio.S"
MmioWrite64Internal:
  dmb st
  str x1, [x0]
  ret
