org 00h

start:

MOV	P2,#11000000B	 ; Isi port 2 dengan data 10110000B (angka0) ACALLTunda	; Panggil subrutinTunda
ACALL delay
MOV	P2,#11111001B   ; Isi port 2 dengan data 11110011B (angka 1) ACALLTunda	; Panggil subrutinTunda
ACALL delay
MOV	P2,#10100100B   ; Isi port 2 dengan data 10100100B (angka 2) ACALLTunda	; Panggil subrutinTunda
ACALL delay
MOV	P2,#10110000B	; Isi port 2 dengan data 10110000B (angka3) ACALLTunda	; Panggil subrutinTunda
ACALL delay
MOV	P2,#10011001B	; Isi port 2 dengan data 10011001B (angka4) ACALLTunda	; Panggil subrutinTunda
ACALL delay
MOV	P2,#10010010B	; Isi port 2 dengan data 10010010B (angka5) ACALLTunda	; Panggil subrutinTunda
ACALL delay
MOV	P2,#10000010B	; Isi port 2 dengan data 10000010B (angka 6) ACALLTunda	; Panggil subrutinTunda
ACALL delay
MOV	P2,#11111000B	; Isi port 2 dengan data 11111000B (angka7) ACALLTunda	; Panggil subrutintunda
ACALL delay
MOV	P2,#10000000B	; Isi port 2 dengan data 10000000B (angka8) ACALLTunda	; Panggil subrutinTunda
ACALL delay
MOV	P2,#10010000B	; Isi port 2 dengan data 10010000B (angka9) ACALLTunda	; Panggil subrutinTunda
ACALL delay

sjmp start

delay: mov r7,#00h
ulang2: mov r6,#00h
ulang1: mov r5,#00h
ulang: inc r5
cjne r5,#40h,ulang
inc r6
cjne r6,#40h,ulang1
inc r7
cjne r7,#40h,ulang2
ret
end