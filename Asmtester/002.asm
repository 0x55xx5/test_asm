; exercise.
; Chapter 1 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.code
main proc
    MOV AX, 1234H ;
    MOV CL, 4
    ROL AX, CL
    DEC AX
    MOV CX, 4
    MUL CX
    invoke ExitProcess,0
main endp
end main