OUTPUT_FORMAT("elf64-littleaarch64")
OUTPUT_ARCH(aarch64)
ENTRY(bl2_entrypoint)
MEMORY {
    RAM (rwx): ORIGIN = (((((0x10000000) + (0x00001000)) + ((0x00100000) - (0x00001000))) - (0x20000)) - (0x2C000)), LENGTH = ((((0x10000000) + (0x00001000)) + ((0x00100000) - (0x00001000))) - (0x20000)) - (((((0x10000000) + (0x00001000)) + ((0x00100000) - (0x00001000))) - (0x20000)) - (0x2C000))
}
SECTIONS
{
    . = (((((0x10000000) + (0x00001000)) + ((0x00100000) - (0x00001000))) - (0x20000)) - (0x2C000));
    ASSERT(. == ALIGN(((1) << (12))),
           "BL2_BASE address is not aligned on a page boundary.")
    .text . : {
        __TEXT_START__ = .;
        *bl2_entrypoint.o(.text*)
        *(.text*)
        *(.vectors)
        . = ALIGN(((1) << (12)));
        __TEXT_END__ = .;
     } >RAM
     .ARM.extab . : {
        *(.ARM.extab* .gnu.linkonce.armextab.*)
     } >RAM
     .ARM.exidx . : {
        *(.ARM.exidx* .gnu.linkonce.armexidx.*)
     } >RAM
    .rodata . : {
        __RODATA_START__ = .;
        *(.rodata*)
        . = ALIGN(8);
        __PARSER_LIB_DESCS_START__ = .;
        KEEP(*(.img_parser_lib_descs))
        __PARSER_LIB_DESCS_END__ = .;
        . = ALIGN(((1) << (12)));
        __RODATA_END__ = .;
    } >RAM
    __RW_START__ = . ;
    .data . : {
        __DATA_START__ = .;
        *(.data*)
        __DATA_END__ = .;
    } >RAM
    stacks (NOLOAD) : {
        __STACKS_START__ = .;
        *(tzfw_normal_stacks)
        __STACKS_END__ = .;
    } >RAM
    .bss : ALIGN(16) {
        __BSS_START__ = .;
        *(SORT_BY_ALIGNMENT(.bss*))
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
    __RW_END__ = .;
    __BL2_END__ = .;
    __BSS_SIZE__ = SIZEOF(.bss);
    __COHERENT_RAM_UNALIGNED_SIZE__ =
        __COHERENT_RAM_END_UNALIGNED__ - __COHERENT_RAM_START__;
    ASSERT(. <= ((((0x10000000) + (0x00001000)) + ((0x00100000) - (0x00001000))) - (0x20000)), "BL2 image has exceeded its limit.")
}
