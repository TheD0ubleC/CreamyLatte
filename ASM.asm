section .data
    waterBase dq 150.0
    instantCoffeeBase dq 8.0
    condensedMilkBase dq 7.0
    fullCreamEvaporatedMilkBase dq 100.0
    freshMilkBase dq 85.0

    totalVolume dq 500.0
    ratio dq 0.0
    resultCN db "配方 for %lf ml 厚拿铁:", 0
    resultEN db "Recipe for %lf ml Creamy Latte:", 0
    resultJP db "%lf mlのクリーミーラテのレシピ:", 0
    resultKR db "%lf ml 크리미 라떼 레시피:", 0
    resultDefault db "Recipe for %lf ml Creamy Latte:", 0

section .bss

section .text
    global _start

_start:
    ; Calculate ratio
    fld qword [totalVolume]
    fdiv qword [350.0]
    fstp qword [ratio]

    ; Select language
    mov rdi, resultEN  ; Default to English
    ; You can add a language selection mechanism here
    ; For example, based on a value in a register or memory location
    ; mov rdi, resultCN  ; Uncomment to use Chinese
    ; mov rdi, resultJP  ; Uncomment to use Japanese
    ; mov rdi, resultKR  ; Uncomment to use Korean

    ; Output the result string
    ; Using 'printf' from libc
    mov rdi, rdi
    mov rax, 1      ; Syscall number for 'write'
    mov rdi, 1      ; File descriptor 1 (stdout)
    lea rsi, [rdi]
    mov rdx, 48     ; Length of the result string
    syscall

    ; Exit
    mov rax, 60     ; Syscall number for 'exit'
    xor rdi, rdi    ; Exit status 0
    syscall
