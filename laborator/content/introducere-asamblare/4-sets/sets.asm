%include "printf32.asm"

section .text
    global main
    extern printf

main:
    ;cele doua multimi se gasesc in eax si ebx
    mov eax, 139
    mov ebx, 169
    PRINTF32 `%u\n\x0`, eax ; afiseaza prima multime
    PRINTF32 `%u\n\x0`, ebx ; afiseaza cea de-a doua multime

    jmp reuniune
    PRINTF32 `%u\n\x0`, eax ; afiseaza reuniune eax si ebx

    mov ebx, 1
    jmp adaugare
    PRINTF32 `%u\n\x0`, eax ; afiseaza multime cu elementul 1 adaugat

    mov ebx, 80
    jmp intersectie
    PRINTF32 `%u\n\x0`, eax ; afiseaza intersectie multimi eax si ebx

    push eax
    jmp complement
    PRINTF32 `%u\n\x0`, eax ; afiseaza complement eax

    pop eax
    mov ebx, 7
    jmp eliminare
    PRINTF32 `%u\n\x0`, eax ; afiseaza multimea eax fara elementul 7
    
    mov ebx, 9
    jmp diferenta
    PRINTF32 `%u\n\x0`, eax ; afiseaza reuniune eax si ebx

    ; TODO1: reuniunea a doua multimi
reuniune:
    or eax, ebx ; reuniune multimi din eax si ebx in eax
    ret

    ; TODO2: adaugarea unui element in multime
adaugare:
    mov ecx, ebx
    mov ebx, 2
    jmp inmultire
    jmp reuniune
    ret

inmultire:
    shl ebx, 2
    loop inmultire


    ; TODO3: intersectia a doua multimi
intersectie:
    and eax, ebx ; intersectie multimi eax si ebx in eax

    ; TODO4: complementul unei multimi
complement:
    not eax ; complement multimea eax

    ; TODO5: eliminarea unui element
eliminare:
    mov ecx, ebx
    mov ebx, 2
    jmp inmultire
    xor eax, ebx ; eliminare element ebx din eax

    ; TODO6: diferenta de multimi EAX-EBX
diferenta:
    xor eax, ebx ; diferenta multime eax din ebx

    xor eax, eax
    ret
