#
# DO NOT EDIT
# This file is auto-generated by build utility
#
# Module Name:
#
#   GNUmakefile
#
# Abstract:
#
#   Auto-generated makefile for building modules, libraries or platform
#
    

#
# Platform Macro Definition
#
PLATFORM_NAME = ArmVirtQemu
PLATFORM_GUID = 37d7e986-f7e9-45c2-8067-e371421a626c
PLATFORM_VERSION = 0.1
PLATFORM_RELATIVE_DIR = ArmVirtPkg
PLATFORM_DIR = /home/zrz0517/study/TEE/RT-TEE/edk2/ArmVirtPkg
PLATFORM_OUTPUT_DIR = Build/ArmVirtQemuKernel-AARCH64

#
# Module Macro Definition
#
MODULE_NAME = ArmVirtPrePiUniCoreRelocatable
MODULE_GUID = f7d9fd14-9335-4389-80c5-334d6abfcced
MODULE_NAME_GUID = ArmVirtPrePiUniCoreRelocatable
MODULE_VERSION = 1.0
MODULE_TYPE = SEC
MODULE_FILE = ArmVirtPrePiUniCoreRelocatable.inf
MODULE_FILE_BASE_NAME = ArmVirtPrePiUniCoreRelocatable
BASE_NAME = $(MODULE_NAME)
MODULE_RELATIVE_DIR = ArmVirtPkg/PrePi
PACKAGE_RELATIVE_DIR = PrePi
MODULE_DIR = /home/zrz0517/study/TEE/RT-TEE/edk2/ArmVirtPkg/PrePi
FFS_OUTPUT_DIR = /home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/FV/Ffs/f7d9fd14-9335-4389-80c5-334d6abfccedArmVirtPrePiUniCoreRelocatable

MODULE_ENTRY_POINT = _ModuleEntryPoint
ARCH_ENTRY_POINT = _ModuleEntryPoint
IMAGE_ENTRY_POINT = _ModuleEntryPoint

INF_VERSION = 0x00010005
BASE_NAME = ArmVirtPrePiUniCoreRelocatable
FILE_GUID = f7d9fd14-9335-4389-80c5-334d6abfcced
MODULE_TYPE = SEC
VALID_ARCHITECTURES = AARCH64
VERSION_STRING = 1.0

#
# Build Configuration Macro Definition
#
ARCH = AARCH64
TOOLCHAIN = GCC49
TOOLCHAIN_TAG = GCC49
TARGET = DEBUG

#
# Build Directory Macro Definition
#
# PLATFORM_BUILD_DIR = /home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49
BUILD_DIR = /home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49
BIN_DIR = $(BUILD_DIR)/AARCH64
LIB_DIR = $(BIN_DIR)
MODULE_BUILD_DIR = /home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/AARCH64/ArmVirtPkg/PrePi/ArmVirtPrePiUniCoreRelocatable
OUTPUT_DIR = /home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/AARCH64/ArmVirtPkg/PrePi/ArmVirtPrePiUniCoreRelocatable/OUTPUT
DEBUG_DIR = /home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/AARCH64/ArmVirtPkg/PrePi/ArmVirtPrePiUniCoreRelocatable/DEBUG
DEST_DIR_OUTPUT = $(OUTPUT_DIR)
DEST_DIR_DEBUG = $(DEBUG_DIR)

#
# Shell Command Macro
#
RD = rm -r -f
RM = rm -f
MD = mkdir -p
CP = cp -f
MV = mv -f


#
# Tools definitions specific to this module
#

SYMRENAME = echo
SYMRENAME_FLAGS = Symbol renaming not needed for

OPTROM = EfiRom
OPTROM_FLAGS = -e

ASLDLINK = /home/zrz0517/study/TEE/RT-TEE/build/../toolchains/aarch64/bin/aarch64-linux-gnu-gcc
ASLDLINK_FLAGS = -Wl,--emit-relocs -nostdlib -Wl,--gc-sections -u $(IMAGE_ENTRY_POINT) -Wl,-e,$(IMAGE_ENTRY_POINT),-Map,$(DEST_DIR_DEBUG)/$(BASE_NAME).map -z common-page-size=0x20 -Wl,--entry,ReferenceAcpiTable -u $(IMAGE_ENTRY_POINT) -Wl,--defsym=PECOFF_HEADER_SIZE=0 -Wl,--script=$(EDK_TOOLS_PATH)/Scripts/GccBase.lds -z common-page-size=0x20


RSA2048SHA256SIGN = Rsa2048Sha256Sign
RSA2048SHA256SIGN_GUID =  A7717414-C616-4977-9420-844712A735BF


VFR = VfrCompile
VFR_FLAGS = -l -n

PP = /home/zrz0517/study/TEE/RT-TEE/build/../toolchains/aarch64/bin/aarch64-linux-gnu-gcc
PP_FLAGS = $(ARCHCC_FLAGS) $(PLATFORM_FLAGS) -E -x assembler-with-cpp -include $(DEST_DIR_DEBUG)/AutoGen.h

LZMAF86 = LzmaF86Compress
LZMAF86_GUID =  D42AE6BD-1352-4bfb-909A-CA72A6EAE889



GENFW = GenFw
GENFW_FLAGS = 


SLINK = /home/zrz0517/study/TEE/RT-TEE/build/../toolchains/aarch64/bin/aarch64-linux-gnu-ar


PLATFORM_FLAGS = 

RC = /home/zrz0517/study/TEE/RT-TEE/build/../toolchains/aarch64/bin/aarch64-linux-gnu-objcopy
RC_FLAGS = -I binary -O elf64-littleaarch64 -B aarch64 --rename-section .data=.hii

DTC = dtc
DTC_FLAGS = -H epapr


PKCS7SIGN = Pkcs7Sign
PKCS7SIGN_GUID =  4AAFD29D-68DF-49EE-8AA9-347D375665A7

ASM = /home/zrz0517/study/TEE/RT-TEE/build/../toolchains/aarch64/bin/aarch64-linux-gnu-gcc
ASM_FLAGS = $(ARCHASM_FLAGS) $(PLATFORM_FLAGS) -c -x assembler -imacros $(DEST_DIR_DEBUG)/AutoGen.h -mlittle-endian

ASL = iasl
ASL_FLAGS = 
ASL_OUTFLAGS =  -p



CC_XIPFLAGS =  -mstrict-align -mgeneral-regs-only
CC = /home/zrz0517/study/TEE/RT-TEE/build/../toolchains/aarch64/bin/aarch64-linux-gnu-gcc
CC_FLAGS = $(ARCHCC_FLAGS) $(PLATFORM_FLAGS) -g -fshort-wchar -fno-builtin -fno-strict-aliasing -Wall -Werror -Wno-array-bounds -ffunction-sections -fdata-sections -include AutoGen.h -fno-common -DSTRING_ARRAY_NAME=$(BASE_NAME)Strings -g -Os -fshort-wchar -fno-builtin -fno-strict-aliasing -Wall -Werror -Wno-array-bounds -include AutoGen.h -fno-common -mlittle-endian -fno-short-enums -fverbose-asm -funsigned-char -ffunction-sections -fdata-sections -Wno-address -fno-asynchronous-unwind-tables -fno-unwind-tables -fno-pic -fno-pie -ffixed-x18 -O0 -mcmodel=small -DDISABLE_NEW_DEPRECATED_INTERFACES

NASMB_FLAGS = -f bin

VFRPP = /home/zrz0517/study/TEE/RT-TEE/build/../toolchains/aarch64/bin/aarch64-linux-gnu-gcc
VFRPP_FLAGS = $(ARCHCC_FLAGS) $(PLATFORM_FLAGS) -x c -E -P -DVFRCOMPILE --include $(DEST_DIR_DEBUG)/$(MODULE_NAME)StrDefs.h

BROTLI = BrotliCompress
BROTLI_GUID =  3D532050-5CDA-4FD0-879E-0F7F630D5AFB



DTCPP = cpp
DTCPP_FLAGS = -E -x assembler-with-cpp -imacros $(DEST_DIR_DEBUG)/AutoGen.h -nostdinc -undef

LZMA = LzmaCompress
LZMA_GUID =  EE4E5898-3914-4259-9D6E-DC7BD79403CF


ASLCC = /home/zrz0517/study/TEE/RT-TEE/build/../toolchains/aarch64/bin/aarch64-linux-gnu-gcc
ASLCC_FLAGS = -x c


MAKE = make

DLINK2_FLAGS = -Wl,--script=$(EDK_TOOLS_PATH)/Scripts/GccBase.lds -Wl,--defsym=PECOFF_HEADER_SIZE=0x228

DLINK_XIPFLAGS =  -z common-page-size=0x20
DLINK = /home/zrz0517/study/TEE/RT-TEE/build/../toolchains/aarch64/bin/aarch64-linux-gnu-gcc
DLINK_FLAGS = -Wl,--emit-relocs -nostdlib -Wl,--gc-sections -u $(IMAGE_ENTRY_POINT) -Wl,-e,$(IMAGE_ENTRY_POINT),-Map,$(DEST_DIR_DEBUG)/$(BASE_NAME).map -z common-page-size=0x20 -z common-page-size=0x1000 -pie -Wl,-T,$(MODULE_DIR)/Scripts/PrePi-PIE.lds

TIANO = TianoCompress
TIANO_GUID =  A31280AD-481E-41B6-95E8-127F4C984779

VPDTOOL = BPDG
VPDTOOL_GUID =  8C3D856A-9BE6-468E-850A-24F7A8D38E08

CRC32 = GenCrc32
CRC32_GUID =  FC1BCDB0-7D31-49AA-936A-A4600D9DD083

ASLPP = /home/zrz0517/study/TEE/RT-TEE/build/../toolchains/aarch64/bin/aarch64-linux-gnu-gcc
ASLPP_FLAGS = -x c -E -include AutoGen.h

OBJCOPY_ADDDEBUGFLAG =  --add-gnu-debuglink=$(DEBUG_DIR)/$(MODULE_NAME).debug
OBJCOPY = echo
OBJCOPY_FLAGS = objcopy not needed for

APP_FLAGS = 

ASMLINK = bin16\link16.exe
ASMLINK_FLAGS = /nologo /tiny

NASM = nasm


MAKE_FILE = $(MODULE_BUILD_DIR)/GNUmakefile

#
# Build Macro
#
OBJECT_FILES =  \
    $(OUTPUT_DIR)/FdtParser.obj \
    $(OUTPUT_DIR)/PrePi.obj \
    $(OUTPUT_DIR)/AArch64/ArchPrePi.obj \
    $(OUTPUT_DIR)/AArch64/ModuleEntryPoint.obj \
    $(OUTPUT_DIR)/AutoGen.obj

STATIC_LIBRARY_FILES =  \
    $(BIN_DIR)/MdePkg/Library/BasePcdLibNull/BasePcdLibNull/OUTPUT/BasePcdLibNull.lib \
    $(BIN_DIR)/MdePkg/Library/BaseMemoryLib/BaseMemoryLib/OUTPUT/BaseMemoryLib.lib \
    $(BIN_DIR)/MdePkg/Library/BaseLib/BaseLib/OUTPUT/BaseLib.lib \
    $(BIN_DIR)/MdePkg/Library/BaseIoLibIntrinsic/BaseIoLibIntrinsicArmVirt/OUTPUT/BaseIoLibIntrinsicArmVirt.lib \
    $(BIN_DIR)/ArmPlatformPkg/Library/PL011UartLib/PL011UartLib/OUTPUT/PL011UartLib.lib \
    $(BIN_DIR)/EmbeddedPkg/Library/FdtLib/FdtLib/OUTPUT/FdtLib.lib \
    $(BIN_DIR)/MdePkg/Library/BaseDebugPrintErrorLevelLib/BaseDebugPrintErrorLevelLib/OUTPUT/BaseDebugPrintErrorLevelLib.lib \
    $(BIN_DIR)/MdePkg/Library/BasePrintLib/BasePrintLib/OUTPUT/BasePrintLib.lib \
    $(BIN_DIR)/ArmVirtPkg/Library/FdtPL011SerialPortLib/EarlyFdtPL011SerialPortLib/OUTPUT/EarlyFdtPL011SerialPortLib.lib \
    $(BIN_DIR)/MdePkg/Library/BaseDebugLibSerialPort/BaseDebugLibSerialPort/OUTPUT/BaseDebugLibSerialPort.lib \
    $(BIN_DIR)/ArmPkg/Library/ArmLib/ArmBaseLib/OUTPUT/ArmBaseLib.lib \
    $(BIN_DIR)/ArmPkg/Library/DebugPeCoffExtraActionLib/DebugPeCoffExtraActionLib/OUTPUT/DebugUnixPeCoffExtraActionLib.lib \
    $(BIN_DIR)/ArmPlatformPkg/Library/PrePiHobListPointerLib/PrePiHobListPointerLib/OUTPUT/PrePiHobListPointerLib.lib \
    $(BIN_DIR)/ArmPkg/Library/ArmGenericTimerVirtCounterLib/ArmGenericTimerVirtCounterLib/OUTPUT/ArmGenericTimerVirtCounterLib.lib \
    $(BIN_DIR)/MdePkg/Library/BasePerformanceLibNull/BasePerformanceLibNull/OUTPUT/BasePerformanceLibNull.lib \
    $(BIN_DIR)/MdePkg/Library/BasePeCoffLib/BasePeCoffLib/OUTPUT/BasePeCoffLib.lib \
    $(BIN_DIR)/MdePkg/Library/BaseUefiDecompressLib/BaseUefiDecompressLib/OUTPUT/BaseUefiDecompressLib.lib \
    $(BIN_DIR)/ArmPkg/Library/ArmCacheMaintenanceLib/ArmCacheMaintenanceLib/OUTPUT/ArmCacheMaintenanceLib.lib \
    $(BIN_DIR)/EmbeddedPkg/Library/PrePiHobLib/PrePiHobLib/OUTPUT/PrePiHobLib.lib \
    $(BIN_DIR)/EmbeddedPkg/Library/PrePiExtractGuidedSectionLib/PrePiExtractGuidedSectionLib/OUTPUT/PrePiExtractGuidedSectionLib.lib \
    $(BIN_DIR)/ArmPkg/Library/ArmArchTimerLib/ArmArchTimerLib/OUTPUT/ArmArchTimerLib.lib \
    $(BIN_DIR)/EmbeddedPkg/Library/PrePiLib/PrePiLib/OUTPUT/PrePiLib.lib \
    $(BIN_DIR)/EmbeddedPkg/Library/PrePiMemoryAllocationLib/PrePiMemoryAllocationLib/OUTPUT/PrePiMemoryAllocationLib.lib \
    $(BIN_DIR)/ArmVirtPkg/Library/QemuVirtMemInfoLib/QemuVirtMemInfoLib/OUTPUT/QemuVirtMemInfoLib.lib \
    $(BIN_DIR)/ArmPkg/Library/ArmMmuLib/ArmMmuBaseLib/OUTPUT/ArmMmuBaseLib.lib \
    $(BIN_DIR)/MdeModulePkg/Library/LzmaCustomDecompressLib/LzmaCustomDecompressLib/OUTPUT/LzmaDecompressLib.lib \
    $(BIN_DIR)/ArmVirtPkg/Library/PlatformPeiLib/PlatformPeiLib/OUTPUT/PlatformPeiLib.lib \
    $(BIN_DIR)/ArmVirtPkg/Library/ArmVirtMemoryInitPeiLib/ArmVirtMemoryInitPeiLib/OUTPUT/ArmVirtMemoryInitPeiLib.lib \
    $(BIN_DIR)/ArmPkg/Library/CompilerIntrinsicsLib/CompilerIntrinsicsLib/OUTPUT/CompilerIntrinsicsLib.lib \
    $(BIN_DIR)/MdePkg/Library/BaseStackCheckLib/BaseStackCheckLib/OUTPUT/BaseStackCheckLib.lib \
    $(OUTPUT_DIR)/ArmVirtPrePiUniCoreRelocatable.lib

INC =  \
    -I$(WORKSPACE)/ArmVirtPkg/PrePi/AArch64 \
    -I$(WORKSPACE)/ArmVirtPkg/PrePi \
    -I$(DEBUG_DIR) \
    -I$(WORKSPACE)/MdePkg \
    -I$(WORKSPACE)/MdePkg/Include \
    -I$(WORKSPACE)/MdePkg/Include/AArch64 \
    -I$(WORKSPACE)/MdeModulePkg \
    -I$(WORKSPACE)/MdeModulePkg/Include \
    -I$(WORKSPACE)/EmbeddedPkg \
    -I$(WORKSPACE)/EmbeddedPkg/Include \
    -I$(WORKSPACE)/ArmPkg \
    -I$(WORKSPACE)/ArmPkg/Include \
    -I$(WORKSPACE)/ArmPlatformPkg \
    -I$(WORKSPACE)/ArmPlatformPkg/Include \
    -I$(WORKSPACE)/ArmVirtPkg \
    -I$(WORKSPACE)/ArmVirtPkg/Include

OBJECT_FILES_LIST = /home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/AARCH64/ArmVirtPkg/PrePi/ArmVirtPrePiUniCoreRelocatable/OUTPUT/object_files.lst
STATIC_LIBRARY_FILES_LIST = /home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/AARCH64/ArmVirtPkg/PrePi/ArmVirtPrePiUniCoreRelocatable/OUTPUT/static_library_files.lst


COMMON_DEPS = $(WORKSPACE)/MdePkg/Include/Guid/WinCertificate.h \
              $(WORKSPACE)/MdePkg/Include/Ppi/CpuIo.h \
              $(WORKSPACE)/MdePkg/Include/Uefi/UefiBaseType.h \
              $(WORKSPACE)/MdePkg/Include/Pi/PiMultiPhase.h \
              $(WORKSPACE)/MdePkg/Include/PiPei.h \
              $(WORKSPACE)/MdePkg/Include/Protocol/DebugSupport.h \
              $(WORKSPACE)/MdePkg/Include/Pi/PiStatusCode.h \
              $(WORKSPACE)/MdePkg/Include/Uefi/UefiMultiPhase.h \
              $(WORKSPACE)/MdePkg/Include/Pi/PiBootMode.h \
              $(DEBUG_DIR)/AutoGen.h \
              $(WORKSPACE)/MdePkg/Include/Ppi/PciCfg2.h \
              $(WORKSPACE)/MdePkg/Include/Library/PcdLib.h \
              $(WORKSPACE)/MdePkg/Include/Base.h \
              $(WORKSPACE)/MdePkg/Include/AArch64/ProcessorBind.h \
              $(WORKSPACE)/MdePkg/Include/Library/BaseMemoryLib.h \
              $(WORKSPACE)/MdePkg/Include/Library/BaseLib.h \
              $(WORKSPACE)/MdePkg/Include/Pi/PiFirmwareFile.h \
              $(WORKSPACE)/MdePkg/Include/Pi/PiFirmwareVolume.h \
              $(WORKSPACE)/MdePkg/Include/Pi/PiPeiCis.h \
              $(WORKSPACE)/MdePkg/Include/IndustryStandard/PeImage.h \
              $(WORKSPACE)/MdePkg/Include/Pi/PiHob.h \
              $(WORKSPACE)/MdePkg/Include/Pi/PiDependency.h \
              $(WORKSPACE)/MdePkg/Include/Pi/PiS3BootScript.h \
              

#
# Overridable Target Macro Definitions
#
FORCE_REBUILD = force_build
INIT_TARGET = init
PCH_TARGET =
BC_TARGET = 
CODA_TARGET = /home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/AARCH64/ArmVirtPkg/PrePi/ArmVirtPrePiUniCoreRelocatable/DEBUG/ArmVirtPrePiUniCoreRelocatable.efi \
              

#
# Default target, which will build dependent libraries in addition to source files
#

all: mbuild


#
# Target used when called from platform makefile, which will bypass the build of dependent libraries
#

pbuild: $(INIT_TARGET) $(BC_TARGET) $(PCH_TARGET) $(CODA_TARGET)

#
# ModuleTarget
#

mbuild: $(INIT_TARGET) $(BC_TARGET) gen_libs $(PCH_TARGET) $(CODA_TARGET)

#
# Build Target used in multi-thread build mode, which will bypass the init and gen_libs targets
#

tbuild: $(BC_TARGET) $(PCH_TARGET) $(CODA_TARGET)

#
# Phony target which is used to force executing commands for a target
#
force_build:
	-@

#
# Target to update the FD
#

fds: mbuild gen_fds

#
# Initialization target: print build information and create necessary directories
#
init: info dirs

info:
	-@echo Building ... $(MODULE_DIR)/$(MODULE_FILE) [$(ARCH)]

dirs:
	-@$(MD) $(DEBUG_DIR)
	-@$(MD) $(OUTPUT_DIR)


strdefs:
	-@$(CP) $(DEBUG_DIR)/AutoGen.h $(DEBUG_DIR)/$(MODULE_NAME)StrDefs.h

#
# GenLibsTarget
#
gen_libs:
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BasePcdLibNull/BasePcdLibNull/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseMemoryLib/BaseMemoryLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseLib/BaseLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseIoLibIntrinsic/BaseIoLibIntrinsicArmVirt/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPlatformPkg/Library/PL011UartLib/PL011UartLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/EmbeddedPkg/Library/FdtLib/FdtLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseDebugPrintErrorLevelLib/BaseDebugPrintErrorLevelLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BasePrintLib/BasePrintLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmVirtPkg/Library/FdtPL011SerialPortLib/EarlyFdtPL011SerialPortLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseDebugLibSerialPort/BaseDebugLibSerialPort/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/ArmLib/ArmBaseLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/DebugPeCoffExtraActionLib/DebugPeCoffExtraActionLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPlatformPkg/Library/PrePiHobListPointerLib/PrePiHobListPointerLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/ArmGenericTimerVirtCounterLib/ArmGenericTimerVirtCounterLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BasePerformanceLibNull/BasePerformanceLibNull/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BasePeCoffLib/BasePeCoffLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseUefiDecompressLib/BaseUefiDecompressLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/ArmCacheMaintenanceLib/ArmCacheMaintenanceLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/EmbeddedPkg/Library/PrePiHobLib/PrePiHobLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/EmbeddedPkg/Library/PrePiExtractGuidedSectionLib/PrePiExtractGuidedSectionLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/ArmArchTimerLib/ArmArchTimerLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/EmbeddedPkg/Library/PrePiLib/PrePiLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/EmbeddedPkg/Library/PrePiMemoryAllocationLib/PrePiMemoryAllocationLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmVirtPkg/Library/QemuVirtMemInfoLib/QemuVirtMemInfoLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/ArmMmuLib/ArmMmuBaseLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdeModulePkg/Library/LzmaCustomDecompressLib/LzmaCustomDecompressLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmVirtPkg/Library/PlatformPeiLib/PlatformPeiLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmVirtPkg/Library/ArmVirtMemoryInitPeiLib/ArmVirtMemoryInitPeiLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/CompilerIntrinsicsLib/CompilerIntrinsicsLib/GNUmakefile
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseStackCheckLib/BaseStackCheckLib/GNUmakefile
	@cd $(MODULE_BUILD_DIR)

#
# Build Flash Device Image
#
gen_fds:
	@"$(MAKE)" $(MAKE_FLAGS) -f $(BUILD_DIR)/GNUmakefile fds
	@cd $(MODULE_BUILD_DIR)

#
# Individual Object Build Targets
#
$(DEBUG_DIR)/ArmVirtPrePiUniCoreRelocatable.efi : $(DEBUG_DIR)/ArmVirtPrePiUniCoreRelocatable.dll
	$(CP) /home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/AARCH64/ArmVirtPkg/PrePi/ArmVirtPrePiUniCoreRelocatable/DEBUG/ArmVirtPrePiUniCoreRelocatable.dll $(DEBUG_DIR)/$(MODULE_NAME).debug
	$(OBJCOPY) --strip-unneeded -R .eh_frame /home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/AARCH64/ArmVirtPkg/PrePi/ArmVirtPrePiUniCoreRelocatable/DEBUG/ArmVirtPrePiUniCoreRelocatable.dll
	-$(OBJCOPY) $(OBJCOPY_ADDDEBUGFLAG) /home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/AARCH64/ArmVirtPkg/PrePi/ArmVirtPrePiUniCoreRelocatable/DEBUG/ArmVirtPrePiUniCoreRelocatable.dll
	-$(CP) $(DEBUG_DIR)/$(MODULE_NAME).debug $(BIN_DIR)/$(MODULE_NAME_GUID).debug
	"$(GENFW)" -e $(MODULE_TYPE) -o /home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/AARCH64/ArmVirtPkg/PrePi/ArmVirtPrePiUniCoreRelocatable/DEBUG/ArmVirtPrePiUniCoreRelocatable.efi /home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/AARCH64/ArmVirtPkg/PrePi/ArmVirtPrePiUniCoreRelocatable/DEBUG/ArmVirtPrePiUniCoreRelocatable.dll $(GENFW_FLAGS)
	$(CP) /home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/AARCH64/ArmVirtPkg/PrePi/ArmVirtPrePiUniCoreRelocatable/DEBUG/ArmVirtPrePiUniCoreRelocatable.efi $(OUTPUT_DIR)
	$(CP) /home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/AARCH64/ArmVirtPkg/PrePi/ArmVirtPrePiUniCoreRelocatable/DEBUG/ArmVirtPrePiUniCoreRelocatable.efi $(BIN_DIR)/$(MODULE_NAME_GUID).efi
	-$(CP) $(DEBUG_DIR)/*.map $(OUTPUT_DIR)

$(OUTPUT_DIR)/ArmVirtPrePiUniCoreRelocatable.lib : $(OBJECT_FILES)
$(OUTPUT_DIR)/ArmVirtPrePiUniCoreRelocatable.lib : $(OBJECT_FILES_LIST)
	"$(SLINK)" cr /home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/AARCH64/ArmVirtPkg/PrePi/ArmVirtPrePiUniCoreRelocatable/OUTPUT/ArmVirtPrePiUniCoreRelocatable.lib $(SLINK_FLAGS) @$(OBJECT_FILES_LIST)

$(DEBUG_DIR)/ArmVirtPrePiUniCoreRelocatable.dll : $(MAKE_FILE)
$(DEBUG_DIR)/ArmVirtPrePiUniCoreRelocatable.dll : $(STATIC_LIBRARY_FILES)
$(DEBUG_DIR)/ArmVirtPrePiUniCoreRelocatable.dll : $(STATIC_LIBRARY_FILES_LIST)
	"$(DLINK)" -o /home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/AARCH64/ArmVirtPkg/PrePi/ArmVirtPrePiUniCoreRelocatable/DEBUG/ArmVirtPrePiUniCoreRelocatable.dll $(DLINK_FLAGS) $(DLINK_XIPFLAGS) -Wl,--start-group,@$(STATIC_LIBRARY_FILES_LIST),--end-group $(CC_FLAGS) $(CC_XIPFLAGS) $(DLINK2_FLAGS)
	"$(OBJCOPY)" $(OBJCOPY_FLAGS) /home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/AARCH64/ArmVirtPkg/PrePi/ArmVirtPrePiUniCoreRelocatable/DEBUG/ArmVirtPrePiUniCoreRelocatable.dll

$(OUTPUT_DIR)/AutoGen.obj : $(MAKE_FILE)
$(OUTPUT_DIR)/AutoGen.obj : $(WORKSPACE)/MdePkg/Include/Guid/WinCertificate.h
$(OUTPUT_DIR)/AutoGen.obj : $(WORKSPACE)/MdePkg/Include/Ppi/CpuIo.h
$(OUTPUT_DIR)/AutoGen.obj : $(WORKSPACE)/MdePkg/Include/Uefi/UefiBaseType.h
$(OUTPUT_DIR)/AutoGen.obj : $(WORKSPACE)/MdePkg/Include/Pi/PiMultiPhase.h
$(OUTPUT_DIR)/AutoGen.obj : $(WORKSPACE)/MdePkg/Include/PiPei.h
$(OUTPUT_DIR)/AutoGen.obj : $(WORKSPACE)/MdePkg/Include/Protocol/DebugSupport.h
$(OUTPUT_DIR)/AutoGen.obj : $(WORKSPACE)/MdePkg/Include/Base.h
$(OUTPUT_DIR)/AutoGen.obj : $(WORKSPACE)/MdePkg/Include/Uefi/UefiMultiPhase.h
$(OUTPUT_DIR)/AutoGen.obj : $(WORKSPACE)/MdePkg/Include/Pi/PiBootMode.h
$(OUTPUT_DIR)/AutoGen.obj : $(DEBUG_DIR)/AutoGen.h
$(OUTPUT_DIR)/AutoGen.obj : $(WORKSPACE)/MdePkg/Include/Ppi/PciCfg2.h
$(OUTPUT_DIR)/AutoGen.obj : $(WORKSPACE)/MdePkg/Include/Library/PcdLib.h
$(OUTPUT_DIR)/AutoGen.obj : $(WORKSPACE)/MdePkg/Include/Pi/PiStatusCode.h
$(OUTPUT_DIR)/AutoGen.obj : $(WORKSPACE)/MdePkg/Include/AArch64/ProcessorBind.h
$(OUTPUT_DIR)/AutoGen.obj : $(WORKSPACE)/MdePkg/Include/Library/BaseLib.h
$(OUTPUT_DIR)/AutoGen.obj : $(WORKSPACE)/MdePkg/Include/Pi/PiDependency.h
$(OUTPUT_DIR)/AutoGen.obj : $(WORKSPACE)/MdePkg/Include/Pi/PiFirmwareVolume.h
$(OUTPUT_DIR)/AutoGen.obj : $(WORKSPACE)/MdePkg/Include/Pi/PiPeiCis.h
$(OUTPUT_DIR)/AutoGen.obj : $(WORKSPACE)/MdePkg/Include/IndustryStandard/PeImage.h
$(OUTPUT_DIR)/AutoGen.obj : $(WORKSPACE)/MdePkg/Include/Pi/PiHob.h
$(OUTPUT_DIR)/AutoGen.obj : $(WORKSPACE)/MdePkg/Include/Pi/PiFirmwareFile.h
$(OUTPUT_DIR)/AutoGen.obj : $(WORKSPACE)/MdePkg/Include/Library/DebugLib.h
$(OUTPUT_DIR)/AutoGen.obj : $(WORKSPACE)/MdePkg/Include/Pi/PiS3BootScript.h
$(OUTPUT_DIR)/AutoGen.obj : $(DEBUG_DIR)/AutoGen.c
	"$(CC)" $(CC_FLAGS) $(CC_XIPFLAGS) -c -o /home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/AARCH64/ArmVirtPkg/PrePi/ArmVirtPrePiUniCoreRelocatable/OUTPUT/./AutoGen.obj $(INC) /home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/AARCH64/ArmVirtPkg/PrePi/ArmVirtPrePiUniCoreRelocatable/DEBUG/AutoGen.c

$(OUTPUT_DIR)/PrePi.obj : $(MAKE_FILE)
$(OUTPUT_DIR)/PrePi.obj : $(COMMON_DEPS)
$(OUTPUT_DIR)/PrePi.obj : $(WORKSPACE)/EmbeddedPkg/Include/Library/PrePiLib.h
$(OUTPUT_DIR)/PrePi.obj : $(WORKSPACE)/ArmPkg/Include/Ppi/ArmMpCoreInfo.h
$(OUTPUT_DIR)/PrePi.obj : $(WORKSPACE)/MdePkg/Include/Ppi/GuidedSectionExtraction.h
$(OUTPUT_DIR)/PrePi.obj : $(WORKSPACE)/MdePkg/Include/Library/HobLib.h
$(OUTPUT_DIR)/PrePi.obj : $(WORKSPACE)/MdePkg/Include/Library/SerialPortLib.h
$(OUTPUT_DIR)/PrePi.obj : $(WORKSPACE)/ArmPkg/Include/Chipset/AArch64Mmu.h
$(OUTPUT_DIR)/PrePi.obj : $(WORKSPACE)/MdePkg/Include/Library/MemoryAllocationLib.h
$(OUTPUT_DIR)/PrePi.obj : $(WORKSPACE)/MdePkg/Include/Library/PrintLib.h
$(OUTPUT_DIR)/PrePi.obj : $(WORKSPACE)/MdePkg/Include/Library/ExtractGuidedSectionLib.h
$(OUTPUT_DIR)/PrePi.obj : $(WORKSPACE)/ArmPkg/Include/Library/ArmLib.h
$(OUTPUT_DIR)/PrePi.obj : $(WORKSPACE)/MdePkg/Include/Library/PerformanceLib.h
$(OUTPUT_DIR)/PrePi.obj : $(WORKSPACE)/MdePkg/Include/Library/TimerLib.h
$(OUTPUT_DIR)/PrePi.obj : $(WORKSPACE)/MdePkg/Include/Library/IoLib.h
$(OUTPUT_DIR)/PrePi.obj : $(WORKSPACE)/MdePkg/Include/Library/CacheMaintenanceLib.h
$(OUTPUT_DIR)/PrePi.obj : $(WORKSPACE)/EmbeddedPkg/Include/Guid/ExtractSection.h
$(OUTPUT_DIR)/PrePi.obj : $(WORKSPACE)/ArmPkg/Include/Guid/ArmMpCoreInfo.h
$(OUTPUT_DIR)/PrePi.obj : $(WORKSPACE)/ArmPkg/Include/Chipset/ArmV7Mmu.h
$(OUTPUT_DIR)/PrePi.obj : $(WORKSPACE)/MdePkg/Include/Protocol/SerialIo.h
$(OUTPUT_DIR)/PrePi.obj : $(WORKSPACE)/ArmVirtPkg/PrePi/PrePi.h
$(OUTPUT_DIR)/PrePi.obj : $(WORKSPACE)/ArmPkg/Include/Chipset/ArmV7.h
$(OUTPUT_DIR)/PrePi.obj : $(WORKSPACE)/EmbeddedPkg/Include/Library/PrePiHobListPointerLib.h
$(OUTPUT_DIR)/PrePi.obj : $(WORKSPACE)/MdePkg/Include/Library/DebugLib.h
$(OUTPUT_DIR)/PrePi.obj : $(WORKSPACE)/ArmPkg/Include/Chipset/AArch64.h
$(OUTPUT_DIR)/PrePi.obj : $(WORKSPACE)/ArmVirtPkg/PrePi/PrePi.c
	"$(CC)" $(CC_FLAGS) $(CC_XIPFLAGS) -c -o /home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/AARCH64/ArmVirtPkg/PrePi/ArmVirtPrePiUniCoreRelocatable/OUTPUT/./PrePi.obj $(INC) /home/zrz0517/study/TEE/RT-TEE/edk2/ArmVirtPkg/PrePi/PrePi.c

$(OUTPUT_DIR)/FdtParser.obj : $(MAKE_FILE)
$(OUTPUT_DIR)/FdtParser.obj : $(COMMON_DEPS)
$(OUTPUT_DIR)/FdtParser.obj : $(WORKSPACE)/MdePkg/Include/IndustryStandard/Acpi60.h
$(OUTPUT_DIR)/FdtParser.obj : $(WORKSPACE)/EmbeddedPkg/Include/libfdt_env.h
$(OUTPUT_DIR)/FdtParser.obj : $(WORKSPACE)/MdePkg/Include/Guid/HiiFormMapMethodGuid.h
$(OUTPUT_DIR)/FdtParser.obj : $(WORKSPACE)/MdePkg/Include/Uefi.h
$(OUTPUT_DIR)/FdtParser.obj : $(WORKSPACE)/EmbeddedPkg/Include/fdt.h
$(OUTPUT_DIR)/FdtParser.obj : $(WORKSPACE)/MdePkg/Include/Uefi/UefiPxe.h
$(OUTPUT_DIR)/FdtParser.obj : $(WORKSPACE)/MdePkg/Include/Guid/PcAnsi.h
$(OUTPUT_DIR)/FdtParser.obj : $(WORKSPACE)/MdePkg/Include/Uefi/UefiInternalFormRepresentation.h
$(OUTPUT_DIR)/FdtParser.obj : $(WORKSPACE)/MdePkg/Include/IndustryStandard/Bluetooth.h
$(OUTPUT_DIR)/FdtParser.obj : $(WORKSPACE)/MdePkg/Include/IndustryStandard/Acpi50.h
$(OUTPUT_DIR)/FdtParser.obj : $(WORKSPACE)/MdePkg/Include/Protocol/SimpleTextIn.h
$(OUTPUT_DIR)/FdtParser.obj : $(WORKSPACE)/MdePkg/Include/Uefi/UefiGpt.h
$(OUTPUT_DIR)/FdtParser.obj : $(WORKSPACE)/MdePkg/Include/IndustryStandard/AcpiAml.h
$(OUTPUT_DIR)/FdtParser.obj : $(WORKSPACE)/MdePkg/Include/Protocol/SimpleTextInEx.h
$(OUTPUT_DIR)/FdtParser.obj : $(WORKSPACE)/MdePkg/Include/IndustryStandard/Acpi10.h
$(OUTPUT_DIR)/FdtParser.obj : $(WORKSPACE)/MdePkg/Include/IndustryStandard/Acpi20.h
$(OUTPUT_DIR)/FdtParser.obj : $(WORKSPACE)/MdePkg/Include/IndustryStandard/Acpi30.h
$(OUTPUT_DIR)/FdtParser.obj : $(WORKSPACE)/MdePkg/Include/IndustryStandard/Acpi51.h
$(OUTPUT_DIR)/FdtParser.obj : $(WORKSPACE)/MdePkg/Include/Protocol/SimpleTextOut.h
$(OUTPUT_DIR)/FdtParser.obj : $(WORKSPACE)/EmbeddedPkg/Include/libfdt.h
$(OUTPUT_DIR)/FdtParser.obj : $(WORKSPACE)/MdePkg/Include/Uefi/UefiSpec.h
$(OUTPUT_DIR)/FdtParser.obj : $(WORKSPACE)/MdePkg/Include/Protocol/DevicePath.h
$(OUTPUT_DIR)/FdtParser.obj : $(WORKSPACE)/MdePkg/Include/IndustryStandard/Acpi40.h
$(OUTPUT_DIR)/FdtParser.obj : $(WORKSPACE)/ArmVirtPkg/PrePi/FdtParser.c
	"$(CC)" $(CC_FLAGS) $(CC_XIPFLAGS) -c -o /home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/AARCH64/ArmVirtPkg/PrePi/ArmVirtPrePiUniCoreRelocatable/OUTPUT/./FdtParser.obj $(INC) /home/zrz0517/study/TEE/RT-TEE/edk2/ArmVirtPkg/PrePi/FdtParser.c

$(OUTPUT_DIR)/AArch64/ArchPrePi.obj : $(MAKE_FILE)
$(OUTPUT_DIR)/AArch64/ArchPrePi.obj : $(COMMON_DEPS)
$(OUTPUT_DIR)/AArch64/ArchPrePi.obj : $(WORKSPACE)/MdePkg/Include/Library/HobLib.h
$(OUTPUT_DIR)/AArch64/ArchPrePi.obj : $(WORKSPACE)/MdePkg/Include/Library/SerialPortLib.h
$(OUTPUT_DIR)/AArch64/ArchPrePi.obj : $(WORKSPACE)/ArmPkg/Include/Chipset/AArch64Mmu.h
$(OUTPUT_DIR)/AArch64/ArchPrePi.obj : $(WORKSPACE)/MdePkg/Include/Library/MemoryAllocationLib.h
$(OUTPUT_DIR)/AArch64/ArchPrePi.obj : $(WORKSPACE)/ArmPkg/Include/Library/ArmLib.h
$(OUTPUT_DIR)/AArch64/ArchPrePi.obj : $(WORKSPACE)/MdePkg/Include/Library/IoLib.h
$(OUTPUT_DIR)/AArch64/ArchPrePi.obj : $(WORKSPACE)/ArmPkg/Include/Chipset/ArmV7Mmu.h
$(OUTPUT_DIR)/AArch64/ArchPrePi.obj : $(WORKSPACE)/MdePkg/Include/Protocol/SerialIo.h
$(OUTPUT_DIR)/AArch64/ArchPrePi.obj : $(WORKSPACE)/ArmVirtPkg/PrePi/PrePi.h
$(OUTPUT_DIR)/AArch64/ArchPrePi.obj : $(WORKSPACE)/ArmPkg/Include/Chipset/ArmV7.h
$(OUTPUT_DIR)/AArch64/ArchPrePi.obj : $(WORKSPACE)/MdePkg/Include/Library/DebugLib.h
$(OUTPUT_DIR)/AArch64/ArchPrePi.obj : $(WORKSPACE)/ArmPkg/Include/Chipset/AArch64.h
$(OUTPUT_DIR)/AArch64/ArchPrePi.obj : $(WORKSPACE)/ArmVirtPkg/PrePi/AArch64/ArchPrePi.c
	"$(CC)" $(CC_FLAGS) $(CC_XIPFLAGS) -c -o /home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/AARCH64/ArmVirtPkg/PrePi/ArmVirtPrePiUniCoreRelocatable/OUTPUT/AArch64/ArchPrePi.obj $(INC) /home/zrz0517/study/TEE/RT-TEE/edk2/ArmVirtPkg/PrePi/AArch64/ArchPrePi.c

$(OUTPUT_DIR)/AArch64/ModuleEntryPoint.obj : $(MAKE_FILE)
$(OUTPUT_DIR)/AArch64/ModuleEntryPoint.obj : $(WORKSPACE)/MdePkg/Include/Guid/WinCertificate.h
$(OUTPUT_DIR)/AArch64/ModuleEntryPoint.obj : $(WORKSPACE)/MdePkg/Include/Ppi/CpuIo.h
$(OUTPUT_DIR)/AArch64/ModuleEntryPoint.obj : $(WORKSPACE)/MdePkg/Include/Uefi/UefiBaseType.h
$(OUTPUT_DIR)/AArch64/ModuleEntryPoint.obj : $(WORKSPACE)/ArmPkg/Include/AsmMacroIoLibV8.h
$(OUTPUT_DIR)/AArch64/ModuleEntryPoint.obj : $(WORKSPACE)/MdePkg/Include/Pi/PiMultiPhase.h
$(OUTPUT_DIR)/AArch64/ModuleEntryPoint.obj : $(WORKSPACE)/MdePkg/Include/PiPei.h
$(OUTPUT_DIR)/AArch64/ModuleEntryPoint.obj : $(WORKSPACE)/MdePkg/Include/Protocol/DebugSupport.h
$(OUTPUT_DIR)/AArch64/ModuleEntryPoint.obj : $(WORKSPACE)/MdePkg/Include/Base.h
$(OUTPUT_DIR)/AArch64/ModuleEntryPoint.obj : $(WORKSPACE)/MdePkg/Include/Uefi/UefiMultiPhase.h
$(OUTPUT_DIR)/AArch64/ModuleEntryPoint.obj : $(WORKSPACE)/MdePkg/Include/Pi/PiBootMode.h
$(OUTPUT_DIR)/AArch64/ModuleEntryPoint.obj : $(DEBUG_DIR)/AutoGen.h
$(OUTPUT_DIR)/AArch64/ModuleEntryPoint.obj : $(WORKSPACE)/MdePkg/Include/Ppi/PciCfg2.h
$(OUTPUT_DIR)/AArch64/ModuleEntryPoint.obj : $(WORKSPACE)/MdePkg/Include/Library/PcdLib.h
$(OUTPUT_DIR)/AArch64/ModuleEntryPoint.obj : $(WORKSPACE)/MdePkg/Include/Pi/PiStatusCode.h
$(OUTPUT_DIR)/AArch64/ModuleEntryPoint.obj : $(WORKSPACE)/MdePkg/Include/AArch64/ProcessorBind.h
$(OUTPUT_DIR)/AArch64/ModuleEntryPoint.obj : $(WORKSPACE)/MdePkg/Include/Library/BaseLib.h
$(OUTPUT_DIR)/AArch64/ModuleEntryPoint.obj : $(WORKSPACE)/MdePkg/Include/Pi/PiDependency.h
$(OUTPUT_DIR)/AArch64/ModuleEntryPoint.obj : $(WORKSPACE)/MdePkg/Include/Pi/PiFirmwareVolume.h
$(OUTPUT_DIR)/AArch64/ModuleEntryPoint.obj : $(WORKSPACE)/MdePkg/Include/Pi/PiPeiCis.h
$(OUTPUT_DIR)/AArch64/ModuleEntryPoint.obj : $(WORKSPACE)/MdePkg/Include/IndustryStandard/PeImage.h
$(OUTPUT_DIR)/AArch64/ModuleEntryPoint.obj : $(WORKSPACE)/MdePkg/Include/Pi/PiHob.h
$(OUTPUT_DIR)/AArch64/ModuleEntryPoint.obj : $(WORKSPACE)/MdePkg/Include/Pi/PiFirmwareFile.h
$(OUTPUT_DIR)/AArch64/ModuleEntryPoint.obj : $(WORKSPACE)/MdePkg/Include/Pi/PiS3BootScript.h
$(OUTPUT_DIR)/AArch64/ModuleEntryPoint.obj : $(WORKSPACE)/ArmVirtPkg/PrePi/AArch64/ModuleEntryPoint.S
	"$(PP)" $(PP_FLAGS) $(INC) /home/zrz0517/study/TEE/RT-TEE/edk2/ArmVirtPkg/PrePi/AArch64/ModuleEntryPoint.S > /home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/AARCH64/ArmVirtPkg/PrePi/ArmVirtPrePiUniCoreRelocatable/OUTPUT/AArch64/ModuleEntryPoint.i
	Trim --trim-long --source-code -o /home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/AARCH64/ArmVirtPkg/PrePi/ArmVirtPrePiUniCoreRelocatable/OUTPUT/AArch64/ModuleEntryPoint.iii /home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/AARCH64/ArmVirtPkg/PrePi/ArmVirtPrePiUniCoreRelocatable/OUTPUT/AArch64/ModuleEntryPoint.i
	"$(ASM)" $(ASM_FLAGS) -o /home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/AARCH64/ArmVirtPkg/PrePi/ArmVirtPrePiUniCoreRelocatable/OUTPUT/AArch64/ModuleEntryPoint.obj $(INC) /home/zrz0517/study/TEE/RT-TEE/edk2/Build/ArmVirtQemuKernel-AARCH64/DEBUG_GCC49/AARCH64/ArmVirtPkg/PrePi/ArmVirtPrePiUniCoreRelocatable/OUTPUT/AArch64/ModuleEntryPoint.iii



#
# clean all intermediate files
#
clean:
	$(RD) $(OUTPUT_DIR)
		$(RM) AutoGenTimeStamp

#
# clean all generated files
#
cleanall:
	$(RD) $(DEBUG_DIR)
	$(RD) $(OUTPUT_DIR)
	$(RM) *.pdb *.idb > NUL 2>&1
	$(RM) $(BIN_DIR)/$(MODULE_NAME).efi
	$(RM) AutoGenTimeStamp

#
# clean all dependent libraries built
#
cleanlib:
	-@test -e $(BIN_DIR)/MdePkg/Library/BasePcdLibNull/BasePcdLibNull/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BasePcdLibNull/BasePcdLibNull/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/BaseMemoryLib/BaseMemoryLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseMemoryLib/BaseMemoryLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/BaseLib/BaseLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseLib/BaseLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/BaseIoLibIntrinsic/BaseIoLibIntrinsicArmVirt/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseIoLibIntrinsic/BaseIoLibIntrinsicArmVirt/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/ArmPlatformPkg/Library/PL011UartLib/PL011UartLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPlatformPkg/Library/PL011UartLib/PL011UartLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/EmbeddedPkg/Library/FdtLib/FdtLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/EmbeddedPkg/Library/FdtLib/FdtLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/BaseDebugPrintErrorLevelLib/BaseDebugPrintErrorLevelLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseDebugPrintErrorLevelLib/BaseDebugPrintErrorLevelLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/BasePrintLib/BasePrintLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BasePrintLib/BasePrintLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/ArmVirtPkg/Library/FdtPL011SerialPortLib/EarlyFdtPL011SerialPortLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmVirtPkg/Library/FdtPL011SerialPortLib/EarlyFdtPL011SerialPortLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/BaseDebugLibSerialPort/BaseDebugLibSerialPort/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseDebugLibSerialPort/BaseDebugLibSerialPort/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/ArmPkg/Library/ArmLib/ArmBaseLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/ArmLib/ArmBaseLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/ArmPkg/Library/DebugPeCoffExtraActionLib/DebugPeCoffExtraActionLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/DebugPeCoffExtraActionLib/DebugPeCoffExtraActionLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/ArmPlatformPkg/Library/PrePiHobListPointerLib/PrePiHobListPointerLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPlatformPkg/Library/PrePiHobListPointerLib/PrePiHobListPointerLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/ArmPkg/Library/ArmGenericTimerVirtCounterLib/ArmGenericTimerVirtCounterLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/ArmGenericTimerVirtCounterLib/ArmGenericTimerVirtCounterLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/BasePerformanceLibNull/BasePerformanceLibNull/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BasePerformanceLibNull/BasePerformanceLibNull/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/BasePeCoffLib/BasePeCoffLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BasePeCoffLib/BasePeCoffLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/BaseUefiDecompressLib/BaseUefiDecompressLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseUefiDecompressLib/BaseUefiDecompressLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/ArmPkg/Library/ArmCacheMaintenanceLib/ArmCacheMaintenanceLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/ArmCacheMaintenanceLib/ArmCacheMaintenanceLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/EmbeddedPkg/Library/PrePiHobLib/PrePiHobLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/EmbeddedPkg/Library/PrePiHobLib/PrePiHobLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/EmbeddedPkg/Library/PrePiExtractGuidedSectionLib/PrePiExtractGuidedSectionLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/EmbeddedPkg/Library/PrePiExtractGuidedSectionLib/PrePiExtractGuidedSectionLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/ArmPkg/Library/ArmArchTimerLib/ArmArchTimerLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/ArmArchTimerLib/ArmArchTimerLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/EmbeddedPkg/Library/PrePiLib/PrePiLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/EmbeddedPkg/Library/PrePiLib/PrePiLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/EmbeddedPkg/Library/PrePiMemoryAllocationLib/PrePiMemoryAllocationLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/EmbeddedPkg/Library/PrePiMemoryAllocationLib/PrePiMemoryAllocationLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/ArmVirtPkg/Library/QemuVirtMemInfoLib/QemuVirtMemInfoLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmVirtPkg/Library/QemuVirtMemInfoLib/QemuVirtMemInfoLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/ArmPkg/Library/ArmMmuLib/ArmMmuBaseLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/ArmMmuLib/ArmMmuBaseLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdeModulePkg/Library/LzmaCustomDecompressLib/LzmaCustomDecompressLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdeModulePkg/Library/LzmaCustomDecompressLib/LzmaCustomDecompressLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/ArmVirtPkg/Library/PlatformPeiLib/PlatformPeiLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmVirtPkg/Library/PlatformPeiLib/PlatformPeiLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/ArmVirtPkg/Library/ArmVirtMemoryInitPeiLib/ArmVirtMemoryInitPeiLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmVirtPkg/Library/ArmVirtMemoryInitPeiLib/ArmVirtMemoryInitPeiLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/ArmPkg/Library/CompilerIntrinsicsLib/CompilerIntrinsicsLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/ArmPkg/Library/CompilerIntrinsicsLib/CompilerIntrinsicsLib/GNUmakefile cleanall
	-@test -e $(BIN_DIR)/MdePkg/Library/BaseStackCheckLib/BaseStackCheckLib/GNUmakefile && "$(MAKE)" $(MAKE_FLAGS) -f $(BIN_DIR)/MdePkg/Library/BaseStackCheckLib/BaseStackCheckLib/GNUmakefile cleanall
	@cd $(MODULE_BUILD_DIR)

