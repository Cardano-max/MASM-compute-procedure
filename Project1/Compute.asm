
.code
compute proc
; Decoy mode of operation
mov ax, [bp+6]   ; get first operand
add ax, [bp+8]   ; add second operand
mov [bp+10], al ; store result at offset
; Encryption mode
mov al, [bp+6]   ; get first operand
xor al, [bp+8]   ; exclusive-or with second operand
mov [bp+10], al ; store result at offset
; Decryption mode
mov al, [bp+6]   ; get first operand
not al          ; invert all bits
add al, 1       ; add 1
and al, [bp+8]   ; and with second operand
mov [bp+10], al ; store result at offset
; Key generation mode (optional)
mov al, [bp+6]   ; get first operand
add al, [bp+8]   ; add second operand
mov [bp+10], al ; store result at offset
compute endp
end