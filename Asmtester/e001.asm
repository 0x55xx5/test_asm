; exercise.
; Chapter 1 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
STR1 DW 'AB'
STR2 DB 16 DUP(?)
CNT EQU $ - STR1

.code
main proc
    MOV CX, CNT
    MOV AX, STR1
    invoke ExitProcess,0
main endp
end main