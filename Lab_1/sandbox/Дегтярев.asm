format ELF executable 3
entry start

segment readable executable
start:
    mov eax, 4          ; sys_write
    mov ebx, 1          ; stdout
    mov ecx, surname
    mov edx, surname_len
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, name
    mov edx, name_len
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, patronymic
    mov edx, patronymic_len
    int 0x80

    mov eax, 1          ; sys_exit
    xor ebx, ebx
    int 0x80

segment readable writeable
surname db 'Дегтярев', 10
surname_len = $ - surname
name db 'Илья', 10
name_len = $ - name
patronymic db 'Сергеевич', 10
patronymic_len = $ - patronymic
