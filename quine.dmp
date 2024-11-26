# >>>>>>>>>>>>>>>>>>>>> ELF FILE HEADER <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                        # All numbers (except in names) are in base sixteen (hexadecimal)
                        # 00 <- number of bytes listed so far
7F 45 4C 46             # 04 e_ident[EI_MAG]: ELF magic number
02                      # 05 e_ident[EI_CLASS]: 1: 32-bit, 2: 64-bit
   01                   # 06 e_ident[EI_DATA]: 1: little-endian, 2: big-endian
      01                # 07 e_ident[EI_VERSION]: ELF header version; must be 1
         00             # 08 e_ident[EI_OSABI]: Target OS ABI; should be 0

00                      # 09 e_ident[EI_ABIVERSION]: ABI version; 0 is ok for Linux
   00 00 00             # 0C e_ident[EI_PAD]: unused, should be 0
00 00 00 00             # 10

02 00                   # 12 e_type: object file type; 2: executable
      3E 00             # 14 e_machine: instruction set architecture; 3: x86, 3E: amd64
01 00 00 00             # 18 e_version: ELF identification version; must be 1

78 00 40 00 00 00 00 00 # 20 e_entry: memory address of entry point (where process starts)
40 00 00 00 00 00 00 00 # 28 e_phoff: file offset where program headers begin (34: 32-bit, 40: 64)
00 00 00 00 00 00 00 00 # 30 e_shoff: file offset where section headers begin
00 00 00 00             # 34 e_flags: 0 for x86

40 00                   # 36 e_ehsize: size of this header (34: 32-bit, 40: 64-bit)
      38 00             # 38 e_phentsize: size of each program header (20: 32-bit, 38: 64-bit)
01 00                   # 3A e_phnum: #program headers
      40 00             # 3C e_shentsize: size of each section header (28: 32-bit, 40: 64-bit)
00 00                   # 3E e_shnum: #section headers
      00 00             # 40 e_shstrndx: index of section header containing section names

# >>>>>>>>>>>>>>>>>>>>> ELF PROGRAM HEADER <<<<<<<<<<<<<<<<<<<<<<<<
01 00 00 00             # 44 p_type: segment type; 1: loadable
07 00 00 00             # 48 p_flags: segment-dependent flags (1: X, 2: W, 4: R)

00 00 00 00 00 00 00 00 # 50 p_offset: file offset where segment begins
00 00 40 00 00 00 00 00 # 58 p_vaddr: virtual address of segment in memory (x86: 08048000; amd64: 00400000)
    
00 00 00 00 00 00 00 00 # 60 p_paddr: physical address of segment, unspecified by 386 supplement
A2 00 00 00 00 00 00 00 # 68 p_filesz: size in bytes of the segment in the file image ############

A2 00 C0 00 00 00 00 00 # 70 p_memsz: size in bytes of the segment in memory; p_filesz <= p_memsz
00 10 00 00 00 00 00 00 # 78 p_align: 1000 for x86

# >>>>>>>>>>>>> PROGRAM SEGMENT <<<<<<<<<<<<<

# Entry: 00400078
                             # INTENTION             INSTRUCTION         OPCODE             OFFSET          NOTE
48 c7 c0 01 00 00 00         # mov 1 -> rax          mov rax, 1           c7                  7F
48 c7 c7 01 00 00 00         # mov 1 -> rdi          mov rdi, 1           c7                  86
48 c7 c6 78 00 40 00         # mov program start -> rsi        mov rsi, buf         c7                  8D
48 c7 c2 2A 00 00 00         # mov A2 -> rdx         mov rdx, 11                              94 
0f 05                        # syscall               syscall              0F 05               96

# exit
48 c7 c0 3c 00 00 00         # mov 60 -> rax          mov rax, 60                             9D         
48 31 ff                     # zero out rdi           xor rdi, rdi                            A0
0F 05                        # syscall                syscall                                 A4

