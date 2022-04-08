%include "../utils/printf32.asm"

section .text
extern printf
global main


main:
    push ebp
    mov ebp, esp

    mov eax, 211    ; to be broken down into powers of 2
    mov ebx, 1      ; stores the current power

power:
     shr eax, 1
     jc print

tloop:
    cmp eax, 0
     je endloop

floop:
     shl ebx, 1
     loop power
      jmp end
     
print:
      PRINTF32 `%d\n\x0`, ebx
     jmp tloop

endloop:
      mov ecx, 0;
      jmp floop

    ; TODO - print the powers of 2 that generate number stored in EAX
end:
    leave
    ret
