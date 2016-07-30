global long_mode_start

section .text
bits 64
long_mode_start:
    ; call the rust main:
    extern rust_main
    call rust_main

.os_returned:
    ; rust_main returned, so print "OS returned!"
    ;mov rax, 0x4f724f204f534f4f
    ;mov [0xb8000], rax
    ;mov rax, 0x4f724f754f744f65
    ;mov [0xb8008], rax
    ;mov rax, 0x4f224f644f654f6e
    ;mov [0xb8010], rax
    mov rax, 0x4f6e4f6e4f654f70
    mov [0xb8000], rax
    mov rax, 0x4f614f204f734f69
    mov [0xb8008], rax
    mov rax, 0x4f614f204f644f6e
    mov [0xb8010], rax
    mov rax, 0x4f204f6f4f734f6c
    mov [0xb8018], rax
    mov rax, 0x4f6b4f634f694f64
    mov [0xb8020], rax
    mov rax, 0x4f6e4f614f204f65
    mov [0xb8028], rax
    mov rax, 0x4f614f624f204f64
    mov [0xb8030], rax
    mov rax, 0x00004f734f6c4f6c
    mov [0xb8038], rax
    hlt

