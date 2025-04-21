OUTPUT_FORMAT("elf64-littleaarch64")
OUTPUT_ARCH(aarch64)
ENTRY(bl1_entrypoint)
MEMORY {
    ROM (rx): ORIGIN = (0x00000000), LENGTH = ((0x00000000) + (0x00020000)) - (0x00000000)
    RAM (rwx): ORIGIN = ((((0x10000000) + (0x00001000)) + ((0x00100000) - (0x00001000))) - (0x12000)), LENGTH = (((0x10000000) + (0x00001000)) + ((0x00100000) - (0x00001000))) - ((((0x10000000) + (0x00001000)) + ((0x00100000) - (0x00001000))) - (0x12000))
}
SECTIONS
{
    . = (0x00000000);
    ASSERT(. == ALIGN(((1) << (12))),
           "BL1_RO_BASE address is not aligned on a page boundary.")
    .text . : {
        __TEXT_START__ = .;
        *bl1_entrypoint.o(.text*)
        *(.text*)
        *(.vectors)
        . = ALIGN(((1) << (12)));
        __TEXT_END__ = .;
     } >ROM
     .ARM.extab . : {
        *(.ARM.extab* .gnu.linkonce.armextab.*)
     } >ROM
     .ARM.exidx . : {
        *(.ARM.exidx* .gnu.linkonce.armexidx.*)
     } >ROM
    .rodata . : {
        __RODATA_START__ = .;
        *(.rodata*)
        . = ALIGN(8);
        __PARSER_LIB_DESCS_START__ = .;
        KEEP(*(.img_parser_lib_descs))
        __PARSER_LIB_DESCS_END__ = .;
        . = ALIGN(8);
        __CPU_OPS_START__ = .;
        KEEP(*(cpu_ops))
        __CPU_OPS_END__ = .;
        __RODATA_END__ = .;
    } >ROM
    ASSERT(__CPU_OPS_END__ > __CPU_OPS_START__,
           "cpu_ops not defined for this platform.")
    . = ((((0x10000000) + (0x00001000)) + ((0x00100000) - (0x00001000))) - (0x12000));
    ASSERT(((((0x10000000) + (0x00001000)) + ((0x00100000) - (0x00001000))) - (0x12000)) == ALIGN(((1) << (12))),
           "BL1_RW_BASE address is not aligned on a page boundary.")
    .data . : ALIGN(16) {
        __DATA_RAM_START__ = .;
        *(.data*)
        __DATA_RAM_END__ = .;
    } >RAM AT>ROM
    stacks . (NOLOAD) : {
        __STACKS_START__ = .;
        *(tzfw_normal_stacks)
        __STACKS_END__ = .;
    } >RAM
    .bss : ALIGN(16) {
        __BSS_START__ = .;
        *(.bss*)
        *(COMMON)
        __BSS_END__ = .;
    } >RAM
    xlat_table (NOLOAD) : {
        *(xlat_table)
    } >RAM
    coherent_ram (NOLOAD) : ALIGN(((1) << (12))) {
        __COHERENT_RAM_START__ = .;
        *(tzfw_coherent_mem)
        __COHERENT_RAM_END_UNALIGNED__ = .;
        . = ALIGN(((1) << (12)));
        __COHERENT_RAM_END__ = .;
    } >RAM
    __BL1_RAM_START__ = ADDR(.data);
    __BL1_RAM_END__ = .;
    __DATA_ROM_START__ = LOADADDR(.data);
    __DATA_SIZE__ = SIZEOF(.data);
    __BL1_ROM_END__ = __DATA_ROM_START__ + __DATA_SIZE__;
    ASSERT(__BL1_ROM_END__ <= ((0x00000000) + (0x00020000)),
           "BL1's ROM content has exceeded its limit.")
    __BSS_SIZE__ = SIZEOF(.bss);
    __COHERENT_RAM_UNALIGNED_SIZE__ =
        __COHERENT_RAM_END_UNALIGNED__ - __COHERENT_RAM_START__;
    ASSERT(. <= (((0x10000000) + (0x00001000)) + ((0x00100000) - (0x00001000))), "BL1's RW section has exceeded its limit.")
}
