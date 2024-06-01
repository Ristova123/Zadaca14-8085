VRTI: MVI А,11X00XXX ;бесконечна јамка
 SIM
 JNP VRTI
 END
2Ch: CALL SERVIS_55 ;брзиот праќа податок
 RET
34h: CALL SERVIS_65 ;спориот уред пријавува грешка;
 RET
SERVIS_55: MVI A,01X00XXXb
 SIM
MVI A,XXXXXX10b ; се праќа горниот бајт
 OUT 01h
OUT 02h
 NOP
 MVI A,XXXXXX01b ;се праќа долниот бајт
 OUT 01h
OUT 02h
RET
SERVIS_65: MVI A,01X00XXXb
 SIM
MVI A,XXXXXX10b ; се праќа горниот бајт
 OUT 01h
OUT 02h
 VRTI1: MVI C, 100d
DCR C
JNZ VRTI1
 MVI A,XXXXXX01b ;се праќа долниот бајт
 OUT 01h
OUT 02h
 VRTI2: MVI C, 100d
DCR C
JNZ VRTI2
RET 
